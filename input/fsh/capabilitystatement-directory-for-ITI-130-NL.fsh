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
  * documentation = "ITI-130-NL; Dutch profile of the IHE ITI-130 endpoint"
  * resource[+]
    * insert Expectation(SHALL)
    * type = #HealthcareService
    * supportedProfile = Canonical(NlGfHealthcareService)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Location
    * supportedProfile[+] = Canonical(NlGfLocation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Organization
    * supportedProfile[+] = Canonical(NlGfOrganization)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(MAY)
    * type = #PractitionerRole
    * supportedProfile = Canonical(NlGfPractitionerRole)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(MAY)
    * type = #Practitioner
    * supportedProfile = Canonical(NlGfPractitioner)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Endpoint
    * supportedProfile[+] = Canonical(NlGfEndpoint)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(MAY)
    * type = #OrganizationAffiliation
    * supportedProfile[+] = Canonical(NlGfOrganizationAffiliation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Device
    * supportedProfile[+] = Canonical(NlGfDevice)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * interaction[+]
    * insert Expectation(SHALL)
    * code = #transaction