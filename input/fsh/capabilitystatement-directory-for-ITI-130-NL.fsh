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
  * documentation = "ITI-130-NL; Dutch profile of the IHE ITI-130 endpoint. A Data Source publishes and maintains directory resources in the LRZa Directory on behalf of care providers that authorized it through an OrganizationAffiliation, and SHALL use mTLS. Submitted resources SHALL be validated against the applicable NL-GF profile; invalid resources SHALL be rejected with an OperationOutcome (`422 Unprocessable Entity`). Updates SHALL use optimistic locking: the Data Source SHALL send `If-Match`, and an update of a stale version is rejected with `412 Precondition Failed`. Resources MAY be submitted individually or in a `transaction` Bundle (all-or-nothing). Resources SHOULD NOT be deleted; withdrawal SHOULD be expressed through a status change. See [Care Services Feed: ITI-130-NL](csd.html#care-services-feed-iti-130-nl)."
  * resource[+]
    * insert Expectation(SHALL)
    * type = #HealthcareService
    * supportedProfile = Canonical(NlGfHealthcareService)
    * documentation = "Healthcare services offered by a care provider (`providedBy`), conforming to the NL-GF-HealthcareService profile. The Data Source SHALL be authorized by this care provider through an OrganizationAffiliation. Withdrawal of a service SHOULD be expressed by setting `active` to `false`."
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
    * documentation = "Physical locations conforming to the NL-GF-Location profile. Locations that originate from the KvK (with an `identifier` with system `http://kvk.nl`, the vestigingsnummer) are imported by the LRZa Directory; a Data Source MAY create its own Locations, e.g. a ward or room that is `partOf` another Location. Elements copied from the KvK are owned by the LRZa: the LRZa Directory SHALL refuse a create, update or delete that adds, modifies or removes an LRZa-owned element with `422 Unprocessable Entity` (issue code `business-rule`). See [LRZa-owned elements](lrza-owned-elements.html)."
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
    * documentation = "Organizations conforming to the NL-GF-Organization profile. Organizations that originate from the KvK and Dezi-register (with an `identifier` with system `http://kvk.nl` or `urn:oid:2.16.528.1.1007.3.3`) are imported by the LRZa Directory. A Data Source MAY maintain elements that are not LRZa-owned (e.g. `endpoint`) and MAY create its own Organizations as part of another Organization (`partOf`), e.g. a department. Elements copied from the KvK and Dezi-register are owned by the LRZa: the LRZa Directory SHALL refuse a create, update or delete that adds, modifies or removes an LRZa-owned element with `422 Unprocessable Entity` (issue code `business-rule`). See [LRZa-owned elements](lrza-owned-elements.html)."
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
    * documentation = "Technical endpoints conforming to the NL-GF-Endpoint profile, managed by the organization in `managingOrganization` (e.g. an IT vendor). FHIR endpoints SHALL include the FHIR version in `payloadMimeType` (e.g. `application/fhir+json; fhirversion=4.0`). The validity of an Endpoint is expressed through `status` and `period`; when an Endpoint is replaced, the periods of the old and new Endpoint SHALL NOT overlap. An Endpoint that is taken out of operation SHOULD get status `off` or be deleted. See [Endpoint lifecycle and transition](csd.html#endpoint-lifecycle-and-transition)."
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
    * documentation = "Authorizations (mandates) of a care provider (`organization`) for another party, e.g. an IT vendor (`participatingOrganization`), conforming to the NL-GF-OrganizationAffiliation profile. The LRZa Directory uses OrganizationAffiliations to authorize create and update interactions of Data Sources. The LRZa Directory SHALL only support creation and updates of OrganizationAffiliations by the care provider (e.g. via the LRZa Portal), not by the authorized party."
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
    * documentation = "A Data Source MAY submit a signed Provenance that references the stored resource version(s). When submitted, the LRZa Directory SHALL verify the signature against the relevant trust chain (e.g. an UZI/PKIo-certificate) and reject an invalid signature with an OperationOutcome. Provenance records are stored and synchronized to local replicas (ITI-90-NL/ITI-91-NL). The LRZa Directory SHALL NOT require a signature to accept a mutation."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
  * interaction[+]
    * insert Expectation(SHALL)
    * code = #transaction