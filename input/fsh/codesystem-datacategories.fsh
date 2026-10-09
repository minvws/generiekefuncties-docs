CodeSystem: NlGfDataCategoriesCS
Id: nl-gf-data-categories-cs
Title: "NL GF Data Categories CodeSystem"
Description: "Local code system for data categories in NL Generic Functions."
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #fhir-resourcetype-params
* ^property[=].description = "Primary FHIR resource type mapped to this data category, scoped to one or more parameters."
* ^property[=].type = #string
* #AdvanceDirective "Advance Directive"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wilsverklaring"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Advance Directive"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Consent?category=http://terminology.hl7.org/CodeSystem/consentcategorycodes|acd"
* #Alert "Alert"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Alert"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Alert"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Flag"
* #AllergyIntolerance "Allergy Intolerance"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Allergie Intolerantie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Allergy Intolerance"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "AllergyIntolerance"
* #CareServiceEntities "Care Service Entities"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Entiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Entities"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Organization"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "OrganizationAffiliation"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Location"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "HealthcareService"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Endpoint"
* #CareTeam "Care Team"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgteam"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Care Team"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "CareTeam"
* #Communication "Communication"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Communicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Communication"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Communication"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "CommunicationRequest"
* #Condition "Condition"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aandoeningen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Condition"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Condition"
* #Consent "Consent"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Toestemming"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Consent"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Consent"
* #Definitional "Definitional"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Definities"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Definitional"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "PlanDefinition"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "ActivityDefinition"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Questionnaire"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "CodeSystem"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "ValueSet"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "ConceptMap"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "StructureDefinition"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "StructureMap"
* #Document "Documents"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Documenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Documents"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Composition"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "DocumentReference"
* #Device "Device"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Apparaat"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Device"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Device"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "DeviceUseStatement"
* #DiagnosticReport "Diagnostic Report"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diagnostisch verslag"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Diagnostic Report"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "DiagnosticReport"
* #Encounter "Encounter"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Contactmoment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Encounter"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Encounter"
* #Episode "Episodes of care and care plans"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgtrajecten en zorgplannen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Episodes of care and care plans"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "EpisodeOfCare"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "CarePlan"
* #Genomics "Genomics"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Genomica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Genomics"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "MolecularSequence"
* #Imaging "Imaging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beelden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Imaging"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "ImagingStudy"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "ImagingSelection"
* #Logging "Logging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Logging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Logging"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "AuditEvent"
* #MedicationRequest "Medication Request"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medicatie voorschrift"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medication Request"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "MedicationRequest"
* #MedicationUse "Medication Use"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medicatiegebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medication Use"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "MedicationDispense"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "MedicationAdministration"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "MedicationStatement"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Medication"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Immunization"
* #Notification "Notification"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Notificatie gebeurtenissen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Notification events"
* #Nutrition "Nutrition"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Voeding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nutrition"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "NutritionOrder"
* #ObservationActivity "Observation"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Observation"
* #ObservationLaboratory "Observation (category: Laboratory)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Laboratorium)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Laboratory)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory"
* #ObservationVitalSigns "Observation (category: Vital Signs)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Vitale functies)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Vital Signs)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|vital-signs"
* #Patient "Patient"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Patient"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patient"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Patient"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "RelatedPerson"
* #Practitioner "Practitioner"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgverlener"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Practitioner"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Practitioner"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "PractitionerRole"
* #Procedure "Procedure"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verrichtingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Procedure"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Procedure"
* #Provenance "Provenance"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Herkomst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Provenance"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Provenance"
* #Request "Requests, transfers and orders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verzoeken, overdrachten en opdrachten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Requests, transfers and orders"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "ServiceRequest"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Task"
* #Specimen "Specimen, biological material"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Materiaal, biologisch materiaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specimen, biological material"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Specimen"
* #Subscription "Subscriptions"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Abonnementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Subscriptions"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueString = "Subscription"