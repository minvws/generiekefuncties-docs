Instance: nl-gf-directory-for-ITI-130-NL
InstanceOf: CapabilityStatement
Usage: #definition
* version = "20250828"
* title = "Directory capability [ITI-130-NL] for a Data Source actor"
* status = #active
* experimental = false
* date = "2025-08-28"
* description = "ITI-130-NL; Dutch profile of the IHE ITI-130 endpoint"
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "ITI-130-NL; Dutch profile of the IHE ITI-130 endpoint."
  * resource[+]
    * insert Expectation(SHALL)
    * type = #HealthcareService
    * supportedProfile = Canonical(NlGfHealthcareService)
    * documentation = "Healthcare services offered by a care provider (`providedBy`), conforming to the NL-GF-HealthcareService profile."
    * versioning = #versioned-update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #delete
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Location
    * supportedProfile[+] = Canonical(NlGfLocation)
    * documentation = "Physical locations conforming to the NL-GF-Location profile."
    * versioning = #versioned-update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #delete
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Organization
    * supportedProfile[+] = Canonical(NlGfOrganization)
    * documentation = "Organizations conforming to the NL-GF-Organization profile."
    * versioning = #versioned-update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #delete
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Endpoint
    * supportedProfile[+] = Canonical(NlGfEndpoint)
    * documentation = "Technical endpoints conforming to the NL-GF-Endpoint profile, managed by the organization in `managingOrganization` (e.g. an IT vendor)."
    * versioning = #versioned-update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #delete
  * resource[+]
    * insert Expectation(MAY)
    * type = #OrganizationAffiliation
    * supportedProfile[+] = Canonical(NlGfOrganizationAffiliation)
    * documentation = "Authorizations (mandates) of a care provider (`organization`) for another party, e.g. an IT vendor (`participatingOrganization`), conforming to the NL-GF-OrganizationAffiliation profile."
    * versioning = #versioned-update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #delete
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Provenance
    * documentation = "A Data Source MAY submit a signed Provenance that references the stored resource version(s)."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
  * interaction[+]
    * insert Expectation(SHALL)
    * code = #transaction