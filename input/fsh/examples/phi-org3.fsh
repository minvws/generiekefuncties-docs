Instance: 96e7aa36-6d66-4a9e-bf6b-245d97d8ec1d
InstanceOf: Patient //TODO: dependency on $nl-core-Patient if dependency-bug-nictiz is fixed
Usage: #inline
Title: "Patient Jaantje Merkens"
* meta.profile = $nl-core-Patient
* identifier[0].system = "http://organization3.example.org/EHR/patients"
* identifier[=].value = "126"
* identifier[+].system = "http://fhir.nl/fhir/NamingSystem/bsn"
* identifier[=].value = "111222333"
* insert CustodianAssignedIdentifier("https://cp3-test.example.org/Patient","96e7aa36-6d66-4a9e-bf6b-245d97d8ec1d","http://fhir.nl/fhir/NamingSystem/ura", "33333333")
* name
  * given[0] = "Jaantje"
  * family = "Merkens"
* telecom[+].system = #phone
* telecom[=].value = "+31612345678"
* telecom[+].system = #email
* telecom[=].value = "j.merkens@bigtech.com"
* gender = #female
* birthDate = "1950-02-26"
* address.line = "Kerkstraat 18"
* address.postalCode = "7071 WZ"
* address.city = "Ulft"
* managingOrganization.identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* managingOrganization.identifier.value = "33333333"
* managingOrganization.identifier.assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/kvk"
* managingOrganization.identifier.assigner.identifier.value = "50000535"
* managingOrganization.type = "Organization"
* managingOrganization.display = "Organization 3"

Instance: 8732d369-7759-447b-af01-f3e0c601b452
InstanceOf: MedicationStatement
Usage: #inline
Title: "MedicationStatement for Apremilast"
* insert CustodianAssignedIdentifier("https://cp3-test.example.org/MedicationStatement","8732d369-7759-447b-af01-f3e0c601b452","http://fhir.nl/fhir/NamingSystem/ura", "33333333")
* status = #active
* medicationCodeableConcept = $atc#L04AA32 "apremilast"
* subject = Reference(Patient/96e7aa36-6d66-4a9e-bf6b-245d97d8ec1d)
* dateAsserted = "2024-10-03"
* informationSource.identifier.system = "http://fhir.nl/fhir/NamingSystem/uzi"
* informationSource.identifier.value = "03333333"
* informationSource.identifier.assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/kvk"
* informationSource.identifier.assigner.identifier.value = "50000535"
* informationSource.type = "PractitionerRole"
* dosage[0].text = "10 mg orally every 4 hours"
* dosage[0].timing.repeat.frequency = 6
* dosage[0].timing.repeat.period = 1
* dosage[0].timing.repeat.periodUnit = #d
* dosage[0].doseAndRate[0].doseQuantity.value = 10
* dosage[0].doseAndRate[0].doseQuantity.unit = "mg"



Instance: bd8f360a-7bf2-4b65-9202-f3c092525492
InstanceOf: CareTeam
Usage: #inline
Title: "CareTeam of Patient Jaantje Merkens"
* insert CustodianAssignedIdentifier("https://cp3-test.example.org/CareTeam","bd8f360a-7bf2-4b65-9202-f3c092525492","http://fhir.nl/fhir/NamingSystem/ura", "33333333")
* participant[+].period.start = "2024-08-27"
* participant[=].member = Reference(Patient/96e7aa36-6d66-4a9e-bf6b-245d97d8ec1d)
* participant[+].period.start = "2024-08-27"
* participant[=].member.identifier.system = "http://fhir.nl/fhir/NamingSystem/uzi"
* participant[=].member.identifier.value = "03333333"
* participant[=].member.identifier.assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/kvk"
* participant[=].member.identifier.assigner.identifier.value = "50000535"
* participant[=].member.type = "PractitionerRole"
* participant[+].period.start = "2024-08-27"
* participant[=].member.display = "Organization 1"
* participant[=].member.identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* participant[=].member.identifier.value = "33333333"
* participant[=].member.identifier.assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/kvk"
* participant[=].member.identifier.assigner.identifier.value = "50000535"
* participant[=].member.type = "Organization"

// Instance: phi-org3
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of personal health information in ECD of Organization 3"
// Description: "This bundle contains all personal health information for Patient Jaantje Merkens in Organization 3"
// * type = #transaction
// * insert BundleEntryPUT(urn:uuid:,Patient, 96e7aa36-6d66-4a9e-bf6b-245d97d8ec1d)
// * insert BundleEntryPUT(urn:uuid:,MedicationStatement, 8732d369-7759-447b-af01-f3e0c601b452)
// * insert BundleEntryPUT(urn:uuid:,CareTeam, bd8f360a-7bf2-4b65-9202-f3c092525492)
