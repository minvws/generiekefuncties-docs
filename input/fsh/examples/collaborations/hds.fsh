Instance: endpoint-1001
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Huisartsendienstenstructuur HDS - Endpoint"
Description: "Example: Organization HDS - Endpoint"
* status = #active
* payloadType[+].coding = nl-gf-data-categories-cs#Patient "Patient"
* payloadMimeType[+] = #application/fhir+json
* payloadMimeType[+] = #fhirVersion-3.0
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint 99"
* period.start = "2024-01-15"
* managingOrganization = Reference(Organization/vendor-1001)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@cp1.example.org"
* contact[=].use = #work
* address = "https://hds.hapis.nl/fhirstu3"

Instance: vendor-1001
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - HAPIS vendor"
Description: "Example: Software Vendor - HAPIS vendor"
* name = "HAPIS Vendor B.V."
* type[+] = nl-gf-sbi-cs#6210 "Computer programming activities"
* type[+].text = "IT vendor organization"

Instance: org-1001
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization: Huisartsendienstenstructuur HDS"
Description: "Example: Huisartsendienstenstructuur HDS that runs a huisartsenspoedpost (HAP)"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura", "98765432", "http://fhir.nl/fhir/NamingSystem/kvk", "10000535")
* name = "Huisartsendienstenstructuur HDS"
* type[+] = nl-gf-sbi-cs#94995 "Activiteiten van overkoepelende organen en samenwerkings- en adviesorganen (niet op het gebied van sport en recreatie)"
* type[+] = nl-gf-sbi-cs#8621 "Huisartsenzorg"
* telecom[0].system = #phone
* telecom[=].value = "+31612345678"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@huisartsendienstenstructuurhds.nl"
* telecom[=].use = #work
* address.line = "Vogelenzangweg 31"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line[=].extension[0].valueString = "Vogelenzangweg"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line[=].extension[0].valueString = "31"
* address.city = "Ulft"
* address.postalCode = "7071 PT"
* endpoint[+] = Reference(Endpoint/endpoint-1001)

Instance: loc-1001
InstanceOf: NlGfLocation
Usage: #example
Title: "Organization: Huisartsendienstenstructuur HDS - Location HAP"
Description: "Example: Organization 3 - Huisartsendienstenstructuur HDS - Location HAP"
* status = #active
* name = "Huisartsenspoedpost (HAP)"
* type = $v3-RoleCode#GACH "Hospitals; General Acute Care Hospital"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/org-0001)
* partOf = Reference(Organization/org-0001)
* address.line = "Smidsstraat 10"
* address.city = "Zelhem"
* address.postalCode = "7021 AC"
* address.country = "NL"

Instance: org-1002
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization: Huisartsenpraktijk A"
Description: "Example: Huisartsenpraktijk A"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura", "98765499", "http://fhir.nl/fhir/NamingSystem/kvk", "10000522")
* name = "Huisartsenpraktijk A"
* type[+] = nl-gf-sbi-cs#8621 "Huisartsenzorg"
* telecom[0].system = #phone
* telecom[=].value = "+31612345670"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@huisartsenpraktijka.nl"
* telecom[=].use = #work
* address.line = "Vogelenzangweg 29"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line[=].extension[0].valueString = "Vogelenzangweg"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line[=].extension[0].valueString = "29"
* address.city = "Ulft"
* address.postalCode = "7071 PT"

Instance: org-1003
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization: Huisartsenpraktijk B"
Description: "Example: Huisartsenpraktijk B"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura", "98765499", "http://fhir.nl/fhir/NamingSystem/kvk", "10000522")
* name = "Huisartsenpraktijk B"
* type[+] = nl-gf-sbi-cs#8621 "Huisartsenzorg"
* telecom[0].system = #phone
* telecom[=].value = "+31612345679"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@huisartsenpraktijkb.nl"
* telecom[=].use = #work
* address.line = "Vogelenzangweg 35"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line[=].extension[0].valueString = "Vogelenzangweg"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line[=].extension[0].valueString = "35"
* address.city = "Ulft"
* address.postalCode = "7071 PT"

Instance: orgaff-1001
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Huisartsendienstenstructuur HDS x Huisartsenpraktijk A"
Description: "Example: Affiliation between Huisartsendienstenstructuur HDS and Huisartsenpraktijk A"
* active = true
* organization = Reference(Organization/org-1001) "Huisartsendienstenstructuur HDS"
* participatingOrganization = Reference(Organization/org-1002) "Huisartsenpraktijk A"
* code = "http://hl7.org/fhir/organization-role|member" "member"

Instance: orgaff-1002
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "Huisartsendienstenstructuur HDS x Huisartsenpraktijk B"
Description: "Example: Affiliation between Huisartsendienstenstructuur HDS and Huisartsenpraktijk B"
* active = true
* organization = Reference(Organization/org-1001) "Huisartsendienstenstructuur HDS"
* participatingOrganization = Reference(Organization/org-1003) "Huisartsenpraktijk B"
* code = "http://hl7.org/fhir/organization-role|member" "member"

Instance: endpoint-1002
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Huisartsenpraktrijk A - Endpoint"
Description: "Example: Huisartsenpraktrijk A - Endpoint"
* status = #active
* payloadType[+].coding = nl-gf-data-categories-cs#Patient "Patient"
* payloadMimeType[+] = #application/fhir+json
* payloadMimeType[+] = #fhirVersion-4.0
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint Huisartsenpraktrijk A"
* period.start = "2024-01-15"
* managingOrganization = Reference(Organization/vendor-1002)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@cp1.example.org"
* contact[=].use = #work
* address = "https://huisartsenpraktijka.hisa.nl/fhirr4"

Instance: vendor-1002
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - HIS vendor A"
Description: "Example: Software Vendor - HIS vendor A"
* name = "HIS Vendor A B.V."
* type[+] = nl-gf-sbi-cs#6210 "Computer programming activities"
* type[+].text = "IT vendor organization"

Instance: endpoint-1003
InstanceOf: NlGfEndpoint
Usage: #example
Title: "Huisartsenpraktrijk B - Endpoint"
Description: "Example: Huisartsenpraktrijk B - Endpoint"
* status = #active
* payloadType[+].coding = nl-gf-data-categories-cs#Patient "Patient"
* payloadMimeType[+] = #application/fhir+json
* payloadMimeType[+] = #fhirVersion-4.0
* connectionType = $endpoint-connection-type#hl7-fhir-rest
* name = "FHIR Endpoint Huisartsenpraktrijk B"
* period.start = "2024-01-15"
* managingOrganization = Reference(Organization/vendor-1003)
* contact[0].system = #phone
* contact[=].value = "+3131599991"
* contact[=].use = #work
* contact[+].system = #email
* contact[=].value = "info@cp1.example.org"
* contact[=].use = #work
* address = "https://huisartsenpraktijkb.hisb.nl/fhirr4"

Instance: vendor-1003
InstanceOf: NlGfOrganization
Usage: #example
Title: "Software Vendor - HIS vendor B"
Description: "Example: Software Vendor - HIS vendor B"
* name = "HIS Vendor B B.V."
* type[+] = nl-gf-sbi-cs#6210 "Computer programming activities"
* type[+].text = "IT vendor organization"

