ValueSet: NlGfServiceTypeVS
Id: nl-gf-service-types-vs
Title: "NL GF Service Types ValueSet"
Description: "The Service Types supported by the NL Generic Functions."
* ^status = #active
* ^experimental = true
* include codes from system http://terminology.hl7.org/CodeSystem/service-type
* include codes from system https://informatiemodel.istandaarden.nl/informatiemodel/iwlz/estafette/2.4/codelijsten/cod163

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

ValueSet: NlGfZorgcontextVS
Id: nl-gf-zorgcontext-vs
Title: "NL GF Patient Information Data Categories ValueSet"
Description: "Data categories (a.k.a. zorgcontext) that map to FHIR resource types containing patient-related clinical or personal health information."
* ^status = #active
* ^experimental = true
* NlGfDataCategoriesCS#AdvanceDirective
* NlGfDataCategoriesCS#Alert
* NlGfDataCategoriesCS#AllergyIntolerance
* NlGfDataCategoriesCS#Condition
* NlGfDataCategoriesCS#Consent
* NlGfDataCategoriesCS#Device
* NlGfDataCategoriesCS#DiagnosticReport
* NlGfDataCategoriesCS#Encounter
* NlGfDataCategoriesCS#Episode
* NlGfDataCategoriesCS#Genomics
* NlGfDataCategoriesCS#Imaging
* NlGfDataCategoriesCS#Logging
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

