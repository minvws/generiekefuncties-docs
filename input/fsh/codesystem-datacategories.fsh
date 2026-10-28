CodeSystem: NlGfDataCategoriesCS
Id: nl-gf-data-categories-cs
Title: "NL GF Data Categories CodeSystem"
Description: "Local code system for data categories in NL Generic Functions, used in `Endpoint.payloadType`."
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #path-query-param
* ^property[=].description = "Relative path, optionally with query parameters, under the base URL in Endpoint.address at which the payload of this data category is offered, e.g. a FHIR resource type scoped by search parameters. A data category can have multiple values: e.g. an Endpoint with payloadType CareServiceEntities offers Organization, OrganizationAffiliation, Location, HealthcareService and Endpoint. Without a value, the payload is offered at Endpoint.address itself."
* ^property[=].type = #string
* #AdvanceDirective "Advance Directive"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wilsverklaring"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Advance Directive"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Consent?category=http://terminology.hl7.org/CodeSystem/consentcategorycodes|acd"
* #Alert "Alert"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Alert"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Alert"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Flag"
* #AllergyIntolerance "Allergy Intolerance"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Allergie Intolerantie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Allergy Intolerance"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "AllergyIntolerance"
* #CareServiceEntities "Care Service Entities"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Entiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Entities"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Organization"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "OrganizationAffiliation"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Location"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "HealthcareService"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Endpoint"
* #CareTeam "Care Team"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgteam"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Care Team"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "CareTeam"
* #Communication "Communication"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Communicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Communication"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Communication"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "CommunicationRequest"
* #Condition "Condition"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aandoeningen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Condition"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Condition"
* #Consent "Consent"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Toestemming"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Consent"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Consent"
* #Definitional "Definitional"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Definities"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Definitional"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "PlanDefinition"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "ActivityDefinition"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Questionnaire"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "CodeSystem"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "ValueSet"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "ConceptMap"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "StructureDefinition"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "StructureMap"
* #Document "Documents"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Documenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Documents"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Composition"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "DocumentReference"
* #Device "Device"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Apparaat"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Device"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Device"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "DeviceUseStatement"
* #DiagnosticReport "Diagnostic Report"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diagnostisch verslag"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Diagnostic Report"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "DiagnosticReport"
* #Encounter "Encounter"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Contactmoment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Encounter"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Encounter"
* #Episode "Episodes of care and care plans"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgtrajecten en zorgplannen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Episodes of care and care plans"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "EpisodeOfCare"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "CarePlan"
* #Genomics "Genomics"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Genomica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Genomics"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "MolecularSequence"
* #Imaging "Imaging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beelden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Imaging"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "ImagingStudy"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "ImagingSelection"
* #Logging "Logging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Logging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Logging"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "AuditEvent"
* #MedicationRequest "Medication Request"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medicatie voorschrift"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medication Request"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "MedicationRequest"
* #MedicationUse "Medication Use"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medicatiegebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medication Use"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "MedicationDispense"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "MedicationAdministration"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "MedicationStatement"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Medication"
  * ^property[+].code = #path-query-param
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
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "NutritionOrder"
* #ObservationActivity "Observation"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Observation"
* #ObservationLaboratory "Observation (category: Laboratory)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Laboratorium)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Laboratory)"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory"
* #ObservationVitalSigns "Observation (category: Vital Signs)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Vitale functies)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Vital Signs)"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|vital-signs"
* #Patient "Patient"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Patient"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patient"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Patient"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "RelatedPerson"
* #Practitioner "Practitioner"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgverlener"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Practitioner"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Practitioner"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "PractitionerRole"
* #Procedure "Procedure"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verrichtingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Procedure"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Procedure"
* #Provenance "Provenance"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Herkomst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Provenance"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Provenance"
* #Request "Requests, transfers and orders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verzoeken, overdrachten en opdrachten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Requests, transfers and orders"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "ServiceRequest"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Task"
* #Specimen "Specimen, biological material"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Materiaal, biologisch materiaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specimen, biological material"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Specimen"
* #Subscription "Subscriptions"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Abonnementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Subscriptions"
  * ^property[+].code = #path-query-param
  * ^property[=].valueString = "Subscription"