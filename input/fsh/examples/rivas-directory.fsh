// // ----------------------------------------------------------------
// // Care provider example: Stichting Rivas Zorggroep
// //
// // These instances illustrate the result of applying the StructureMaps in
// // input/fsh/structuremaps.fsh to Chamber of Commerce (KVK) source data:
// //   - KvkBasisprofielToOrganization      → NlGfOrganization (the care provider)
// //   - KvkVestigingsprofielToLocation     → NlGfLocation (its vestigingen)
// //
// // Source data (organization + vestigingen) obtained from the CIBG
// // Zorgaanbiedersportaal:
// //   https://zoeken.zorgaanbiedersportaal.nl/zorgaanbieder/stichting-rivas-zorggroep/11044044 (using API https://zoeken.zorgaanbiedersportaal.nl/api/v1/Organisatie/{orgId} and https://zoeken.zorgaanbiedersportaal.nl/api/v1/Vestiging/{orgId}/{vestigingsnummer})
// // KVK number 11044044; vestigingsnummers and addresses as listed on that page.
// // A representative subset of the 57 vestigingen is included; the remaining
// // vestigingen follow the same mapping pattern.
// // ----------------------------------------------------------------

// // ----------------------------------------------------------------
// // Organization (result of KvkBasisprofielToOrganization)

Instance: 7d5ae4d9-ca42-4bc7-b51c-58d48412c213
InstanceOf: NlGfOrganization
Usage: #example
Title: "Rivas - Stichting Rivas Zorggroep - Organization"
Description: "Example: care provider Stichting Rivas Zorggroep, mapped from its KVK Basisprofiel to a FHIR Organization via the KvkBasisprofielToOrganization StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk", "11044044", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* active = true
* name = "Stichting Rivas Zorggroep"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87100 "Residential nursing care activities"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#69209 "Other bookkeeping services"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#78202 "Activities of temporary secondment agencies"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86930 "Activities of psychologists and psychotherapists, except medical doctors"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86950 "Physiotherapy activities"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86994 "Other paramedical care"
* telecom[+].system = #url
* telecom[=].value = "https://www.rivas.nl"
* telecom[=].use = #work
* address.text = "Banneweg 57, 4204 AA Gorinchem"
* address.line = "Banneweg 57"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Banneweg"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "57"
* address.city = "Gorinchem"
* address.postalCode = "4204 AA"
* address.country = "NL"
* address.use = #work

// // ----------------------------------------------------------------
// // Locations (result of KvkVestigingsprofielToLocation)

Instance: e4c09d6e-bf14-49f5-a14b-ff7514f9c6fc
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Stg. Rivas Zorggroep Hoofdvestiging - Location"
Description: "Example: main establishment (hoofdvestiging) of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027888347", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Stg. Rivas Zorggroep Hoofdvestiging"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87100 "Residential nursing care activities"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#69209 "Other bookkeeping services"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#78202 "Activities of temporary secondment agencies"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86930 "Activities of psychologists and psychotherapists, except medical doctors"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86950 "Physiotherapy activities"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86994 "Other paramedical care"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Banneweg 57, 4204 AA Gorinchem"
* address.line = "Banneweg 57"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Banneweg"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "57"
* address.city = "Gorinchem"
* address.postalCode = "4204 AA"
* address.country = "NL"
* address.use = #work

Instance: 13f2707e-6c96-42e3-bf97-2e042204bdc3
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas Paramedische zorg - Location"
Description: "Example: vestiging Rivas Paramedische zorg of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000043773346", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas Paramedische zorg"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86950 "Physiotherapy activities"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Thorbeckelaan 122b, 3362 BV Sliedrecht"
* address.line = "Thorbeckelaan 122b"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Thorbeckelaan"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "122"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix"
* address.line.extension[=].valueString = "b"
* address.city = "Sliedrecht"
* address.postalCode = "3362 BV"
* address.country = "NL"
* address.use = #work

Instance: 5cc69e99-b69b-4536-abd8-5d0c0701df44
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas Wijkverpleging - Location"
Description: "Example: vestiging Rivas Wijkverpleging of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000043619169", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas Wijkverpleging"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86994 "Other paramedical care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88991 "Support and asistance for young people without overnight stay (including day time activities)"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88992 "Social welfare work"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Banneweg 55, 4204 AA Gorinchem"
* address.line = "Banneweg 55"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Banneweg"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "55"
* address.city = "Gorinchem"
* address.postalCode = "4204 AA"
* address.country = "NL"
* address.use = #work

Instance: 9f8dc0c4-d0aa-49a0-a433-42c2c523d63d
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie De Alblashof - Location"
Description: "Example: vestiging Rivas locatie De Alblashof of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027889564", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie De Alblashof"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87100 "Residential nursing care activities"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86221 "Specialised medical care without overnight stay (not psychiatric care)"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88991 "Support and asistance for young people without overnight stay (including day time activities)"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88992 "Social welfare work"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "De Alblashof 1, 2951 XR Alblasserdam"
* address.line = "De Alblashof 1"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "De Alblashof"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "1"
* address.city = "Alblasserdam"
* address.postalCode = "2951 XR"
* address.country = "NL"
* address.use = #work

Instance: aeeec7c3-bae1-4e13-b474-cc4334db299a
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie De Markt - Location"
Description: "Example: vestiging Rivas locatie De Markt of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027900878", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie De Markt"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87302 "Residential care with personal care and assistance for the elderly"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Markt 24, 3351 PB Papendrecht"
* address.line = "Markt 24"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Markt"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "24"
* address.city = "Papendrecht"
* address.postalCode = "3351 PB"
* address.country = "NL"
* address.use = #work

Instance: fec375a2-1e4d-4c8b-9605-d5b47c3cd8ea
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie De Schutse - Location"
Description: "Example: vestiging Rivas locatie De Schutse of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027898431", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie De Schutse"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87302 "Residential care with personal care and assistance for the elderly"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Mollenburgseweg 14, 4205 HA Gorinchem"
* address.line = "Mollenburgseweg 14"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Mollenburgseweg"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "14"
* address.city = "Gorinchem"
* address.postalCode = "4205 HA"
* address.country = "NL"
* address.use = #work

Instance: ac20e246-8bd8-4778-ad5f-e8fe671fe6cd
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie GC Arkel - Location"
Description: "Example: vestiging Rivas locatie GC Arkel (gezondheidscentrum) of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000032737807", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie GC Arkel"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Raadhuisplein 7, 4241 AA Arkel"
* address.line = "Raadhuisplein 7"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Raadhuisplein"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "7"
* address.city = "Arkel"
* address.postalCode = "4241 AA"
* address.country = "NL"
* address.use = #work

Instance: 217c9c8c-2e6d-4d71-a3c7-a19a915caea2
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie Het Anker - Location"
Description: "Example: vestiging Rivas locatie Het Anker of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027889661", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie Het Anker"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88991 "Support and asistance for young people without overnight stay (including day time activities)"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88992 "Social welfare work"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Wilgenplein 102, 2951 EM Alblasserdam"
* address.line = "Wilgenplein 102"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Wilgenplein"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "102"
* address.city = "Alblasserdam"
* address.postalCode = "2951 EM"
* address.country = "NL"
* address.use = #work

Instance: ccb5c241-069a-44b3-a575-a64965ee433b
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie Judith Leysterhof Rembrandthof 2 - Location"
Description: "Example: vestiging Rivas locatie Judith Leysterhof Rembrandthof 2 of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027898695", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie Judith Leysterhof Rembrandthof 2"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87100 "Residential nursing care activities"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Rembrandthof 2, 3372 XS Hardinxveld-Giessendam"
* address.line = "Rembrandthof 2"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Rembrandthof"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "2"
* address.city = "Hardinxveld-Giessendam"
* address.postalCode = "3372 XS"
* address.country = "NL"
* address.use = #work

Instance: 46a0e08a-50f0-44fd-b685-4ddd4927ef5e
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie Lingesteyn - Location"
Description: "Example: vestiging Rivas locatie Lingesteyn of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027899926", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie Lingesteyn"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86102 "General hospital care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87100 "Residential nursing care activities"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87301 "Residential physical and sensory disability care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87302 "Residential care with personal care and assistance for the elderly"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87991 "Residential youth care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88992 "Social welfare work"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Lingesteynplantsoen 20, 4141 GH Leerdam"
* address.line = "Lingesteynplantsoen 20"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Lingesteynplantsoen"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "20"
* address.city = "Leerdam"
* address.postalCode = "4141 GH"
* address.country = "NL"
* address.use = #work

Instance: e4eb40b9-85af-4740-a7b3-0d820c12646e
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie Waerthove - Location"
Description: "Example: vestiging Rivas locatie Waerthove of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027902226", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie Waerthove"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#87100 "Residential nursing care activities"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Kerkbuurt 200, 3361 BM Sliedrecht"
* address.line = "Kerkbuurt 200"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Kerkbuurt"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "200"
* address.city = "Sliedrecht"
* address.postalCode = "3361 BM"
* address.country = "NL"
* address.use = #work

Instance: bde544b0-c967-419c-b31a-0734f99a727e
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas locatie Zorgmolen - Location"
Description: "Example: vestiging Rivas locatie Zorgmolen of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027900827", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas locatie Zorgmolen"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88991 "Support and asistance for young people without overnight stay (including day time activities)"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88992 "Social welfare work"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "Poldermolen 2, 3352 TH Papendrecht"
* address.line = "Poldermolen 2"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "Poldermolen"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "2"
* address.city = "Papendrecht"
* address.postalCode = "3352 TH"
* address.country = "NL"
* address.use = #work

Instance: adb8ac46-cb8b-4e99-ab68-4e641549cda9
InstanceOf: NlGfLocation
Usage: #example
Title: "Rivas - Rivas Wijkverpleging regio Brabant - Location"
Description: "Example: vestiging Rivas Wijkverpleging regio Brabant of Stichting Rivas Zorggroep, mapped from its KVK Vestigingsprofiel to a FHIR Location via the KvkVestigingsprofielToLocation StructureMap."
* insert CustodianAssignedIdentifier("http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer", "000027901025", "http://fhir.nl/fhir/NamingSystem/kvk", "50000535")
* status = #active
* mode = #instance
* name = "Rivas Wijkverpleging regio Brabant"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88991 "Support and asistance for young people without overnight stay (including day time activities)"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#86942 "Nursing and personal care at home and maternity care"
* type[+] = https://www.cbs.nl/standaard-bedrijfsindeling#88992 "Social welfare work"
* physicalType = $location-physical-type#bu "Building"
* managingOrganization = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* address.text = "De Hoogjens 29, 4254 XV Sleeuwijk"
* address.line = "De Hoogjens 29"
* address.line.extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address.line.extension[=].valueString = "De Hoogjens"
* address.line.extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address.line.extension[=].valueString = "29"
* address.city = "Sleeuwijk"
* address.postalCode = "4254 XV"
* address.country = "NL"
* address.use = #work

// // ----------------------------------------------------------------
// // HealthcareServices (deduplicated from the ZorgDomein referral products;
// // each CSV row is a referral "zorgproduct", collapsed here to one
// // HealthcareService per care cluster. HealthcareService.type is mapped to
// // the zorgvragen offered by the service. providedBy references the Rivas
// // Organization; location references the relevant Location example(s).)

Instance: 68f0a8c4-35dc-4c6c-a466-71a5d59a8647
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Rivas - HealthcareService Gynaecologie / verloskunde (Beatrixziekenhuis)"
Description: "Example: combined gynaecology and obstetrics outpatient clinic at the Beatrixziekenhuis (Gorinchem, the Rivas hoofdvestiging). Deduplicated from the ZorgDomein referral products; HealthcareService.type is mapped to the zorgvragen offered by this service."
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986", "urn:uuid:b87eef71-7334-454f-ba9d-3b7287385afe", "http://fhir.nl/fhir/NamingSystem/kvk", "11044044")
* active = true
* name = "Gynaecologie / verloskunde"
* providedBy = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* location[+] = Reference(Location/e4c09d6e-bf14-49f5-a14b-ff7514f9c6fc)
* specialty[+].coding = $sct#394585009 "Obstetrics and gynecology"
// Allowed referrers (Zorgverleners that may use / refer to this service)
* eligibility[+].code.text = "Physician Assistant"
* eligibility[+].code.text = "Basisarts"
* eligibility[+].code.text = "Arts Maatschappij en Gezondheid"
* eligibility[+].code.text = "Huisarts (HIDHA)"
* eligibility[+].code.text = "Huisarts"
* eligibility[+].code.text = "Verpleegkundig specialist"
* eligibility[+].code.text = "Arts voor verstandelijk gehandicapten"
* eligibility[+].code.text = "Jeugdarts"
* eligibility[+].code.text = "Huisarts (waarnemend)"
* eligibility[+].code.text = "Specialist ouderengeneeskunde"
* eligibility[+].code.text = "Verloskundige"
* type[+] = $service-type#397 "Outpatients"
// Gynaecologie
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.afwijkend-uitstrijkje "Abnormal cervical smear"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.anticonceptie "Contraception"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.cyclusstoorn-abn-vag-bloedverlies-premenopauzaal "Cycle disorder / abnormal vaginal bleeding premenopausal"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.cyclusstoorn-abn-vag-bloedverlies-post-menopauzaal "Cycle disorder / abnormal vaginal bleeding (post)menopausal"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.fluor-vaginalis "Vaginal discharge"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.incontinentie-prolaps "Incontinence / prolapse"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.infertiliteit-subfertiliteit-kinderwens "Infertility / subfertility / desire for children"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.onderbuikpijn "Lower abdominal pain"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.overgangsklachten "Menopausal symptoms"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.palpabele-afwijking-uterus-adnexen "Palpable abnormality of uterus / adnexa"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.pid "PID"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.pms-premenstrueel-syndroom "PMS (premenstrual syndrome)"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.preconceptioneel-advies "Preconception advice"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.prenatale-diagnostiek "Prenatal diagnostics"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.seksuele-disfunctie "Sexual dysfunction"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.soa "STI"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.sterilisatie-vrouw "Female sterilisation"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.vulva-problematiek "Vulvar problems"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.gynaecologie.overige-zorgvragen-gynaecologie "Other care questions Gynaecology"
// Verloskunde
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.dreigende-miskraam "(Threatened) miscarriage"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.dreigende-serotoniteit "(Threatened) post-term pregnancy"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.belaste-medische-anamnese-medische-indicatie "Complicated medical history / medical indication"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.belaste-verloskundige-anamnese "Complicated obstetric history"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.bloedverlies "Bleeding"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.discongruente-groei "Discongruent growth"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.dreigende-vroeggeboorte "Threatened preterm birth"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.hyperemesis "Hyperemesis"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.liggingsafwijking "Malpresentation"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.meerlingzwangerschap "Multiple pregnancy"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.minder-leven "Reduced fetal movements"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.problemen-tijdens-bevalling "Problems during delivery"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.zwangerschapsafbreking "Termination of pregnancy"
* type[+] = NlGfZorgvragenCS#msz.gynaecologie-verloskunde.verloskunde.overige-zorgvragen-verloskunde "Other care questions Obstetrics"
// Urologie (bekkenbodemklachten / incontinentie)
* type[+] = NlGfZorgvragenCS#msz.urologie.incontinentie-prolaps "Incontinence / prolapse"

Instance: 9af72573-912c-43fd-81b6-058a6e46b622
InstanceOf: NlGfHealthcareService
Usage: #example
Title: "Rivas - HealthcareService Verpleging en verzorging (Wijkverpleging)"
Description: "Example: district nursing / home care (wijkverpleging) service of Stichting Rivas Zorggroep, delivered at the patient's home. Deduplicated from the ZorgDomein referral products; HealthcareService.type is mapped to the zorgvragen offered by this service."
* insert CustodianAssignedIdentifier("urn:ietf:rfc:3986", "urn:uuid:d67653e3-2e83-46d7-92f0-a880e4515c9c", "http://fhir.nl/fhir/NamingSystem/kvk", "11044044")
* active = true
* name = "Verpleging en verzorging"
* providedBy = Reference(Organization/7d5ae4d9-ca42-4bc7-b51c-58d48412c213)
* location[+] = Reference(Location/5cc69e99-b69b-4536-abd8-5d0c0701df44)
* location[+] = Reference(Location/adb8ac46-cb8b-4e99-ab68-4e641549cda9)
// Allowed referrers (Zorgverleners that may use / refer to this service)
* eligibility[+].code.text = "Basisarts"
* eligibility[+].code.text = "Arts Maatschappij en Gezondheid"
* eligibility[+].code.text = "Huisarts (HIDHA)"
* eligibility[+].code.text = "Huisarts"
* eligibility[+].code.text = "Verpleegkundig specialist"
* eligibility[+].code.text = "Transfermedewerker"
* eligibility[+].code.text = "Arts voor verstandelijk gehandicapten"
* eligibility[+].code.text = "Jeugdarts"
* eligibility[+].code.text = "Huisarts (waarnemend)"
* eligibility[+].code.text = "Specialist ouderengeneeskunde"
// Coverage area: province -> city -> postal-code hierarchy (see rivas-coverage-areas.fsh)
* coverageArea[+] = Reference(Location/b03dbf73-23a1-4880-bda0-ee8dab1a0184)
* coverageArea[+] = Reference(Location/0540de85-0f4b-4b5c-a6fa-256afb8c31de)
* coverageArea[+] = Reference(Location/2f04ef3b-2f14-42b1-8fc4-e15083d5d5fe)
* coverageArea[+] = Reference(Location/4b613504-7582-43de-b82a-4fd7313ccffe)
* coverageArea[+] = Reference(Location/71e864ec-231d-4b8c-8c0b-6f6435099985)
* coverageArea[+] = Reference(Location/6064e2a0-e93c-4e50-8b5e-bbaf7a675c70)
* coverageArea[+] = Reference(Location/12aee287-c4d1-4c6e-90c3-a07a5280f5ef)
* coverageArea[+] = Reference(Location/defc8df0-5cd5-4287-ab16-48408924c2db)
* type[+] = $service-type#59 "Nursing"
* type[+] = NlGfZorgvragenCS#verpleging-verzorging-en-thuiszorg.verpleging "Nursing"
* type[+] = NlGfZorgvragenCS#verpleging-verzorging-en-thuiszorg.persoonlijke-verzorging "Personal care"
* type[+] = NlGfZorgvragenCS#verpleging-verzorging-en-thuiszorg.specialistische-verpleging "Specialist nursing"
* type[+] = NlGfZorgvragenCS#verpleging-verzorging-en-thuiszorg.complexe-gezondheidsproblemen "Complex health problems"
* type[+] = NlGfZorgvragenCS#verpleging-verzorging-en-thuiszorg.palliatieve-zorg "Palliative care"
* type[+] = NlGfZorgvragenCS#verpleging-verzorging-en-thuiszorg.overige-zorgvragen-verpleging-en-verzorging "Other care questions Nursing & personal care"
* type[+] = NlGfZorgvragenCS#hulpmiddelen.overige-hulpmiddelen "Other assistive devices"


