#!/bin/bash
# Transform a KVK Basisprofiel JSON to a FHIR Organization resource
# using the FHIR Validator CLI and a StructureMap.
#
# Usage: ./validate.sh [input-file]
#
# Prerequisites:
#   - Java 17+ installed
#   - download the FHIR Validator CLI from https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar and place it in ./input-cache/
#   - refer to the structuredefinitions & structuremaps in the NL-GF Implementation Guide (RESOURCES_DIR="nl.generiekefuncties.csd#some-version")....
#   - ....OR: install and run sushi (see README.md) to generate FHIR resources from the FSH definitions (RESOURCES_DIR="${PROJECT_DIR}/fsh-generated/resources")
#
# References:
#   - https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Mapping+Language
#   - https://hl7.org/fhir/R4/structuremap-operation-transform.html

PROJECT_DIR="$(cd "$(dirname "$0")/../.." && pwd)"
VALIDATOR_JAR="${PROJECT_DIR}/input-cache/validator_cli.jar"
RESOURCES_DIR="${PROJECT_DIR}/fsh-generated/resources"
# RESOURCES_DIR="nl.generiekefuncties.csd"

INPUT_FILE="${RESOURCES_DIR}/Organization-e1ce0872-8a80-5fdd-8b30-a3b2203ef46b.json"

# Validate the transformed outputs against their profiles
echo "======Validating Organization..."
java -jar "$VALIDATOR_JAR" \
  "$INPUT_FILE" \
  -version 4.0.1 \
  -ig "$RESOURCES_DIR" \
  -ig "ihe.iti.mcsd#4.0.0" \
  -ig "hl7.fhir.eu.base#2.0.0"

