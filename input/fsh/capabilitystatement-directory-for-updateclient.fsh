Instance: nl-gf-directory-for-update-client
InstanceOf: CapabilityStatement
Usage: #definition
* version = "20250828"
* title = "Directory capability [ITI-91-NL] for an Update Client actor"
* status = #active
* experimental = false
* date = "2025-08-28"
* description = "ITI-91-NL; Dutch profile of the IHE ITI mCSD ITI-91 endpoint."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "ITI-91-NL; Dutch profile of the IHE ITI mCSD ITI-91 endpoint."
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Organization
    * supportedProfile[+] = Canonical(NlGfOrganization)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #history-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_since"
      * type = #date
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Location
    * supportedProfile[+] = Canonical(NlGfLocation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #history-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_since"
      * type = #date
  * resource[+]
    * insert Expectation(SHALL)
    * type = #PractitionerRole
    * supportedProfile = Canonical(NlGfPractitionerRole)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #history-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_since"
      * type = #date
  * resource[+]
    * insert Expectation(SHALL)
    * type = #HealthcareService
    * supportedProfile = Canonical(NlGfHealthcareService)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #history-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_since"
      * type = #date
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Endpoint
    * supportedProfile[+] = Canonical(NlGfEndpoint)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #history-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_since"
      * type = #date
  * resource[+]
    * insert Expectation(SHALL)
    * type = #OrganizationAffiliation
    * supportedProfile[+] = Canonical(NlGfOrganizationAffiliation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #history-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_since"
      * type = #date
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Device
    * supportedProfile[+] = Canonical(NlGfDevice)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #history-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_since"
      * type = #date