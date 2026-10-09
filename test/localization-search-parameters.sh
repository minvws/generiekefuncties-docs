#!/usr/bin/env bash
# Run with ./test/localization-search-parameters.sh.
# Requires Docker, curl, jq, and generated resources in fsh-generated/resources.
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
RESOURCES_DIR="${PROJECT_DIR}/fsh-generated/resources"
FHIR_IMAGE="${FHIR_IMAGE:-hapiproject/hapi:v7.4.0}"
NVI_IDENTIFIER_SYSTEM="http://generiekefuncties.nl/nvi/identifier"
NVI_IDENTIFIER_VALUE="localization-search-parameter-test"
NVI_IDENTIFIER="${NVI_IDENTIFIER_SYSTEM}|${NVI_IDENTIFIER_VALUE}"
ORGANIZATION_ID="ca56444f-f98c-5d9b-aad2-65a0729ac8f8"
ORGANIZATION_REFERENCE="Organization/${ORGANIZATION_ID}"
PATIENT_ID="localization-search-parameter-test"
IDENTIFIER_ONLY_PATIENT_ID="${PATIENT_ID}-identifier-only"
IDENTIFIER_ONLY_NVI_VALUE="${NVI_IDENTIFIER_VALUE}-identifier-only"
BASE_URL=""
CONTAINER_NAME="localization-search-parameters-$$"
TEMP_DIR="$(mktemp -d)"
FAILURES=0

cleanup() {
  docker rm --force "${CONTAINER_NAME}" >/dev/null 2>&1 || true
  rm -rf "${TEMP_DIR}"
}
trap cleanup EXIT

for command in docker curl jq; do
  if ! command -v "${command}" >/dev/null 2>&1; then
    echo "Required command not found: ${command}" >&2
    exit 2
  fi
done

require_resource() {
  if [[ ! -f "${RESOURCES_DIR}/$1" ]]; then
    echo "Missing generated IG example: ${RESOURCES_DIR}/$1" >&2
    echo "Generate the FHIR resources first (for example, with ./_genonce.sh)." >&2
    exit 2
  fi
}

wait_for_server() {
  local attempt
  for attempt in $(seq 1 120); do
    if curl --silent --show-error --fail "${BASE_URL}/metadata" >/dev/null 2>&1; then
      return 0
    fi
    sleep 2
  done
  echo "HAPI FHIR did not become ready. Container logs:" >&2
  docker logs "${CONTAINER_NAME}" >&2
  return 1
}

put_resource() {
  local resource_file="$1"
  local resource_type="$2"
  local resource_id="$3"
  local response_file="${TEMP_DIR}/response.json"
  local status

  status="$(curl --silent --show-error \
    --output "${response_file}" \
    --write-out '%{http_code}' \
    --request PUT \
    --header 'Content-Type: application/fhir+json' \
    --data-binary "@${resource_file}" \
    "${BASE_URL}/${resource_type}/${resource_id}")"

  if [[ "${status}" != 200 && "${status}" != 201 ]]; then
    echo "Failed to load ${resource_type}/${resource_id} (HTTP ${status}):" >&2
    jq -r '.text.div // .' "${response_file}" 2>/dev/null || cat "${response_file}" >&2
    exit 1
  fi
}

check_search() {
  local label="$1"
  local parameter="$2"
  local expected_count="$3"
  local patient_id="${4:-${PATIENT_ID}}"
  local nvi_identifier="${5:-${NVI_IDENTIFIER}}"
  local response_file="${TEMP_DIR}/search.json"
  local status
  local count

  status="$(curl --silent --show-error \
    --output "${response_file}" \
    --write-out '%{http_code}' \
    --request POST \
    --header 'Content-Type: application/x-www-form-urlencoded' \
    "${BASE_URL}/Patient/_search" \
    --data-urlencode "identifier=${nvi_identifier}" \
    --data-urlencode "${parameter}")"

  if [[ "${status}" != 200 ]]; then
    echo "FAIL ${label}: search returned HTTP ${status}"
    jq -r '.text.div // .' "${response_file}" 2>/dev/null || cat "${response_file}" >&2
    FAILURES=$((FAILURES + 1))
    return
  fi

  count="$(jq --arg id "${patient_id}" \
    '[.entry[]?.resource | select(.resourceType == "Patient" and .id == $id)] | length' \
    "${response_file}")"
  if [[ "${count}" == "${expected_count}" ]]; then
    echo "PASS ${label}"
  else
    echo "FAIL ${label}: expected ${expected_count} matching test patient, got ${count}"
    FAILURES=$((FAILURES + 1))
  fi
}

require_resource "Patient-nl-gf-localization-patient-example.json"
require_resource "Organization-${ORGANIZATION_ID}.json"
require_resource "Endpoint-1034376c-cc6e-5518-b292-e6dc24a68826.json"
require_resource "Endpoint-30d6d76b-389f-58b8-9d40-4311a52bdf57.json"
require_resource "Endpoint-7f702f1f-a5c9-5fbe-90df-82b58914f8e1.json"
require_resource "HealthcareService-11d46e82-1566-5772-8404-563aa31c3846.json"
require_resource "HealthcareService-d5cc8cb0-9ea2-5100-bd1b-d3d60075aee2.json"
require_resource "HealthcareService-3b09ed4b-bd16-5562-b529-1ab18082cac8.json"
require_resource "HealthcareService-02b32653-f18e-5e09-bab4-f49579d4f261.json"
require_resource "HealthcareService-984b07e8-9165-5c12-a4f3-770bde81ac07.json"
require_resource "HealthcareService-9c55a4a8-dda1-59d0-bee5-eae2ca4a917b.json"

if ! docker info >/dev/null 2>&1; then
  echo "Docker daemon is not available." >&2
  exit 2
fi

echo "Starting ${FHIR_IMAGE}..."
docker run --detach --rm \
  --name "${CONTAINER_NAME}" \
  --publish 127.0.0.1::8080 \
  "${FHIR_IMAGE}" >/dev/null

HOST_PORT="$(docker port "${CONTAINER_NAME}" 8080/tcp | sed 's/.*://')"
BASE_URL="http://127.0.0.1:${HOST_PORT}/fhir"
wait_for_server

# HAPI's chained-search tests need a resolvable reference. This test variant is
# intentionally not profile-conformant: the NVI profile prohibits that reference.
jq --arg patient_id "${PATIENT_ID}" \
  --arg identifier_value "${NVI_IDENTIFIER_VALUE}" \
  --arg organization_reference "${ORGANIZATION_REFERENCE}" \
  '.id = $patient_id
   | .identifier[0].value = $identifier_value
   | .managingOrganization.reference = $organization_reference' \
  "${RESOURCES_DIR}/Patient-nl-gf-localization-patient-example.json" \
  > "${TEMP_DIR}/patient.json"

# Keep an unmodified identifier-only managingOrganization fixture as required by
# the NL GF Data Localization Patient profile.
jq --arg patient_id "${IDENTIFIER_ONLY_PATIENT_ID}" \
  --arg identifier_value "${IDENTIFIER_ONLY_NVI_VALUE}" \
  '.id = $patient_id | .identifier[0].value = $identifier_value' \
  "${RESOURCES_DIR}/Patient-nl-gf-localization-patient-example.json" \
  > "${TEMP_DIR}/identifier-only-patient.json"

for resource_id in \
  1034376c-cc6e-5518-b292-e6dc24a68826 \
  30d6d76b-389f-58b8-9d40-4311a52bdf57 \
  7f702f1f-a5c9-5fbe-90df-82b58914f8e1; do
  put_resource "${RESOURCES_DIR}/Endpoint-${resource_id}.json" Endpoint "${resource_id}"
done

put_resource "${RESOURCES_DIR}/Organization-${ORGANIZATION_ID}.json" Organization "${ORGANIZATION_ID}"

for resource_id in \
  11d46e82-1566-5772-8404-563aa31c3846 \
  d5cc8cb0-9ea2-5100-bd1b-d3d60075aee2 \
  3b09ed4b-bd16-5562-b529-1ab18082cac8 \
  02b32653-f18e-5e09-bab4-f49579d4f261 \
  984b07e8-9165-5c12-a4f3-770bde81ac07 \
  9c55a4a8-dda1-59d0-bee5-eae2ca4a917b; do
  put_resource "${RESOURCES_DIR}/HealthcareService-${resource_id}.json" HealthcareService "${resource_id}"
done

put_resource "${TEMP_DIR}/patient.json" Patient "${PATIENT_ID}"
put_resource "${TEMP_DIR}/identifier-only-patient.json" Patient "${IDENTIFIER_ONLY_PATIENT_ID}"

echo "Testing Patient searches against the IG's Organization 2 examples:"
check_search \
  "organization:identifier" \
  "organization:identifier=urn:oid:2.16.528.1.1007.3.3|22222222" \
  1
check_search \
  "organization.identifier (requires a resolvable literal reference)" \
  "organization.identifier=urn:oid:2.16.528.1.1007.3.3|22222222" \
  1
check_search \
  "organization:identifier (profile-conformant identifier-only reference)" \
  "organization:identifier=urn:oid:2.16.528.1.1007.3.3|22222222" \
  1 \
  "${IDENTIFIER_ONLY_PATIENT_ID}" \
  "${NVI_IDENTIFIER_SYSTEM}|${IDENTIFIER_ONLY_NVI_VALUE}"
check_search \
  "organization.identifier does not match identifier-only reference" \
  "organization.identifier=urn:oid:2.16.528.1.1007.3.3|22222222" \
  0 \
  "${IDENTIFIER_ONLY_PATIENT_ID}" \
  "${NVI_IDENTIFIER_SYSTEM}|${IDENTIFIER_ONLY_NVI_VALUE}"
check_search \
  "organization.type" \
  "organization.type=https://www.cbs.nl/standaard-bedrijfsindeling|8610" \
  1
check_search \
  "organization.type excludes other organizations" \
  "organization.type=https://www.cbs.nl/standaard-bedrijfsindeling|8621" \
  0
check_search \
  "organization.endpoint:Endpoint.payload-type" \
  "organization.endpoint:Endpoint.payload-type=http://fhir.generiekefuncties.nl/csd/CodeSystem/nl-gf-data-categories-cs|MedicationRequest" \
  1
check_search \
  "organization._has:HealthcareService:organization:service-type" \
  "organization._has:HealthcareService:organization:service-type=http://fhir.generiekefuncties.nl/csd/CodeSystem/nl-gf-zorgvragen-cs|msz.neurologie-neurochirurgie" \
  1
check_search \
  "organization._has excludes unrelated healthcare services" \
  "organization._has:HealthcareService:organization:service-type=http://fhir.generiekefuncties.nl/csd/CodeSystem/nl-gf-zorgvragen-cs|msz.cardiologie" \
  0

if (( FAILURES > 0 )); then
  echo "${FAILURES} search parameter test(s) failed." >&2
  exit 1
fi

echo "All localization search parameter tests passed."
