Instance: nl-gf-directory-for-ITI-90-NL
InstanceOf: CapabilityStatement
Usage: #definition
* version = "20250828"
* title = "Directory capability [ITI-90-NL] for Update Client actor"
* status = #active
* experimental = false
* date = "2025-08-28"
* description = "ITI-90-NL; Dutch profile of the IHE ITI mCSD ITI-90 endpoint. Note that this CapabilityStatement excludes nearly all search parameters. This search interaction SHOULD only be used to retrieve the latest state of all resources of a specific type. For the initial load the server SHALL page results: it SHALL include `Bundle.link` with relation `next` until all results are returned, enforcing a maximum page size (advertised by the server; value in the LRZa SLA)."
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * documentation = "ITI-90-NL; Dutch profile of the IHE ITI mCSD ITI-90 endpoint. Note that this CapabilityStatement excludes nearly all search parameters. This search interaction SHOULD only be used to retrieve the latest state of all resources of a specific type."
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Organization
    * supportedProfile[+] = Canonical(NlGfOrganization)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * type = #token
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Location
    * supportedProfile[+] = Canonical(NlGfLocation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * type = #token
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(SHALL)
    * type = #HealthcareService
    * supportedProfile = Canonical(NlGfHealthcareService)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * type = #token
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Endpoint
    * supportedProfile[+] = Canonical(NlGfEndpoint)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * type = #token
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(SHALL)
    * type = #OrganizationAffiliation
    * supportedProfile[+] = Canonical(NlGfOrganizationAffiliation)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * type = #token
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Device
    * supportedProfile[+] = Canonical(NlGfDevice)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * type = #token
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Provenance
    * documentation = "Provenance records are only present when a Data Source has signed its mutations (see ITI-130-NL). When present, they are synchronized to the local replica during the initial load so that replica operators, auditors or supervisors that wish to verify the origin and integrity of accepted mutations. Signing is not mandatory; as a growth path it may become mandatory."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * type = #token
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read