Instance: org-0001
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization: RSO Zuiderzee"
Description: "Example: Organization that represents the regional cooperation organization ('RSO') 'Zuiderzee'"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura","88888888","http://fhir.nl/fhir/NamingSystem/kvk", "12345678")
* name = "RSO Zuiderzee"
* type[+] = NlGfSBICS#94995 "Activities of umbrella organisations, collaborative and advisory bodies (not for sports and recreation)"
* telecom[0].system = #phone
* telecom[=].value = "+31612345678"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@rsozuiderzee.nl"
* telecom[=].use = #work
* address.line = "Vogelenzangweg 31"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line[=].extension[0].valueString = "Vogelenzangweg"
* address.line[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line[=].extension[0].valueString = "31"
* address.city = "Ulft"
* address.postalCode = "7071 PT"

Instance: org-0002
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization: Zuiderzeeziekenhuis"
Description: "Example: Organization that represents the hospital 'Zuiderzeeziekenhuis'"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura","11111112","http://fhir.nl/fhir/NamingSystem/kvk", "50000539")
* name = "Zuiderzeeziekenhuis"
* type[+] = NlGfSBICS#8610 "Hospital activities"
* type[+] = $sct#22232009 "Hospital"
* telecom[0].system = #phone
* telecom[=].value = "+31301234567"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "info@zuiderzeeziekenhuis.nl"
* telecom[=].use = #work
* address.line = "Catharinastraat 21"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Catharinastraat"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "21"
* address.city = "Doetinchem"
* address.postalCode = "7001 BZ"

Instance: org-0003
InstanceOf: NlGfOrganization
Usage: #example
Title: "Organization: Huisartspraktijk Zuiderzee"
Description: "Example: Organization that represents the General practitioner's practice 'Huisartspraktijk Zuiderzee'"
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/ura","11111122","http://fhir.nl/fhir/NamingSystem/kvk", "50000599")
* name = "example General Practice"
* type[+] = NlGfSBICS#8621 "General medical practice activities"
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

Instance: orgaff-0001
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "RSO-member1"
Description: "Example: Affiliation between regional cooperation organization 'RSO Zuiderzee' and healthcare organization 'Zuiderzeeziekenhuis'"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:234234","http://fhir.nl/fhir/NamingSystem/kvk", "90000535")
* active = true
* organization = Reference(Organization/org-0001) "RSO Zuiderzee"
* participatingOrganization = Reference(Organization/org-0002) "Zuiderzeeziekenhuis"
* code = http://hl7.org/fhir/organization-role#member "Member"

Instance: orgaff-0002
InstanceOf: NlGfOrganizationAffiliation
Usage: #example
Title: "RSO-member2"
Description: "Example: Affiliation between regional cooperation organization 'RSO Zuiderzee' and healthcare organization 'Huisartspraktijk Zuiderzee'"
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986","urn:uuid:789789","http://fhir.nl/fhir/NamingSystem/kvk", "60000535")
* active = true
* organization = Reference(Organization/org-0001) "RSO Zuiderzee"
* participatingOrganization = Reference(Organization/org-0003) "Huisartspraktijk Zuiderzee"
* code = http://hl7.org/fhir/organization-role#member "Member"