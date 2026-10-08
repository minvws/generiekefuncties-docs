Instance: nl-gf-localization-repository-patient
InstanceOf: CapabilityStatement
Usage: #definition
* version = "20261008"
* title = "Localization Service (Patient)"
* status = #active
* experimental = false
* date = "2026-10-08"
* description = """Dutch requirements for a Localization Service that registers and searches localization records as Patient resources."""
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * resource[+]
    * insert Expectation(SHALL)
    * type = #Patient
    * supportedProfile = Canonical(NlGfLocalizationPatient)
    * documentation = """A Patient resource represents one patient at one custodian. Registration and maintenance use direct Patient REST interactions; transaction Bundles SHALL NOT be used."""
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #update
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #delete
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
      * documentation = """SHALL support search using `POST [base]/Patient/_search` (`application/x-www-form-urlencoded`). Search SHALL include the NVI patient identifier and MAY combine it with managing-organization filters. SHALL support the standard chained searches `organization:identifier`, `organization.type`, `organization.endpoint.payload-type`, and `organization._has:HealthcareService:organization:service-type`; the NVI resolves managing-organization identifiers against its LRZa replica. SHALL return only matching Patient records for which the Authorization Decision is allow. Search results SHALL omit all Patient.identifier values and meta.source."""
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "identifier"
      * definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
      * type = #token
      * documentation = "The NVI patient pseudonym. SHALL support the NVI identifier system."
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "organization"
      * definition = "http://hl7.org/fhir/SearchParameter/Patient-organization"
      * type = #reference
      * documentation = """SHALL support filtering on the managing Organization using its `:identifier` modifier and chained `type`, `endpoint.payload-type`, and `_has:HealthcareService:organization:service-type` parameters. The Organization identifier is resolved against the LRZa replica."""
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "_source"
      * definition = "http://hl7.org/fhir/SearchParameter/Resource-source"
      * type = #uri
      * documentation = "Search by the registering OAuth client URI in meta.source for record maintenance."
