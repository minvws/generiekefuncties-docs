Instance: a1b2c3d4-e5f6-7890-abcd-ef1234567890
InstanceOf: NlGfLocalizationList
Usage: #example
Title: "Example NL Generic Functions Localization List"
Description: "Example instance of the NlGfLocalizationList profile. It expresses an Organization with identifier (URA) 22222222 having a Medicatieafspraak of a patient with a pseudonymised identifier (BSN)"
* insert AuthorAssignedIdentifier("https://cp1-test.example.org/nvi","a1b2c3d4-e5f6-7890-abcd-ef1234567890","http://fhir.nl/fhir/NamingSystem/ura", "11111111")
* status = #current
* mode = #working
* code = nl-gf-zorgcontext-cs#MEDAFSPRAAK "Medicatieafspraak"
* subject.identifier.system = "http://fhir.nl/fhir/NamingSystem/pseudo-bsn"
* subject.identifier.value = "UHN1ZWRvYnNuOiA5OTk5NDAwMw=="
* source.identifier.system = "tbd"
* source.identifier.value = "an-identifier"
* source.type = $resource-types#Device
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld