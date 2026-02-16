Instance: nl-gf-localization-repository-list
InstanceOf: CapabilityStatement
Usage: #definition
* version = "20260208"
* title = "Localization Service (List)"
* status = #active
* experimental = false
* date = "2026-02-08"
* description = """Dutch profile of the CapabilityStatement for a Localization Service using the List resource."""
* kind = #requirements
* fhirVersion = #4.0.1
* format[+] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest
  * mode = #server
  * resource[+]
    * insert Expectation(SHALL)
    * type = #List
    * supportedProfile = Canonical(NlGfLocalizationList)
    * documentation = "."
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #create
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #read
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #delete
    * interaction[+]
      * insert Expectation(SHALL)
      * code = #search-type
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "patient.identifier"
      * type = #token
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "code"
      * type = #token
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "subject-identifier-oprf-key"
      * definition = "http://minvws.github.io/generiekefuncties-docs/SearchParameter/nl-gf-list-subject-identifier-oprf-key"
      * type = #token
      * documentation = "Search for List resources by the OPRF key (blind_factor) in the subject.identifier extension."
  * interaction[+]
    * insert Expectation(SHALL)
    * code = #transaction
    * documentation = "Support for Bundle transactions to create, update, or delete multiple List resources in a single request."
