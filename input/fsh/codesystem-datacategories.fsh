CodeSystem: NlGfDataCategoriesCS
Id: nl-gf-data-categories-cs
Title: "NL GF Data Categories CodeSystem"
Description: "Local code system for data categories in NL Generic Functions."
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-data-categories-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^property[+].code = #fhir-resourcetype
* ^property[=].uri = "http://minvws.github.io/generiekefuncties-docs/CodeSystemProperty/fhir-resourcetype"
* ^property[=].description = "Primary FHIR resource type mapped to this data category."
* ^property[=].type = #code
* ^property[+].code = #fhir-resourcetype-params
* ^property[=].uri = "http://minvws.github.io/generiekefuncties-docs/CodeSystemProperty/fhir-resourcetype-params"
* ^property[=].description = "Primary FHIR resource type mapped to this data category, scoped to one or more parameters."
* ^property[=].type = #code
* #AdvanceDirectives "Advance Directives"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wilsverklaring"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Advance Directives"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Consent?category=http://terminology.hl7.org/CodeSystem/consentcategorycodes|acd
* #Alert "Alert"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Alert"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Alert"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Flag
* #AllergyIntolerance "Allergy Intolerance"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Allergie Intolerantie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Allergy Intolerance"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #AllergyIntolerance
* #CareServiceEntities "Care Service Entities"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Entiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Entities"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Organization
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #OrganizationAffiliation
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Location
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #HealthcareService
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Endpoint
* #Condition "Condition"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aandoeningen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Condition"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Condition
* #Consent "Consent"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Toestemming"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Consent"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Consent
* #Definitional "Definitional"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Definities"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Definitional"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #PlanDefinition
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #ActivityDefinition
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Questionnaire
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #CodeSystem
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #ValueSet
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #ConceptMap
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #StructureDefinition
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #StructureMap
* #Devices "Devices"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Devices"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Device
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #DeviceUseStatement
* #DiagnosticReport "Diagnostic Report"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diagnostisch verslag"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Diagnostic Report"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #DiagnosticReport
* #Encounter "Encounter"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Contactmoment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Encounter"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Encounter
* #Episodes "Episodes"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgtrajecten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Episodes"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #EpisodeOfCare
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #CarePlan
* #Genomics "Genomics"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Genomica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Genomics"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #MolecularSequence
* #Images "Images"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beelden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Images"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #ImagingStudy
* #MedicationRequest "Medication Request"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medicatie voorschrift"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medication Request"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #MedicationRequest
* #MedicationUse "Medication Use"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medicatiegebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medication Use"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #MedicationDispense
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #MedicationAdministration
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #MedicationStatement
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Immunization
* #Nutrition "Nutrition"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Voeding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nutrition"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #NutritionOrder
* #ObservationActivity "Observation (category: Activity)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Activiteit)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Activity)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|activity
* #ObservationExam "Observation (category: Exam)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Lichamelijk onderzoek)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Exam)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|exam
* #ObservationImaging "Observation (category: Imaging)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Beeldvorming)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Imaging)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|imaging
* #ObservationLaboratory "Observation (category: Laboratory)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Laboratorium)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Laboratory)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory
* #ObservationProcedure "Observation (category: Procedure)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Procedure)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Procedure)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|procedure
* #ObservationSocialHistory "Observation (category: Social History)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Sociale anamnese)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Social History)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|social-history
* #ObservationSurvey "Observation (category: Survey)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Vragenlijst)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Survey)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|survey
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #QuestionnaireResponse
* #ObservationTherapy "Observation (category: Therapy)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Therapie)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Therapy)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|therapy
* #ObservationVitalSigns "Observation (category: Vital Signs)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Observatie (categorie: Vitale functies)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Observation (category: Vital Signs)"
  * ^property[+].code = #fhir-resourcetype-params
  * ^property[=].valueCode = #Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|vital-signs
* #Patient "Patient"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Patient"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patient"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Patient
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #RelatedPerson
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #CareTeam
* #Practitioners "Practitioners"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zorgverleners"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Practitioners"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Practitioner
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #PractitionerRole
* #Procedure "Procedure"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verrichtingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Procedure"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Procedure
* #Request "Requests, transfers and orders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verzoeken, overdrachten en opdrachten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Requests, transfers and orders"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #ServiceRequest
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Task
* #Specimen "Specimen, biological material"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Materiaal, biologisch materiaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specimen, biological material"
  * ^property[+].code = #fhir-resourcetype
  * ^property[=].valueCode = #Specimen
