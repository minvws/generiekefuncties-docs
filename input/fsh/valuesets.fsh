ValueSet: NlGfWlzZorgprofielenVS
Id: nl-gf-wlz-zorgprofielen-vs
Title: "NL GF WLZ Zorgprofielen ValueSet"
Description: "The WLZ Zorgprofielen supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from valueset http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.19--20200901000000
* include codes from system NlGfWlzZorgprofielenCS

ValueSet: NlGfOrgTypesVS
Id: nl-gf-org-types-vs
Title: "NL GF Organization Types ValueSet"
Description: "The Organization Types supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from valueset http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000
* include codes from system NlGfSBICS

ValueSet: NlGfZorgcontextVS
Id: nl-gf-zorgcontext-vs
Title: "NL GF Zorgcontext ValueSet"
Description: "The care context concepts supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system NlGfDataCategoriesCS

ValueSet: NlGfConnectionTypesVS
Id: nl-gf-connection-types-vs
Title: "NL GF Connection Types ValueSet"
Description: "Authorization and endpoint connection type codes supported by NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system NlGfAuthorizationServerCS
* include codes from system $endpoint-connection-type

ValueSet: NlGfPayloadTypeVS
Id: nl-gf-payload-type-vs
Title: "NL GF Data exchange capabilities"
Description: "The data exchange capabilities supported"
* ^status = #active
* ^experimental = true
* include codes from valueset http://hl7.org/fhir/ValueSet/endpoint-payload-type
* include codes from system NlGfDataCategoriesCS

ValueSet: NlGfAuthorizationTypeVS
Id: nl-gf-authorization-type-vs
Title: "NL GF Authorization Type ValueSet"
Description: "Authorization types supported by NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system NlGfAuthorizationTypeCS

