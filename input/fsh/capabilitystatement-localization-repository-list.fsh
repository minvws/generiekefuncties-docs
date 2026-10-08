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
      * documentation = """SHALL support search using `POST [base]/List/_search` (`application/x-www-form-urlencoded`). Searches by `subject` SHALL use POST and SHALL include a search context: one or more `code` values, optionally combined with `custodian`, `custodian-type` and/or `custodian-service-type`. The Localization Service SHALL only return localization records of custodians that match the search context and pass the consent check, and SHALL omit `subject` and the custodian pseudonym extension from search results."""
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "subject"
      * type = #reference
      * documentation = "Used with the `:identifier` modifier and the NVI identifier of the patient."
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "code"
      * type = #token
      * documentation = "Data category. Required when searching by `subject`."
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "custodian"
      * definition = Canonical(nl-gf-localization-list-custodian)
      * type = #token
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "custodian-type"
      * definition = Canonical(nl-gf-localization-list-custodian-type)
      * type = #token
    * searchParam[+]
      * insert Expectation(SHALL)
      * name = "custodian-service-type"
      * definition = Canonical(nl-gf-localization-list-custodian-service-type)
      * type = #token
  * interaction[+]
    * insert Expectation(SHALL)
    * code = #transaction
    * documentation = "Support for Bundle transactions to create, update, or delete multiple List resources in a single request."
