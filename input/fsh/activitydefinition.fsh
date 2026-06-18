Instance: nl-gf-nursing-care-6VV
InstanceOf: ActivityDefinition
Usage: #definition
Title: "Nursing Care Activity Definition"
Description: "Definition of a nursing care request. To instantiate this activity, the patient's coverage and condition are required as inputs."
* url = "http://minvws.github.io/generiekefuncties-docs/ActivityDefinition/nl-gf-nursing-care-6VV"
* name = "NursingCareActivityDefinition"
* status = #active
* experimental = true
* kind = #ServiceRequest
* code = $zorgzwaartepakket#755 "6VV: Beschermd wonen met intensieve verzorging en verpleging"
* library = Canonical(nl-gf-nursing-care-6VV-input-requirements)


Instance: nl-gf-nursing-care-6VV-input-requirements
InstanceOf: Library
Usage: #definition
Title: "Nursing Care Input Requirements"
Description: "Data requirements for a nursing care request: the patient's coverage and condition are required."
* url = "http://minvws.github.io/generiekefuncties-docs/Library/nl-gf-nursing-care-6VV-input-requirements"
* name = "NursingCareInputRequirements"
* status = #active
* experimental = true
* type = http://terminology.hl7.org/CodeSystem/library-type#logic-library
* dataRequirement[+].type = #Coverage
* dataRequirement[=].mustSupport = "beneficiary"
* dataRequirement[+].type = #Condition
* dataRequirement[=].mustSupport = "subject"