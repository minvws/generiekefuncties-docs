CodeSystem: NlGfAuthorizationTypeCS
Id: nl-gf-authorization-type-cs
Title: "NL GF Authorization Type CodeSystem"
Description: "Local code system for authorization types used in NL Generic Functions for managing authorization and access control"
* ^url = "https://fhir.generiekefuncties.nl/CodeSystem/nl-gf-authorization-type-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #smart-on-fhir-scope
* ^property[=].description = "SMART on FHIR v2 scope associated with this authorization type."
* ^property[=].type = #string
* #lrza-careprovider-admin "LRZa Care Provider Administration" "Authorization to create and update manage all GF Care Service Directory entities for a care provider."
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueString = "system/Organization.crus"
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueString = "system/Location.crus"
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueString = "system/HealthcareService.crus"
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueString = "system/Endpoint.crus"
* #lrza-endpoint-admin "LRZa Care Provider Endpoint Administration" "Authorization to manage references to (owned) Endpoint at care provider entities."
  * ^property[+].code = #smart-on-fhir-scope
  * ^property[=].valueString = "system/Endpoint.crus"
* #URA-signed-mandate "URA-signed mandate" "Mandates of a care provider, signed with the key of its UZI server certificate (identified by its URA). As OrganizationAffiliation.code: the participating organization is the trusted service provider that issues these mandates on behalf of the organization, through the referenced Endpoint. As Endpoint.payloadType: the Endpoint issues these mandates. The mandates are SD-JWT VCs with vct https://fhir.generiekefuncties.nl/vct/URA-signed-mandate.json."
