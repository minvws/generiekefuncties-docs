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
    * versioning = #versioned-update
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
    * versioning = #versioned-update
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
    * versioning = #versioned-update
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
    * versioning = #versioned-update
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
    * versioning = #versioned-update
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
    * versioning = #versioned-update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Provenance
    * documentation = "Digitally signing mutations with a FHIR Provenance resource is OPTIONAL. The LRZa Directory SHALL NOT require a signature to accept a mutation. A Data Source MAY submit a signed Provenance that references the stored resource version(s); when present, the LRZa Directory SHALL verify the signature against the relevant trust chain (e.g. an UZI/PKIo-certificate) and reject an invalid signature with an OperationOutcome. Provenance records are stored and synchronized to local replicas (ITI-90-NL/ITI-91-NL). As a growth path, mandatory signing may be introduced later."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
  * interaction[+]
    * insert Expectation(SHALL)
    * code = #transaction