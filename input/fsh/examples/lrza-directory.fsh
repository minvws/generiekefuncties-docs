// // ----------------------------------------------------------------
// // Resource of LRZa (Organization resources  imported from Chamber of Commerce database)

Instance: 8e18530e-2ce1-5dc2-b34b-7d5de91a5c07
InstanceOf: NlGfOrganization
Usage: #example
Title: "LRZa - Organization 1 - Organization"
Description: "Example: LRZa - Organization 1 - Organization"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura","11111111","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "example General Practice"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#8621 "General medical practice activities"
* telecom[0].system = #phone
* telecom[=].value = "+3131599991"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@cp1.example.org"
* telecom[=].use = #work
* address.line = "Vogelenzangweg 31"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line[=].extension[0].valueString = "Vogelenzangweg"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line[=].extension[0].valueString = "31"
* address.city = "Ulft"
* address.postalCode = "7071 PT"
* endpoint[+] = Reference(Endpoint/d6a4678b-755e-5ae3-bd36-67db6ae3d8c4) // Endpoint of this organization (Organization 1) from Data Source 1
* endpoint[+] = Reference(Endpoint/53c03a2e-53e9-4994-827c-98f6b4caf897) // Superseded Endpoint of the previous EHR system (kept, see no-deletes constraint)



Instance: ca56444f-f98c-5d9b-aad2-65a0729ac8f8
InstanceOf: NlGfOrganization
Usage: #example
Title: "LRZa - Organization 2 - Organization"
Description: "Example: LRZa - Organization 2 - Organization"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura", "22222222", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "example Hospital"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#8610 "Hospital activities"
* type[+] = $sct#22232009 "Hospital"
* telecom[0].system = #phone
* telecom[=].value = "+31301234567"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@cp2.example.org"
* telecom[=].use = #work
* address.line = "Catharinastraat 21"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Catharinastraat"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "21"
* address.city = "Doetinchem"
* address.postalCode = "7001 BZ"
* endpoint[+] = Reference(Endpoint/1034376c-cc6e-5518-b292-e6dc24a68826) // Endpoint of this organization (Organization 2) from Data Source 2
* endpoint[+] = Reference(Endpoint/30d6d76b-389f-58b8-9d40-4311a52bdf57) // Endpoint of this organization (Organization 2) from Data Source 2
* endpoint[+] = Reference(Endpoint/7f702f1f-a5c9-5fbe-90df-82b58914f8e1) // Endpoint of this organization (Organization 2) from Data Source 2


Instance: 7c98f969-6c3b-5dd3-a18e-e9cf02c8497d
InstanceOf: NlGfOrganization
Usage: #example
Title: "LRZa - Organization 3 - Organization"
Description: "Example: LRZa - Organization 3 - Organization"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura", "33333333", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "example Care Institution"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#8710 "Residential nursing care activities"
* telecom[0].system = #phone
* telecom[=].value = "+31301234567"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@organization3.nl"
* telecom[=].use = #work
* address.line = "Smidsstraat 10"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Smidsstraat"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "10"
* address.city = "Zelhem"
* address.postalCode = "7021 AC"
* endpoint[+] = Reference(Endpoint/588f74a0-16f1-5a8e-8d75-285dafe44bcf)
* endpoint[+] = Reference(Endpoint/fae7d741-08e7-5335-a0a6-8a279b64acac)

Instance: 4f95356e-77a8-56a6-9429-f32538d157f2
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - PharmaPartners"
Description: "Example: Software Vendor - PharmaPartners"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk", "51494752", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "PharmaPartners B.V."
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#6210 "Computer programming activities"
* type[+].text = "IT vendor organization"

Instance: 4484c2f2-795a-54fc-8de6-e565ff0dce30
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - Nedap"
Description: "Example: Software Vendor - Nedap"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk", "08013836", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "Nedap N.V."
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#6210 "Computer programming activities"
* type[+].text = "IT vendor organization"

Instance: 2c5ebd34-5961-51ec-a263-cb07a76079c0
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - Gerimedica"
Description: "Example: Software Vendor - Gerimedica"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk", "34270859", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "Gerimedica"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#6210 "Computer programming activities"
* type[+].text = "IT vendor organization"

Instance: fe43d49a-4748-5c42-a731-e40d614be8f9
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Authorization: Organization 1 authorizes PharmaPartners"
Description: "Example: Authorization: Organization 1 authorizes PharmaPartners"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:a7f6cdb4-c6c5-4dc4-b5a9-b0f95f682f01","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* organization = Reference(Organization/8e18530e-2ce1-5dc2-b34b-7d5de91a5c07)
* participatingOrganization = Reference(Organization/4f95356e-77a8-56a6-9429-f32538d157f2)
* code = NlGfAuthorizationTypeCS#lrza-careprovider-admin "LRZa Care Provider Administration"
//* extension[device][+].valueReference = Reference(Device/2de07561-6786-5c93-bf39-a86469423497)
//* extension[device][=].valueReference.identifier.system = "urn:ietf:rfc:3986"
//* extension[device][=].valueReference.identifier.value = "urn:uuid:3f0bb8cf-9d17-4925-9c9d-6e0f8fe7b8e1"

Instance: c5d6c9d6-7562-589e-9b34-c20a3488daa1
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Authorization: Organization 2 authorizes Nedap"
Description: "Example: Authorization: Organization 2 authorizes Nedap"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:6a41ef31-c95a-4894-a6ef-4c39d8ea3e2a","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* organization = Reference(Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
* participatingOrganization = Reference(Organization/4484c2f2-795a-54fc-8de6-e565ff0dce30)
* code = NlGfAuthorizationTypeCS#lrza-careprovider-admin "LRZa Care Provider Administration"
//* extension[device][+].valueReference = Reference(Device/a366c48c-2a15-5e59-bf3a-10f03cfdbc34)
//* extension[device][=].valueReference.identifier.system = "urn:ietf:rfc:3986"
//* extension[device][=].valueReference.identifier.value = "urn:uuid:90f95f4c-3360-4f97-8c2a-77831e9e1cc7"

Instance: 8ee51b54-bafb-562d-87d1-9429f8bbfc1b
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Authorization: Organization 3 authorizes Gerimedica"
Description: "Example: Authorization: Organization 3 authorizes Gerimedica"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:7f420cc6-8f8a-4c8f-b0d9-bc6f121d83f4","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* organization = Reference(Organization/7c98f969-6c3b-5dd3-a18e-e9cf02c8497d)
* participatingOrganization = Reference(Organization/2c5ebd34-5961-51ec-a263-cb07a76079c0)
* code = NlGfAuthorizationTypeCS#lrza-careprovider-admin "LRZa Care Provider Administration"
//* extension[device][+].valueReference = Reference(Device/34e4d0cb-eb5a-548c-a9da-4b094ccbc373)
//* extension[device][=].valueReference.identifier.system = "urn:ietf:rfc:3986"
//* extension[device][=].valueReference.identifier.value = "urn:uuid:6c627191-6c6a-4b64-b2a1-049ac8fd6b4b"


// // ----------------------------------------------------------------
// // Resource from Data Source Organization 1


Instance: d6a4678b-755e-5ae3-bd36-67db6ae3d8c4
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 1 - Endpoint"
Description: "Example: Organization 1 - Endpoint"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:59654248-477c-4694-b156-e0042f0765a6","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirective "Advance Directive"
* payloadMimeType[+] = #"application/fhir+json; fhirVersion=4.0"
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 1"
* period.start = "2024-01-15"
* managingOrganization = Reference(Organization/4f95356e-77a8-56a6-9429-f32538d157f2)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@cp1.example.org"
* contact[=].use = #work
* address = "https://cp1-test.example.org/fhirr4"

Instance: a1f3c0d2-9b47-5e18-8c6a-2d4f7e1b9a03
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 1 - Endpoint (STU3 and R4)"
Description: "Example: a single FHIR endpoint that advertises support for both FHIR STU3 (3.0) and R4 (4.0). A payload-version migration therefore does not require a separate endpoint; a Query Client selects the version it needs via the fhirVersion MIME parameter."
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:7b2d9e64-3a1c-4f08-9d52-c1a8e0f4b7d9","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirective "Advance Directive"
* payloadMimeType[+] = #"application/fhir+json; fhirVersion=3.0"
* payloadMimeType[+] = #"application/fhir+json; fhirVersion=4.0"
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 1 (STU3 + R4)"
* managingOrganization = Reference(Organization/4f95356e-77a8-56a6-9429-f32538d157f2)
* address = "https://cp1-test.example.org/fhir"


Instance: 53c03a2e-53e9-4994-827c-98f6b4caf897
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 1 - Endpoint (superseded)"
Description: "Example: superseded Endpoint of the previous EHR system of Organization 1. In line with the no-deletes constraint it remains registered: period.end marks the cutover to the replacing Endpoint and the status was set to off after the old system was decommissioned."
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:88037f33-3bc5-4e93-8735-091f0f3d1b76","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #off

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirective "Advance Directive"
* payloadMimeType[+] = #application/fhir+json
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 1 (previous EHR system)"
* period.start = "2023-01-15"
* period.end = "2024-01-14"
* managingOrganization = Reference(Organization/4f95356e-77a8-56a6-9429-f32538d157f2)
* contact[0].system = #email
* contact[=].value = "info@cp1.example.org"
* contact[=].use = #work
* address = "https://cp1-old.example.org/fhir"

Instance: 2de07561-6786-5c93-bf39-a86469423497
InstanceOf: NlGfDevice
Usage: #example
Title: "PharmaPartners Device for Organization 1"
Description: "Example: PharmaPartners Device for Organization 1"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:3f0bb8cf-9d17-4925-9c9d-6e0f8fe7b8e1","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* extension[endpoint][+].valueReference = Reference(Endpoint/d6a4678b-755e-5ae3-bd36-67db6ae3d8c4)

// // ----------------------------------------------------------------
// // Resource from Data Source Organization 2

Instance: 1034376c-cc6e-5518-b292-e6dc24a68826
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 2 - Endpoint FHIR R4"
Description: "Example: Organization 2 - Endpoint FHIR R4"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:430f7379-8ec2-4e55-b096-919995da61e2","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirective "Advance Directive"
* payloadMimeType[+] = #"application/fhir+json; fhirVersion=4.0"
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 2"
* managingOrganization = Reference(Organization/4484c2f2-795a-54fc-8de6-e565ff0dce30)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@nedap.example.org"
* contact[=].use = #work
* address = "https://cp2-test.example.org/fhirr4"

Instance: 30d6d76b-389f-58b8-9d40-4311a52bdf57
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 2 - Endpoint DICOM-WADO-RS"
Description: "Example: Organization 2 - Endpoint DICOM-WADO-RS"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:d4c1d657-67a9-471c-9732-9c042e9a6d43","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* payloadType[+].coding = nl-gf-data-categories-cs#Imaging "Imaging"
* connectionType = $endpoint-connection-type#dicom-wado-rs
* name = "DICOM-WADO-RS Endpoint"
* managingOrganization = Reference(Organization/4484c2f2-795a-54fc-8de6-e565ff0dce30)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@nedap.example.org"
* contact[=].use = #work
* address = "https://cp2-test.example.org/dicom-wado-rs"

Instance: 7f702f1f-a5c9-5fbe-90df-82b58914f8e1
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 2 - Endpoint FHIR STU3"
Description: "Example: Organization 2 - Endpoint FHIR STU3"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:2427ca0c-8a29-4a6a-aabd-50cf02f587a7","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#Request "Requests, transfers and orders"
* payloadType[+].coding = nl-gf-data-categories-cs#Procedure "Procedure"
* payloadType[+].coding = nl-gf-data-categories-cs#Patient "Patient"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationVitalSigns "Observation (category: Vital Signs)"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationLaboratory "Observation (category: Laboratory)"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationUse "Medication Use"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationRequest "Medication Request"
* payloadType[+].coding = nl-gf-data-categories-cs#Nutrition "Nutrition"
* payloadType[+].coding = nl-gf-data-categories-cs#Imaging "Imaging"
* payloadType[+].coding = nl-gf-data-categories-cs#Episode "Episodes of care and care plans"
* payloadType[+].coding = nl-gf-data-categories-cs#Encounter "Encounter"
* payloadType[+].coding = nl-gf-data-categories-cs#DiagnosticReport "Diagnostic Report"
* payloadType[+].coding = nl-gf-data-categories-cs#Condition "Condition"
* payloadType[+].coding = nl-gf-data-categories-cs#AllergyIntolerance "Allergy Intolerance"
* payloadMimeType[+] = #"application/fhir+json; fhirVersion=3.0"
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 2 (health records)"
* managingOrganization = Reference(Organization/4484c2f2-795a-54fc-8de6-e565ff0dce30)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@nedap.example.org"
* contact[=].use = #work
* address = "https://cp2-test.example.org/fhirstu3"

Instance: 01b4a250-f331-477e-8762-1ad392473c63
InstanceOf: CustodianAssignedIdentifier
Usage: #inline
Title: "CustodianAssignedIdentifier for a HealthcareService registered at CiBG (responsible for the LRZa Directory)"
* system = "urn:ietf:rfc:3986"
* value = "urn:uuid:5cb05355-474b-4d30-8b0e-a9ca574b8274"
* use = #official
* assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/kvk"
* assigner.identifier.value = "50000535"
* assigner.identifier.type = $provenance-participant-type#custodian

Instance: 11d46e82-1566-5772-8404-563aa31c3846
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Polikliniek 't Vaatje"
Description: "Example consultation healthcare service named Polikliniek 't Vaatje at Organization 2."
* identifier = 01b4a250-f331-477e-8762-1ad392473c63
// * insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:5cb05355-474b-4d30-8b0e-a9ca574b8274","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
* active = true
* name = "Polikliniek 't Vaatje"
* type = $service-type#397 "Outpatients"
* specialty[+].coding = $sct#394609007 "Surgery-general"

Instance: d5cc8cb0-9ea2-5100-bd1b-d3d60075aee2
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Neurochirurgie"
Description: "Example: Organization 2 - HealthcareService Neurochirurgie"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:c79125e5-739f-4238-959c-cd5872518c1f","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
* active = true
* name = "Neurochirurgie"
* type = $service-type#216 "Neurosurgery"
* specialty[+].coding = $sct#394610002 "Surgery-Neurosurgery"

Instance: 3b09ed4b-bd16-5562-b529-1ab18082cac8
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Orthopedie"
Description: "Example: Organization 2 - HealthcareService Orthopedie"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:9d47ca45-4166-4531-a23d-ef5fa613ece4","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
* active = true
* name = "Orthopedie"
* type = $service-type#218 "Orthopaedic Surgery"
* specialty[+].coding = $sct#394801008 "Surgery-Trauma and orthopedics"

Instance: 02b32653-f18e-5e09-bab4-f49579d4f261
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Interne Geneeskunde"
Description: "Example: Organization 2 - HealthcareService Interne Geneeskunde"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:f6a508bd-9455-4afa-aad0-baec0833602d","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
* active = true
* name = "Interne Geneeskunde"
* type = $service-type#382 "Medical Services"
* specialty[+].coding = $sct#419192003 "Internal medicine"


Instance: 984b07e8-9165-5c12-a4f3-770bde81ac07
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Geriatrie"
Description: "Example: Organization 2 - HealthcareService Geriatrie"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:120325af-083c-40ee-b16e-01230fe65655","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
* active = true
* name = "Geriatrie"
* type = $service-type#171 "Geriatric Medicine"
* specialty[+].coding = $sct#394811001 "Geriatric medicine"

Instance: 9c55a4a8-dda1-59d0-bee5-eae2ca4a917b
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Urologie"
Description: "Example: Organization 2 - HealthcareService Urologie"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:08013141-16b2-42a0-8c9a-af57cee5511b","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
* active = true
* name = "Urologie"
* type = $service-type#222 "Urology"
* specialty[+].coding = $sct#394612005 "Urology"

Instance: a366c48c-2a15-5e59-bf3a-10f03cfdbc34
InstanceOf: NlGfDevice
Usage: #example
Title: "Nedap Device for Organization 2"
Description: "Example: Nedap Device for Organization 2"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:90f95f4c-3360-4f97-8c2a-77831e9e1cc7","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* extension[endpoint][+].valueReference = Reference(Endpoint/1034376c-cc6e-5518-b292-e6dc24a68826)
* extension[endpoint][+].valueReference = Reference(Endpoint/30d6d76b-389f-58b8-9d40-4311a52bdf57)
* extension[endpoint][+].valueReference = Reference(Endpoint/7f702f1f-a5c9-5fbe-90df-82b58914f8e1)



// // ----------------------------------------------------------------
// // Resource from Data Source Organization 3

Instance: e1ce0872-8a80-5fdd-8b30-a3b2203ef46b
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization 3 - Organization Nursing department"
Description: "Nursing department at Organization 3"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:631cf10e-42d6-4165-9907-11e2333d4a85","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "Nursing department at Organization 3"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#8710 "Residential nursing care activities"
* partOf = Reference(Organization/7c98f969-6c3b-5dd3-a18e-e9cf02c8497d)

Instance: bbec4d2a-1be2-539b-817e-f85ef6e895f2
InstanceOf: NlGfLocation
Usage: #example
Title: "Organization 3 - Location Main Building"
Description: "Example: Organization 3 - Location Main Building"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:7c5e3d2a-1f9e-4b8c-9d6a-8e2f5c3b1a4d","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* name = "Main Building"
* type = $v3-RoleCode#SNF "Skilled nursing facility"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7c98f969-6c3b-5dd3-a18e-e9cf02c8497d)
* address.line = "Smidsstraat 10"
* address.city = "Zelhem"
* address.postalCode = "7021 AC"
* address.country = "NL"

Instance: f37e7fdb-21b9-54ac-bd36-70c56f2f09c7
InstanceOf: NlGfLocation
Usage: #example
Title: "Organization 3 - Location Verpleeghuis Weltevree"
Description: "Example location Verpleeghuis Weltevree managed by the nursing department of Organization 3."
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:9a2b8f1c-4e7d-42a1-b3c9-2d5e8f7a6c1b","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* name = "Verpleeghuis Weltevree"
* type = $v3-RoleCode#SNF "Skilled nursing facility"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/e1ce0872-8a80-5fdd-8b30-a3b2203ef46b)
* address.city = "Doetinchem"
* address.country = "NL"

Instance: 588f74a0-16f1-5a8e-8d75-285dafe44bcf
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 3 - Endpoint FHIR R4"
Description: "Example: Organization 3 - Endpoint FHIR R4"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:8f224548-6d50-44b6-82c5-75826ee0900f","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirective "Advance Directive"
* payloadMimeType[+] = #"application/fhir+json; fhirVersion=4.0"
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 3"
* managingOrganization = Reference(Organization/2c5ebd34-5961-51ec-a263-cb07a76079c0)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@example.org"
* contact[=].use = #work
* address = "https://cp3-test.example.org/fhirr4"

Instance: fae7d741-08e7-5335-a0a6-8a279b64acac
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 3 - Endpoint FHIR STU3"
Description: "Example: Organization 3 - Endpoint FHIR STU3"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:72a349cc-7336-4a91-873d-fc9349769e1a","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#Request "Requests, transfers and orders"
* payloadType[+].coding = nl-gf-data-categories-cs#Procedure "Procedure"
* payloadType[+].coding = nl-gf-data-categories-cs#Patient "Patient"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationVitalSigns "Observation (category: Vital Signs)"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationLaboratory "Observation (category: Laboratory)"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationUse "Medication Use"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationRequest "Medication Request"
* payloadType[+].coding = nl-gf-data-categories-cs#Nutrition "Nutrition"
* payloadType[+].coding = nl-gf-data-categories-cs#Imaging "Imaging"
* payloadType[+].coding = nl-gf-data-categories-cs#Episode "Episodes of care and care plans"
* payloadType[+].coding = nl-gf-data-categories-cs#Encounter "Encounter"
* payloadType[+].coding = nl-gf-data-categories-cs#DiagnosticReport "Diagnostic Report"
* payloadType[+].coding = nl-gf-data-categories-cs#Condition "Condition"
* payloadType[+].coding = nl-gf-data-categories-cs#AllergyIntolerance "Allergy Intolerance"
* payloadMimeType[+] = #"application/fhir+json; fhirVersion=3.0"
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 3 (health records)"
* managingOrganization = Reference(Organization/2c5ebd34-5961-51ec-a263-cb07a76079c0)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@example.org"
* contact[=].use = #work
* address = "https://cp3-test.example.org/fhirstu3"


Instance: 96ab9671-f048-55b7-9dcd-dc2596a0a3e9
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 3 - HealthcareService Geriatrie"
Description: "Example: Organization 3 - HealthcareService Geriatrie"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:4fcf98c7-b198-4d61-8b3e-5ea39e33c405","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/7c98f969-6c3b-5dd3-a18e-e9cf02c8497d)
* active = true
* name = "Geriatrie"
* type[+] = $service-type#171 "Geriatric Medicine"
* specialty[+].coding = $sct#394811001 "Geriatric medicine"


Instance: 4cec3d3b-5676-52aa-8c99-f4c7aecebc12
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 3 - HealthcareService Verpleging"
Description: "Example: Organization 3 - HealthcareService Verpleging"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:b48826dc-2d58-479a-bfd3-80b7a9d69757","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/e1ce0872-8a80-5fdd-8b30-a3b2203ef46b)
* name = "Verpleging"
* location[+] = Reference(Location/f37e7fdb-21b9-54ac-bd36-70c56f2f09c7)
* location[+] = Reference(Location/bbec4d2a-1be2-539b-817e-f85ef6e895f2)
* type[+] = $service-type#59 "Nursing"
* type[=].extension[supportedActivityDefinitions].valueCanonical = Canonical(nl-gf-nursing-care-6VV)
* type[+] = $zorgzwaartepakket#754 "5VV: Beschermd wonen met intensieve dementiezorg"
* type[+] = $zorgzwaartepakket#755 "6VV: Beschermd wonen met intensieve verzorging en verpleging"
* type[+] = $zorgzwaartepakket#756 "7VV: Beschermd wonen met zeer intensieve zorg, vanwege specifieke aandoeningen, met nadruk op begeleiding"
* type[+] = $zorgzwaartepakket#757 "8VV: Beschermd wonen met zeer intensieve zorg, vanwege specifieke aandoeningen, met de nadruk op verzorging/verpleging"

Instance: 34e4d0cb-eb5a-548c-a9da-4b094ccbc373
InstanceOf: NlGfDevice
Usage: #example
Title: "Gerimedica Device for Organization 3"
Description: "Example: Gerimedica Device for Organization 3"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:6c627191-6c6a-4b64-b2a1-049ac8fd6b4b","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* extension[endpoint][+].valueReference = Reference(Endpoint/588f74a0-16f1-5a8e-8d75-285dafe44bcf)
* extension[endpoint][+].valueReference = Reference(Endpoint/fae7d741-08e7-5335-a0a6-8a279b64acac)


// // ----------------------------------------------------------------
// // Resulting Bundle for Query Directory

// Instance: 4003c5d1-984c-5c63-88f6-d09a67199c10
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of care services in Query Directory"
// Description: "This bundle contains all care services from each Administration Directory for the Query Directory example"
// * type = #transaction
// * insert BundleEntryPUT(urn:uuid:,Organization, 8e18530e-2ce1-5dc2-b34b-7d5de91a5c07)
// * insert BundleEntryPUT(urn:uuid:,Organization, ca56444f-f98c-5d9b-aad2-65a0729ac8f8)
// * insert BundleEntryPUT(urn:uuid:,Organization, 7c98f969-6c3b-5dd3-a18e-e9cf02c8497d)
// * insert BundleEntryPUT(urn:uuid:,Organization, 4f95356e-77a8-56a6-9429-f32538d157f2)
// * insert BundleEntryPUT(urn:uuid:,Organization, 4484c2f2-795a-54fc-8de6-e565ff0dce30)
// * insert BundleEntryPUT(urn:uuid:,Organization, 2c5ebd34-5961-51ec-a263-cb07a76079c0)


// * insert BundleEntryPUT(urn:uuid:,Endpoint, d6a4678b-755e-5ae3-bd36-67db6ae3d8c4)
// * insert BundleEntryPUT(urn:uuid:,Device, 2de07561-6786-5c93-bf39-a86469423497)
// * insert BundleEntryPUT(urn:uuid:,OrganizationAffiliation, fe43d49a-4748-5c42-a731-e40d614be8f9)

// * insert BundleEntryPUT(urn:uuid:,Endpoint, 1034376c-cc6e-5518-b292-e6dc24a68826)
// * insert BundleEntryPUT(urn:uuid:,Endpoint, 30d6d76b-389f-58b8-9d40-4311a52bdf57)
// * insert BundleEntryPUT(urn:uuid:,Endpoint, 7f702f1f-a5c9-5fbe-90df-82b58914f8e1)
// * insert BundleEntryPUT(urn:uuid:,Device, a366c48c-2a15-5e59-bf3a-10f03cfdbc34)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, 11d46e82-1566-5772-8404-563aa31c3846)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, d5cc8cb0-9ea2-5100-bd1b-d3d60075aee2)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, 3b09ed4b-bd16-5562-b529-1ab18082cac8)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, 02b32653-f18e-5e09-bab4-f49579d4f261)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, 984b07e8-9165-5c12-a4f3-770bde81ac07)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, 9c55a4a8-dda1-59d0-bee5-eae2ca4a917b)
// * insert BundleEntryPUT(urn:uuid:,OrganizationAffiliation, c5d6c9d6-7562-589e-9b34-c20a3488daa1)

// * insert BundleEntryPUT(urn:uuid:,Organization, e1ce0872-8a80-5fdd-8b30-a3b2203ef46b)
// * insert BundleEntryPUT(urn:uuid:,Location, bbec4d2a-1be2-539b-817e-f85ef6e895f2)
// * insert BundleEntryPUT(urn:uuid:,Location, f37e7fdb-21b9-54ac-bd36-70c56f2f09c7)
// * insert BundleEntryPUT(urn:uuid:,Endpoint, 588f74a0-16f1-5a8e-8d75-285dafe44bcf)
// * insert BundleEntryPUT(urn:uuid:,Endpoint, fae7d741-08e7-5335-a0a6-8a279b64acac)
// * insert BundleEntryPUT(urn:uuid:,Device, 34e4d0cb-eb5a-548c-a9da-4b094ccbc373)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, 96ab9671-f048-55b7-9dcd-dc2596a0a3e9)
// * insert BundleEntryPUT(urn:uuid:,HealthcareService, 4cec3d3b-5676-52aa-8c99-f4c7aecebc12)
// * insert BundleEntryPUT(urn:uuid:,OrganizationAffiliation, 8ee51b54-bafb-562d-87d1-9429f8bbfc1b)
