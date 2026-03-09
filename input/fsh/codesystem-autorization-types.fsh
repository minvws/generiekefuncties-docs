CodeSystem: NlGfAuthorizationTypeCS
Id: nl-gf-authorization-type-cs
Title: "NL GF Authorization Type CodeSystem"
Description: "Local code system for authorization types used in NL Generic Functions for managing authorization and access control"
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-authorization-type-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #smart-on-fhir-scope
* ^property[=].uri = "http://minvws.github.io/generiekefuncties-docs/CodeSystemProperty/smart-on-fhir-scope"
* ^property[=].description = "SMART on FHIR v2 scope associated with this authorization type."
* ^property[=].type = #code
* #lrza-careprovider-admin "LRZa Care Provider Administration" "Authorization to create and update manage all GF Addressing entities for a care provider."
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueCode = #system/Organization.crus
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueCode = #system/Location.crus
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueCode = #system/HealthcareService.crus
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueCode = #system/Endpoint.crus
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueCode = #system/Device.crus
* #lrza-endpoint-admin "LRZa Care Provider Endpoint Administration" "Authorization to manage references to (owned) Endpoint at care provider entities."
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueCode = #system/Endpoint.crus
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueCode = #system/Device.crus
