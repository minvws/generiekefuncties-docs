Instance: nl-gf-directory-for-query-client
InstanceOf: CapabilityStatement
Usage: #definition
* version = "20250828"
* title = "Directory capability [ITI-90-NL] for a Query Client actor"
* status = #active
* experimental = false
* date = "2025-08-28"
* description = "ITI-90-NL; Dutch profile of the IHE ITI mCSD ITI-90 endpoint. Note that this CapabilityStatement excludes all search parameters. This search interaction SHOULD only be used to retrieve the latest state of all resources of a specific type."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "ITI-90-NL; Dutch profile of the IHE ITI mCSD ITI-90 endpoint. Note that this CapabilityStatement excludes all search parameters. This search interaction SHOULD only be used to retrieve the latest state of all resources of a specific type."
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Organization
    * supportedProfile[+] = Canonical(NlGfOrganization)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Location
    * supportedProfile[+] = Canonical(NlGfLocation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
  * resource[+]
    * insert Expectation(SHALL)
    * type = #PractitionerRole
    * supportedProfile = Canonical(NlGfPractitionerRole)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
  * resource[+]
    * insert Expectation(SHALL)
    * type = #HealthcareService
    * supportedProfile = Canonical(NlGfHealthcareService)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Endpoint
    * supportedProfile[+] = Canonical(NlGfEndpoint)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
  * resource[+]
    * insert Expectation(SHALL)
    * type = #OrganizationAffiliation
    * supportedProfile[+] = Canonical(NlGfOrganizationAffiliation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Device
    * supportedProfile[+] = Canonical(NlGfDevice)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type