ValueSet: NlGfServiceTypeVS
Id: nl-gf-service-types-vs
Title: "NL GF Service Types ValueSet"
Description: "The Service Types supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from valueset http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.19--20200901000000
* include codes from system http://istandaarden.nl/ibieb/codelijsten/COD163

ValueSet: NlGfOrgTypesVS
Id: nl-gf-org-types-vs
Title: "NL GF Organization Types ValueSet"
Description: "The Organization Types supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from valueset http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.4--20200901000000
* include codes from system NlGfSBICS


ValueSet: NlGfConnectionTypesVS
Id: nl-gf-connection-types-vs
Title: "NL GF Connection Types ValueSet"
Description: "Authorization and endpoint connection type codes supported by NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system NlGfAuthorizationServerCS
* http://vzvz.nl/fhir/CodeSystem/koppeltaal-endpoint-connection-type#hti-smart-on-fhir


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

ValueSet: NlGfZorgcontextVS
Id: nl-gf-zorgcontext-vs
Title: "NL GF Patient Information Data Categories ValueSet"
Description: "Data categories (a.k.a. zorgcontext) that map to FHIR resource types containing patient-related clinical or personal health information."
* ^status = #active
* ^experimental = true
* NlGfDataCategoriesCS#AdvanceDirectives
* NlGfDataCategoriesCS#Alert
* NlGfDataCategoriesCS#AllergyIntolerance
* NlGfDataCategoriesCS#Condition
* NlGfDataCategoriesCS#Consent
* NlGfDataCategoriesCS#Devices
* NlGfDataCategoriesCS#DiagnosticReport
* NlGfDataCategoriesCS#Encounter
* NlGfDataCategoriesCS#Episodes
* NlGfDataCategoriesCS#Genomics
* NlGfDataCategoriesCS#Images
* NlGfDataCategoriesCS#MedicationRequest
* NlGfDataCategoriesCS#MedicationUse
* NlGfDataCategoriesCS#Nutrition
* NlGfDataCategoriesCS#ObservationActivity
* NlGfDataCategoriesCS#ObservationExam
* NlGfDataCategoriesCS#ObservationImaging
* NlGfDataCategoriesCS#ObservationLaboratory
* NlGfDataCategoriesCS#ObservationProcedure
* NlGfDataCategoriesCS#ObservationSocialHistory
* NlGfDataCategoriesCS#ObservationSurvey
* NlGfDataCategoriesCS#ObservationTherapy
* NlGfDataCategoriesCS#ObservationVitalSigns
* NlGfDataCategoriesCS#Patient
* NlGfDataCategoriesCS#Procedure
* NlGfDataCategoriesCS#Request
* NlGfDataCategoriesCS#Specimen

ValueSet: AortaDataCategoriesVS
Id: aorta-data-categories-vs
Title: "AORTA Data Categories ValueSet"
Description: "The data categories defined in the AORTA code system."
* ^status = #active
* ^experimental = true
* include codes from system AORTADataCategoriesCS

