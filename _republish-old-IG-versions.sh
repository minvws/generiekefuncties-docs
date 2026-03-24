#!/bin/bash

# Send requests to trigger IG build for old versions at least every 90 days (or every time a new version is released).
# Last run: 2026-03-12

curl --request POST \
    --url https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger \
    --header 'content-type: application/json' \
    --data '{"ref": "refs/tags/v0.1.0","repository": {"full_name": "minvws/generiekefuncties-docs"}}'

curl --request POST \
    --url https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger \
    --header 'content-type: application/json' \
    --data '{"ref": "refs/tags/0.2.0-ballot","repository": {"full_name": "minvws/generiekefuncties-docs"}}'

# curl --request POST \
#     --url https://us-central1-fhir-org-starter-project.cloudfunctions.net/ig-commit-trigger \
#     --header 'content-type: application/json' \
#     --data '{"ref": "refs/heads/fhir-ig-setup","repository": {"full_name": "minvws/generiekefuncties-docs"}}'
