Instance: nl-gf-localization-patient-example
InstanceOf: NlGfLocalizationPatient
Usage: #example
Title: "Example NL Generic Functions Localization Patient"
Description: "Example localization Patient record for one custodian, containing the NVI patient pseudonym, the custodian-assigned patient identifier, the custodian organization and the registering OAuth client."
* identifier[nvi].system = "http://generiekefuncties.nl/nvi/identifier"
* identifier[nvi].value = "eyJldmFsdWF0ZWRfb3V0cHV0IjoiLi4uIiwiYmxpbmRfZmFjdG9yIjoiLi4uIn0"
* identifier[custodian].use = #official
* identifier[custodian].system = "https://fhir.datahouder-22222222.example/identifier/patient"
* identifier[custodian].value = "9fd244dc-6b35-4a7d-843d-ac77591cb14d"
* identifier[custodian].assigner.identifier.system = "urn:oid:2.16.528.1.1007.3.3"
* identifier[custodian].assigner.identifier.value = "22222222"
* identifier[custodian].assigner.identifier.type.coding.system = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* identifier[custodian].assigner.identifier.type.coding.code = #custodian
* managingOrganization.identifier.system = "urn:oid:2.16.528.1.1007.3.3"
* managingOrganization.identifier.value = "22222222"
* meta.source = "urn:generiekefuncties:nvi:client-id:ehr-client-org2"
