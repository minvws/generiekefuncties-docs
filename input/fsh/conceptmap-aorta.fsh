CodeSystem: AORTADataCategoriesCS
Id: aorta-data-categories-cs
Title: "AORTA Data Categories CodeSystem"
Description: "Local code system for data categories in AORTA."
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/aorta-data-categories-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #LABBEPALING "Lab Bepaling"
* #ALGBEPALING "Algemene Bepaling"
* #CONTACTMOMENT "Contactmoment"
* #CONTACTVERSLAG "Contactverslag"
* #MEDAFSPRAAK "Medicatieafspraak"
* #OVERDRACHTSCONCERN "Overdrachtsconcern"
* #ALERT "Alert"
* #ALLERGIEINTOLERANTIE "Allergie Intolerantie"
* #TOEDIENING "Toediening"
* #DOSEERSCHEMA "Doseerschema"
* #MEDGEBRUIK "Medicatiegebruik"
* #MEDOVERZICHT "Medicatieoverzicht"
* #MEDVERSTREKKING "Medicatieverstrekking"
* #TOEDIENINGSAFSPRAAK "Toedieningsafspraak"
* #VERSTREKKINGSVERZOEK "Verstrekkingsverzoek"
* #BEHAANWIJZING "Behandelaanwijzing"



Instance: AortaToNlGfDataCategories
InstanceOf: ConceptMap
Usage: #definition
* id = "aorta-to-nl-gf-datacategories"
* url = "http://minvws.github.io/generiekefuncties-docs/ConceptMap/aorta-to-nl-gf-datacategories"
* name = "AortaToNlGfDataCategories"
* title = "AORTA to NL GF Data Categories"
* description = "Concept map defining the equivalence between AORTA (Architecture for Organizing Trusted and Reliable Access) data categories and NL Generic Functions (NL-GF) data categories. This mapping enables interoperability between systems using the AORTA terminology and those conforming to the NL-GF framework for healthcare data exchange in the Netherlands."
* status = #active
* experimental = true
* sourceUri = "http://minvws.github.io/generiekefuncties-docs/ValueSet/aorta-data-categories-vs"
* targetUri = "http://minvws.github.io/generiekefuncties-docs/ValueSet/nl-gf-zorgcontext-vs"
* group[+].source = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/aorta-data-categories-cs"
* group[=].target = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-data-categories-cs"
* group[=].element[+].code = #LABBEPALING
* group[=].element[=].target[+].code = #ObservationLaboratory
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #ALGBEPALING
* group[=].element[=].target[+].code = #DiagnosticReport
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #CONTACTMOMENT
* group[=].element[=].target[+].code = #Encounter
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #CONTACTVERSLAG
* group[=].element[=].target[+].code = #Encounter
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #MEDAFSPRAAK
* group[=].element[=].target[+].code = #MedicationRequest
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #OVERDRACHTSCONCERN
* group[=].element[=].target[+].code = #Request
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #ALERT
* group[=].element[=].target[+].code = #Alert
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #ALLERGIEINTOLERANTIE
* group[=].element[=].target[+].code = #AllergyIntolerance
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #TOEDIENING
* group[=].element[=].target[+].code = #MedicationUse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #DOSEERSCHEMA
* group[=].element[=].target[+].code = #MedicationRequest
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #MEDGEBRUIK
* group[=].element[=].target[+].code = #MedicationUse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #MEDOVERZICHT
* group[=].element[=].target[+].code = #MedicationUse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #MEDVERSTREKKING
* group[=].element[=].target[+].code = #MedicationUse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #TOEDIENINGSAFSPRAAK
* group[=].element[=].target[+].code = #MedicationUse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #VERSTREKKINGSVERZOEK
* group[=].element[=].target[+].code = #MedicationUse
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[+].code = #BEHAANWIJZING
* group[=].element[=].target[+].code = #AdvanceDirective
* group[=].element[=].target[=].equivalence = #equivalent
