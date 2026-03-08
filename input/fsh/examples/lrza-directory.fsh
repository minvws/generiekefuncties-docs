// // ----------------------------------------------------------------
// // Resource of LRZa (Organization resources  imported from Chamber of Commerce database)

Instance: lrza-o1
InstanceOf: NlGfOrganization
Usage: #example
Title: "LRZa - Organization 1 - Organization"
Description: "Example: LRZa - Organization 1 - Organization"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura","11111111","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "example General Practice"
* type[+] = $organization-type#Z3 "Huisartspraktijk (zelfstandig of groepspraktijk)"
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
* endpoint[+] = Reference(Endpoint/ad1-e1) // Endpoint of this organization (Organization 1) from Data Source 1



Instance: lrza-o2
InstanceOf: NlGfOrganization
Usage: #example
Title: "LRZa - Organization 2 - Organization"
Description: "Example: LRZa - Organization 2 - Organization"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura", "22222222", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "example Hospital"
* type[+] = $organization-type#V4 "Ziekenhuis"
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
* endpoint[+] = Reference(Endpoint/ad2-e1) // Endpoint of this organization (Organization 2) from Data Source 2
* endpoint[+] = Reference(Endpoint/ad2-e2) // Endpoint of this organization (Organization 2) from Data Source 2
* endpoint[+] = Reference(Endpoint/ad2-e3) // Endpoint of this organization (Organization 2) from Data Source 2


Instance: lrza-o3
InstanceOf: NlGfOrganization
Usage: #example
Title: "LRZa - Organization 3 - Organization"
Description: "Example: LRZa - Organization 3 - Organization"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura", "33333333", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "example Care Institution"
* type[+] = $organization-type#X3 "Verplegings- of verzorgingsinstelling"
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
* endpoint[+] = Reference(Endpoint/ad3-e1)
* endpoint[+] = Reference(Endpoint/ad3-e2)

Instance: org-pharmapartners
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - PharmaPartners"
Description: "Example: Software Vendor - PharmaPartners"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk", "51494752", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "PharmaPartners B.V."
* type.text = "IT vendor organization"

Instance: org-nedap
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - Nedap"
Description: "Example: Software Vendor - Nedap"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk", "08013836", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "Nedap N.V."
* type.text = "IT vendor organization"

Instance: org-gerimedica
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - Gerimedica"
Description: "Example: Software Vendor - Gerimedica"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk", "34270859", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "Gerimedica"
* type.text = "IT vendor organization"

Instance: aff-lrza-o1-pharmapartners
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Authorization: Organization 1 authorizes PharmaPartners"
Description: "Example: Authorization: Organization 1 authorizes PharmaPartners"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","a7f6cdb4-c6c5-4dc4-b5a9-b0f95f682f01","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* organization = Reference(Organization/lrza-o1)
* participatingOrganization = Reference(Organization/org-pharmapartners)
* code = NlGfAuthorizationTypeCS#lrza-careprovider-admin "LRZa Care Provider Administration"
* extension[device][+].valueReference = Reference(Device/dev-pharmapartners-ad1)
* extension[device][=].valueReference.identifier.system = "urn:ietf:rfc:3986"
* extension[device][=].valueReference.identifier.value = "urn:uuid:3f0bb8cf-9d17-4925-9c9d-6e0f8fe7b8e1"

Instance: aff-lrza-o2-nedap
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Authorization: Organization 2 authorizes Nedap"
Description: "Example: Authorization: Organization 2 authorizes Nedap"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","6a41ef31-c95a-4894-a6ef-4c39d8ea3e2a","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* organization = Reference(Organization/lrza-o2)
* participatingOrganization = Reference(Organization/org-nedap)
* code = NlGfAuthorizationTypeCS#lrza-careprovider-admin "LRZa Care Provider Administration"
* extension[device][+].valueReference = Reference(Device/dev-nedap-ad2)
* extension[device][=].valueReference.identifier.system = "urn:ietf:rfc:3986"
* extension[device][=].valueReference.identifier.value = "urn:uuid:90f95f4c-3360-4f97-8c2a-77831e9e1cc7"

Instance: aff-lrza-o3-gerimedica
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Authorization: Organization 3 authorizes Gerimedica"
Description: "Example: Authorization: Organization 3 authorizes Gerimedica"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","7f420cc6-8f8a-4c8f-b0d9-bc6f121d83f4","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* organization = Reference(Organization/lrza-o3)
* participatingOrganization = Reference(Organization/org-gerimedica)
* code = NlGfAuthorizationTypeCS#lrza-careprovider-admin "LRZa Care Provider Administration"
* extension[device][+].valueReference = Reference(Device/dev-gerimedica-ad3)
* extension[device][=].valueReference.identifier.system = "urn:ietf:rfc:3986"
* extension[device][=].valueReference.identifier.value = "urn:uuid:6c627191-6c6a-4b64-b2a1-049ac8fd6b4b"


// // ----------------------------------------------------------------
// // Resource from Data Source Organization 1


Instance: ad1-e1
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 1 - Endpoint"
Description: "Example: Organization 1 - Endpoint"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","59654248-477c-4694-b156-e0042f0765a6","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirectives "Advance Directives"
* payloadMimeType[+] = #application/fhir+json
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 1"
* managingOrganization = Reference(Organization/org-pharmapartners)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@cp1.example.org"
* contact[=].use = #work
* address = "https://cp1-test.example.org/fhirr4"


Instance: ad1-pr1
InstanceOf: NlGfPractitionerRole
Usage: #example
Title: "Organization 1 - PractitionerRole Harry Arts"
Description: "Example: Organization 1 - PractitionerRole Harry Arts"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/uzi","01111111","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* practitioner.identifier.system = "http://fhir.nl/fhir/NamingSystem/big"
* practitioner.identifier.value = "19011111101"
* organization = Reference(Organization/lrza-o1)
* code.coding = $uzi-rolcode#01.015 "Huisarts"
* telecom[+].system = #email
* telecom[=].value = "h.arts@cp1.example.org"


Instance: dev-pharmapartners-ad1
InstanceOf: NlGfDevice
Usage: #example
Title: "PharmaPartners Device for Organization 1"
Description: "Example: PharmaPartners Device for Organization 1"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","3f0bb8cf-9d17-4925-9c9d-6e0f8fe7b8e1","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* identifier[DeviceUrn].value = "urn:uuid:3f0bb8cf-9d17-4925-9c9d-6e0f8fe7b8e1"
* extension[endpoint][+].valueReference = Reference(Endpoint/ad1-e1)

// // ----------------------------------------------------------------
// // Resource from Data Source Organization 2

Instance: ad2-e1
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 2 - Endpoint FHIR R4"
Description: "Example: Organization 2 - Endpoint FHIR R4"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","430f7379-8ec2-4e55-b096-919995da61e2","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirectives "Advance Directives"
* payloadMimeType[+] = #application/fhir+json
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 2"
* managingOrganization = Reference(Organization/org-nedap)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@nedap.example.org"
* contact[=].use = #work
* address = "https://cp2-test.example.org/fhirr4"

Instance: ad2-e2
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 2 - Endpoint DICOM-WADO-RS"
Description: "Example: Organization 2 - Endpoint DICOM-WADO-RS"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","d4c1d657-67a9-471c-9732-9c042e9a6d43","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* payloadType[+].coding = nl-gf-data-categories-cs#Images "Images"
* connectionType = $endpoint-connection-type#dicom-wado-rs
* name = "DICOM-WADO-RS Endpoint"
* managingOrganization = Reference(Organization/org-nedap)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@nedap.example.org"
* contact[=].use = #work
* address = "https://cp2-test.example.org/dicom-wado-rs"

Instance: ad2-e3
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 2 - Endpoint FHIR STU3"
Description: "Example: Organization 2 - Endpoint FHIR STU3"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","2427ca0c-8a29-4a6a-aabd-50cf02f587a7","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#Request "Requests, transfers and orders"
* payloadType[+].coding = nl-gf-data-categories-cs#Procedure "Procedure"
* payloadType[+].coding = nl-gf-data-categories-cs#Patient "Patient"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationVitalSigns "Observation (category: Vital Signs)"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationLaboratory "Observation (category: Laboratory)"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationUse "Medication Use"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationRequest "Medication Request"
* payloadType[+].coding = nl-gf-data-categories-cs#Nutrition "Nutrition"
* payloadType[+].coding = nl-gf-data-categories-cs#Images "Images"
* payloadType[+].coding = nl-gf-data-categories-cs#Episodes "Episodes"
* payloadType[+].coding = nl-gf-data-categories-cs#Encounter "Encounter"
* payloadType[+].coding = nl-gf-data-categories-cs#DiagnosticReport "Diagnostic Report"
* payloadType[+].coding = nl-gf-data-categories-cs#Condition "Condition"
* payloadType[+].coding = nl-gf-data-categories-cs#AllergyIntolerance "Allergy Intolerance"
* payloadMimeType[+] = #application/fhir+json
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR STU3 Endpoint"
* managingOrganization = Reference(Organization/org-nedap)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@nedap.example.org"
* contact[=].use = #work
* address = "https://cp2-test.example.org/fhirstu3"

Instance: ad2-hs1
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Polikliniek 't Vaatje"
Description: "Example consultation healthcare service named Polikliniek 't Vaatje at Organization 2."
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","5cb05355-474b-4d30-8b0e-a9ca574b8274","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/lrza-o2)
* active = true
* name = "Polikliniek 't Vaatje"
* type = $sct#11429006 "Consultation"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0303 "Chirurgie (Heelkunde)"
* specialty[+].coding = $uzi-rolcode#01.014 "Chirurg"

Instance: ad2-hs2
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Neurochirurgie"
Description: "Example: Organization 2 - HealthcareService Neurochirurgie"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","c79125e5-739f-4238-959c-cd5872518c1f","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/lrza-o2)
* active = true
* name = "Neurochirurgie"
* type = $sct#11429006 "Consultation"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0308 "Medisch specialisten, neurochirurgie"
* specialty[+].coding = $uzi-rolcode#01.025 "Neurochirurg"

Instance: ad2-hs3
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Orthopedie"
Description: "Example: Organization 2 - HealthcareService Orthopedie"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","9d47ca45-4166-4531-a23d-ef5fa613ece4","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/lrza-o2)
* active = true
* name = "Orthopedie"
* type = $sct#11429006 "Consultation"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0305 "Medisch specialisten, orthopedie"
* specialty[+].coding = $uzi-rolcode#01.032 "Orthopedisch chirurg"

Instance: ad2-hs4
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Interne Geneeskunde"
Description: "Example: Organization 2 - HealthcareService Interne Geneeskunde"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","f6a508bd-9455-4afa-aad0-baec0833602d","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/lrza-o2)
* active = true
* name = "Interne Geneeskunde"
* type = $sct#11429006 "Consultation"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0313 "Interne geneeskunde"
* specialty[+].coding = $uzi-rolcode#01.016 "Internist"


Instance: ad2-hs5
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Geriatrie"
Description: "Example: Organization 2 - HealthcareService Geriatrie"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","120325af-083c-40ee-b16e-01230fe65655","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/lrza-o2)
* active = true
* name = "Geriatrie"
* type = $sct#11429006 "Consultation"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0335 "Medisch specialisten, geriatrie"
* specialty[+].coding = $uzi-rolcode#01.022 "Klinisch geriater"

Instance: ad2-hs6
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 2 - HealthcareService Urologie"
Description: "Example: Organization 2 - HealthcareService Urologie"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","08013141-16b2-42a0-8c9a-af57cee5511b","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/lrza-o2)
* active = true
* name = "Urologie"
* type = $sct#11429006 "Consultation"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0306 "Medisch specialisten, urologie"
* specialty[+].coding = $uzi-rolcode#01.045 "Uroloog"



Instance: ad2-pr1
InstanceOf: NlGfPractitionerRole
Usage: #example
Title: "Organization 2 - PractitionerRole Cardioloog Caroline van Dijk at Organization 2"
Description: "Example: Organization 2 - PractitionerRole Cardioloog Caroline van Dijk at Organization 2"
* identifier[+].system = "http://cp2.example.org/HRM/assignments"
* identifier[=].value = "123456"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/uzi","02222222","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* practitioner.identifier.system = "http://fhir.nl/fhir/NamingSystem/big"
* practitioner.identifier.value = "19022222201"
* organization = Reference(Organization/lrza-o2)
* code.coding = $uzi-rolcode#01.010 "Cardioloog"
* specialty.coding = $uzi-rolcode#01.010 "Cardioloog"
* telecom[+].system = #email
* telecom[=].value = "c.vandijk@cp2.example.org"

Instance: dev-nedap-ad2
InstanceOf: NlGfDevice
Usage: #example
Title: "Nedap Device for Organization 2"
Description: "Example: Nedap Device for Organization 2"
* insert AuthorAssignedIdentifier("https://nedap.example.org/devices","90f95f4c-3360-4f97-8c2a-77831e9e1cc7","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* identifier[DeviceUrn].value = "urn:uuid:90f95f4c-3360-4f97-8c2a-77831e9e1cc7"
* extension[endpoint][+].valueReference = Reference(Endpoint/ad2-e1)
* extension[endpoint][+].valueReference = Reference(Endpoint/ad2-e2)
* extension[endpoint][+].valueReference = Reference(Endpoint/ad2-e3)



// // ----------------------------------------------------------------
// // Resource from Data Source Organization 3

Instance: ad3-o2
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization 3 - Organization Nursing department"
Description: "Nursing department at Organization 3"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","631cf10e-42d6-4165-9907-11e2333d4a85","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* name = "Nursing department at Organization 3"
* type[+] = $organization-type#X3 "Verplegings- of verzorgingsinstelling"
* partOf = Reference(Organization/lrza-o3)

Instance: ad3-l1
InstanceOf: NlGfLocation
Usage: #example
Title: "Organization 3 - Location Main Building"
Description: "Example: Organization 3 - Location Main Building"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","7c5e3d2a-1f9e-4b8c-9d6a-8e2f5c3b1a4d","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* name = "Main Building"
* type = $v3-RoleCode#SNF "Skilled nursing facility"
* managingOrganization = Reference(Organization/lrza-o3)
* address.line = "Smidsstraat 10"
* address.city = "Zelhem"
* address.postalCode = "7021 AC"
* address.country = "NL"

Instance: ad3-l2
InstanceOf: NlGfLocation
Usage: #example
Title: "Organization 3 - Location Verpleeghuis Weltevree"
Description: "Example location Verpleeghuis Weltevree managed by the nursing department of Organization 3."
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","9a2b8f1c-4e7d-42a1-b3c9-2d5e8f7a6c1b","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* name = "Verpleeghuis Weltevree"
* type = $v3-RoleCode#SNF "Skilled nursing facility"
* managingOrganization = Reference(Organization/ad3-o2)
* address.city = "Doetinchem"
* address.country = "NL"

Instance: ad3-e1
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 3 - Endpoint FHIR R4"
Description: "Example: Organization 3 - Endpoint FHIR R4"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","8f224548-6d50-44b6-82c5-75826ee0900f","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#AdvanceDirectives "Advance Directives"
* payloadMimeType[+] = #application/fhir+json
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR R4 Endpoint"
* managingOrganization = Reference(Organization/org-gerimedica)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@example.org"
* contact[=].use = #work
* address = "https://cp3-test.example.org/fhirr4"

Instance: ad3-e2
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Organization 3 - Endpoint FHIR STU3"
Description: "Example: Organization 3 - Endpoint FHIR STU3"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","72a349cc-7336-4a91-873d-fc9349769e1a","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active

* payloadType[+].coding = nl-gf-data-categories-cs#Request "Requests, transfers and orders"
* payloadType[+].coding = nl-gf-data-categories-cs#Procedure "Procedure"
* payloadType[+].coding = nl-gf-data-categories-cs#Patient "Patient"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationVitalSigns "Observation (category: Vital Signs)"
* payloadType[+].coding = nl-gf-data-categories-cs#ObservationLaboratory "Observation (category: Laboratory)"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationUse "Medication Use"
* payloadType[+].coding = nl-gf-data-categories-cs#MedicationRequest "Medication Request"
* payloadType[+].coding = nl-gf-data-categories-cs#Nutrition "Nutrition"
* payloadType[+].coding = nl-gf-data-categories-cs#Images "Images"
* payloadType[+].coding = nl-gf-data-categories-cs#Episodes "Episodes"
* payloadType[+].coding = nl-gf-data-categories-cs#Encounter "Encounter"
* payloadType[+].coding = nl-gf-data-categories-cs#DiagnosticReport "Diagnostic Report"
* payloadType[+].coding = nl-gf-data-categories-cs#Condition "Condition"
* payloadType[+].coding = nl-gf-data-categories-cs#AllergyIntolerance "Allergy Intolerance"
* payloadMimeType[+] = #application/fhir+json
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR STU3 Endpoint"
* managingOrganization = Reference(Organization/org-gerimedica)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@example.org"
* contact[=].use = #work
* address = "https://cp3-test.example.org/fhirstu3"


Instance: ad3-hs1
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 3 - HealthcareService Geriatrie"
Description: "Example: Organization 3 - HealthcareService Geriatrie"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","4fcf98c7-b198-4d61-8b3e-5ea39e33c405","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/lrza-o3)
* active = true
* name = "Geriatrie"
* type[+] = $sct#146521000146103 "Brief comprehensive geriatric assessment"
* type[+] = $sct#107101000146106 "comprehensive geriatric assessment"
* type[+] = $sct#86944008 "Visual field study"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0335 "Medisch specialisten, geriatrie"


Instance: ad3-hs2
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Organization 3 - HealthcareService Verpleging"
Description: "Example: Organization 3 - HealthcareService Verpleging"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","b48826dc-2d58-479a-bfd3-80b7a9d69757","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* providedBy = Reference(Organization/ad3-o2)
* name = "Verpleging"
* location[+] = Reference(Location/ad3-l2)
* location[+] = Reference(Location/ad3-l1)
* type[+] = NlGfWlzZorgprofielenCS#5VV "VV Beschermd wonen met intensieve dementiezorg"
* type[+] = NlGfWlzZorgprofielenCS#6VV "VV Beschermd wonen met intensieve verzorging en verpleging"
* type[+] = NlGfWlzZorgprofielenCS#7VV "VV Beschermd wonen met zeer intensieve zorg, vanwege specifieke aandoeningen, met de nadruk op begeleiding"
* type[+] = NlGfWlzZorgprofielenCS#8VV "VV Beschermd wonen met zeer intensieve zorg, vanwege specifieke aandoeningen, met de nadruk op verzorging/verpleging"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0100 "Verpleegkundige"


Instance: ad3-pr1
InstanceOf: NlGfPractitionerRole
Usage: #example
Title: "Organization 3 - PractitionerRole Klinisch Geriater John Doe"
Description: "Example: Organization 3 - PractitionerRole Klinisch Geriater John Doe"
* insert AuthorAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/uzi","03333333","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* practitioner.identifier.system = "http://fhir.nl/fhir/NamingSystem/big"
* practitioner.identifier.value = "19033333301"
* organization = Reference(Organization/lrza-o3)
* active = true
* code.coding = $uzi-rolcode#01.022 "Klinisch geriater"
* specialty[+].coding = urn:oid:2.16.840.1.113883.2.4.6.7#0335 "Medisch specialisten, geriatrie"
* specialty[+].coding = $uzi-rolcode#01.022 "Klinisch geriater"
* telecom[0].system = #phone
* telecom[=].value = "+31301234568"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "john.doe@cp3.example.org"
* telecom[=].use = #work
* telecom[+].system = #url
* telecom[=].value = "https://matrix.to/#doctorno:cp3.example.org"
* telecom[=].use = #work


Instance: dev-gerimedica-ad3
InstanceOf: NlGfDevice
Usage: #example
Title: "Gerimedica Device for Organization 3"
Description: "Example: Gerimedica Device for Organization 3"
* insert AuthorAssignedIdentifier("urn:ietf:rfc:3986","6c627191-6c6a-4b64-b2a1-049ac8fd6b4b","http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* identifier[DeviceUrn].value = "urn:uuid:6c627191-6c6a-4b64-b2a1-049ac8fd6b4b"
* extension[endpoint][+].valueReference = Reference(Endpoint/ad3-e1)
* extension[endpoint][+].valueReference = Reference(Endpoint/ad3-e2)


// // ----------------------------------------------------------------
// // Resulting Bundle for Query Directory

Instance: query-directory
InstanceOf: Bundle
Usage: #example
Title: "Bundle of care services in Query Directory"
Description: "This bundle contains all care services from each Administration Directory for the Query Directory example"
* type = #transaction
* insert BundleEntryPUT(Organization, lrza-o1)
* insert BundleEntryPUT(Organization, lrza-o2)
* insert BundleEntryPUT(Organization, lrza-o3)
* insert BundleEntryPUT(Organization, org-pharmapartners)
* insert BundleEntryPUT(Organization, org-nedap)
* insert BundleEntryPUT(Organization, org-gerimedica)


* insert BundleEntryPUT(Endpoint, ad1-e1)
* insert BundleEntryPUT(Device, dev-pharmapartners-ad1)
* insert BundleEntryPUT(PractitionerRole, ad1-pr1)
* insert BundleEntryPUT(OrganizationAffiliation, aff-lrza-o1-pharmapartners)

* insert BundleEntryPUT(Endpoint, ad2-e1)
* insert BundleEntryPUT(Endpoint, ad2-e2)
* insert BundleEntryPUT(Endpoint, ad2-e3)
* insert BundleEntryPUT(Device, dev-nedap-ad2)
* insert BundleEntryPUT(HealthcareService, ad2-hs1)
* insert BundleEntryPUT(HealthcareService, ad2-hs2)
* insert BundleEntryPUT(HealthcareService, ad2-hs3)
* insert BundleEntryPUT(HealthcareService, ad2-hs4)
* insert BundleEntryPUT(HealthcareService, ad2-hs5)
* insert BundleEntryPUT(HealthcareService, ad2-hs6)
* insert BundleEntryPUT(PractitionerRole, ad2-pr1)
* insert BundleEntryPUT(OrganizationAffiliation, aff-lrza-o2-nedap)

* insert BundleEntryPUT(Organization, ad3-o2)
* insert BundleEntryPUT(Location, ad3-l1)
* insert BundleEntryPUT(Location, ad3-l2)
* insert BundleEntryPUT(Endpoint, ad3-e1)
* insert BundleEntryPUT(Endpoint, ad3-e2)
* insert BundleEntryPUT(Device, dev-gerimedica-ad3)
* insert BundleEntryPUT(HealthcareService, ad3-hs1)
* insert BundleEntryPUT(HealthcareService, ad3-hs2)
* insert BundleEntryPUT(PractitionerRole, ad3-pr1)
* insert BundleEntryPUT(OrganizationAffiliation, aff-lrza-o3-gerimedica)
