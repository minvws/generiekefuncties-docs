#!/bin/bash
# Transform a KVK Basisprofiel JSON to a FHIR Organization resource
# using the FHIR Validator CLI and a StructureMap.
#
# Usage: ./transform-kvk-to-organization.sh [input-file] [output-file]
#
# Prerequisites:
#   - Java 17+ installed
#   - download the FHIR Validator CLI from https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar and place it in ./input-cache/
#   - refer to the structuredefinitions & structuremaps in the NL-GF Implementation Guide (RESOURCES_DIR="hl7.fhir.nl.gf#some-version")....
#   - ....OR: install and run sushi (see README.md) to generate FHIR resources from the FSH definitions (RESOURCES_DIR="${PROJECT_DIR}/fsh-generated/resources")
#
# References:
#   - https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Mapping+Language
#   - https://hl7.org/fhir/R4/structuremap-operation-transform.html

PROJECT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
VALIDATOR_JAR="${PROJECT_DIR}/input-cache/validator_cli.jar"
RESOURCES_DIR="${PROJECT_DIR}/fsh-generated/resources"
# RESOURCES_DIR="hl7.fhir.nl.gf"

INPUT_DIR="${PROJECT_DIR}/test/transform/input"
OUTPUT_DIR="${PROJECT_DIR}/test/transform/output"
mkdir -p "$OUTPUT_DIR"


INPUT_FILE="${INPUT_DIR}/kvk-basisprofiel-90006623.json"
OUTPUT_FILE="${OUTPUT_DIR}/lrza-organization-90006623.json"
TRANSFORM_MAP="http://minvws.github.io/generiekefuncties-docs/StructureMap/KvkBasisprofielToOrganization"

# Transform the KVK Basisprofiel JSON to a FHIR Organization resource
echo "======Transforming KVK Basisprofiel to Organization..."
java -jar "$VALIDATOR_JAR" \
  transform "$TRANSFORM_MAP" \
  "$INPUT_FILE" \
  -output "$OUTPUT_FILE" \
  -version 4.0.1 \
  -ig "$RESOURCES_DIR" \
  -ig "nictiz.fhir.nl.r4.zib2020#0.12.0-beta.4" \
  -ig "nictiz.fhir.nl.r4.nl-core#0.12.0-beta.4"

# Validate the transformed outputs against their profiles
echo "======Validating Organization..."
java -jar "$VALIDATOR_JAR" \
  "$OUTPUT_FILE" \
  -version 4.0.1 \
  -ig "$RESOURCES_DIR" \
  -ig "nictiz.fhir.nl.r4.zib2020#0.12.0-beta.4" \
  -ig "nictiz.fhir.nl.r4.nl-core#0.12.0-beta.4"



INPUT_FILE="${INPUT_DIR}/kvk-vestigingsprofiel-990064773193.json"
OUTPUT_FILE="${OUTPUT_DIR}/lrza-location-990064773193.json"
TRANSFORM_MAP="http://minvws.github.io/generiekefuncties-docs/StructureMap/KvkVestigingsprofielToLocation"

# Transform the KVK Vestigingsprofiel JSON to a FHIR Location resource
echo "======Transforming KVK Vestigingsprofiel to Location..."
java -jar "$VALIDATOR_JAR" \
  transform "$TRANSFORM_MAP" \
  "$INPUT_FILE" \
  -output "$OUTPUT_FILE" \
  -version 4.0.1 \
  -ig "$RESOURCES_DIR" \
  -ig "nictiz.fhir.nl.r4.zib2020#0.12.0-beta.4" \
  -ig "nictiz.fhir.nl.r4.nl-core#0.12.0-beta.4"

# Validate the transformed outputs against their profiles
echo "======Validating Location..."
java -jar "$VALIDATOR_JAR" \
  "$OUTPUT_FILE" \
  -version 4.0.1 \
  -ig "$RESOURCES_DIR" \
  -ig "nictiz.fhir.nl.r4.zib2020#0.12.0-beta.4" \
  -ig "nictiz.fhir.nl.r4.nl-core#0.12.0-beta.4"
