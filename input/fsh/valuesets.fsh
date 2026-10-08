ValueSet: NlGfServiceTypeVS
Id: nl-gf-service-types-vs
Title: "NL GF Service Types ValueSet"
Description: "The Service Types supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system http://terminology.hl7.org/CodeSystem/service-type
* include codes from system NlGfZorgvragenCS

ValueSet: NlGfOrgTypesVS
Id: nl-gf-org-types-vs
Title: "NL GF Organization Types ValueSet"
Description: "The Organization Types supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system http://terminology.hl7.org/CodeSystem/organization-type
* include codes from system NlGfSBICS

ValueSet: NlGfLocationTypeVS
Id: nl-gf-location-type-vs
Title: "NL GF Location Types ValueSet"
Description: "The Location Types supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system NlGfSBICS
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-ServiceDeliveryLocationRoleType


ValueSet: NlGfHealthcareSpecialtyVS
Id: nl-gf-healthcare-specialty-vs
Title: "NL GF HealthcareService Specialty ValueSet"
Description: "Specialty codes for HealthcareService, combining the core practice/specialty codes with the Vektis COD016-VEKT 'Zorgverlenersspecificatie (subberoepsgroep)' codes."
* ^status = #active
* ^experimental = true
* include codes from valueset http://hl7.org/fhir/ValueSet/c80-practice-codes
* include codes from system http://ei.vektis.nl/codelijsten/COD016-VEKT

ValueSet: NlGfConnectionTypesVS
Id: nl-gf-connection-types-vs
Title: "NL GF Connection Types ValueSet"
Description: "Authorization and endpoint connection type codes supported by NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system NlGfAuthorizationServerCS
* http://vzvz.nl/fhir/CodeSystem/koppeltaal-endpoint-connection-type#hti-smart-on-fhir
* include codes from valueset http://hl7.org/fhir/ValueSet/endpoint-connection-type


ValueSet: NlGfPayloadTypeVS
Id: nl-gf-payload-type-vs
Title: "NL GF Data exchange capabilities"
Description: "The data exchange capabilities supported"
* ^status = #active
* ^experimental = true
* include codes from valueset http://hl7.org/fhir/ValueSet/endpoint-payload-type
* include codes from system NlGfDataCategoriesCS


ValueSet: NlGfAffiliationTypeVS
Id: nl-gf-affiliation-type-vs
Title: "NL GF Authorization Type ValueSet"
Description: "Authorization types supported by NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system NlGfAuthorizationTypeCS
* include codes from system http://hl7.org/fhir/organization-role