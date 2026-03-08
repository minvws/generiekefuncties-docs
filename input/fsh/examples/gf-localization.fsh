Instance: a1b2c3d4-e5f6-7890-abcd-ef1234567890
InstanceOf: NlGfLocalizationList
Usage: #example
Title: "Example NL Generic Functions Localization List"
Description: "Example instance of the NlGfLocalizationList profile. It expresses an Organization with identifier (URA) 22222222 having a Medication request of a patient with a pseudonymised identifier (BSN)"
* extension[custodian].valueReference.identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* extension[custodian].valueReference.identifier.value = "22222222"
* status = #current
* mode = #working
* code = nl-gf-data-categories-cs#MedicationRequest "Medicatie voorschrift"
* subject.identifier.system = "http://fhir.nl/fhir/NamingSystem/pseudo-bsn"
* subject.identifier.value = "UHN1ZWRvYnNuOiA5OTk5NDAwMw=="
* source.identifier.system = "urn:ietf:rfc:3986"
* source.identifier.value = "90f95f4c-3360-4f97-8c2a-77831e9e1cc7"
* source.type = $resource-types#Device
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld

Instance: nvi-org1
InstanceOf: Bundle
Usage: #example
Title: "Bundle of NVI Localization records of Organization 2"
Description: "This bundle contains all NVI Localization records for patients of Organization 2. In this example, there is only one record for a patient with a pseudonymised identifier (BSN)."
* type = #transaction
* insert BundleEntryPOST(List, a1b2c3d4-e5f6-7890-abcd-ef1234567890)