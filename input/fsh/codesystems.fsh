CodeSystem: NlGfDataExchangeCapabilitiesCS
Id: nl-gf-data-exchange-capabilities
Title: "NL GF Data exchange capabilities"
Description: "Local code system for NL Generic Functions."
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-data-exchange-capabilities"
* ^status = #active
* ^experimental = true
* #http://minvws.github.io/generiekefuncties-docs/CapabilityStatement/nl-gf-admin-directory-update-client "Care Services Directory for Update Client"
* #http://minvws.github.io/generiekefuncties-docs/CapabilityStatement/nl-gf-query-directory-query-client "Care Services Directory for Query Client"
* #http://minvws.github.io/generiekefuncties-docs/CapabilityStatement/nl-gf-query-directory-query-client-reads "Care Services Directory for Query Client for only Read operations"
* #eOverdracht-notification "Transfer of Care - eOverdracht Notification"
* #Twiin-TA-notification "Twiin - TA Notification"
* #Nuts-OAuth "Nuts OAuth endpoint"
* #http://nictiz.nl/fhir/CapabilityStatement/eOverdracht-servercapabilities "Transfer of Care - eOverdracht Server"
* #http://nictiz.nl/fhir/CapabilityStatement/bgz2017-servercapabilities "BGZ Server"
* #http://nictiz.nl/fhir/CapabilityStatement/mp-MedicationData.RetrieveServe "Minimal requirements for a server to fulfill the 'Serve medication data' transaction (system role: MP-MGB)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-MedicationData.SendReceive "Minimal requirements for a server to fulfill the 'Receive medication data' transaction (system role: MP-MGO)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-MedicationOverview.RetrieveServe "Minimal requirements for a server to fulfill the 'Serve medication overview' transaction (system role: MP-MOB)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-MedicationOverview.SendReceive "Minimal requirements for a server to fulfill the 'Receive medication overview' transaction (system role: MP-MOO)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-MedicationPrescription "Minimal requirements for a server to fulfill the 'Receive medication prescription' transaction (system role: MP-VOO)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-MedicationPrescriptionProcessing "Minimal requirements for a server to fulfill the 'Receive medication prescription processing' transaction (system role: MP-VAO)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-ProposalDispenseRequest "Minimal requirements for a server to fulfill the 'Receive proposal dispense request' transaction (system role: MP-VVO)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-ReplyProposalDispenseRequest "Minimal requirements for a server to fulfill the 'Receive reply proposal dispense request' transaction (system role: MP-VVS)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-ProposalMedicationAgreement "Minimal requirements for a server to fulfill the 'Receive proposal medication agreement' transaction (system role: MP-VMO)."
* #http://nictiz.nl/fhir/CapabilityStatement/mp-ReplyProposalMedicationAgreement "Minimal requirements for a server to fulfill the 'Receive reply proposal medication agreement' transaction (system role: MP-VMS)."

CodeSystem: NlGfWlzZorgprofielenCS
Id: nl-gf-wlz-zorgprofielen-cs
Title: "NL GF WLZ Zorgprofielen CodeSystem"
Description: "Local code system for NL Generic Functions WLZ Zorgprofielen."
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-wlz-zorgprofielen-cs"
* ^status = #active
* ^experimental = true
* #4VV "VV Beschut wonen met intensieve begeleiding en uitgebreide verzorging" "Pgb mogelijk"
* #5VV "VV Beschermd wonen met intensieve dementiezorg" "Pgb mogelijk"
* #6VV "VV Beschermd wonen met intensieve verzorging en verpleging" "Pgb mogelijk"
* #7VV "VV Beschermd wonen met zeer intensieve zorg, vanwege specifieke aandoeningen, met de nadruk op begeleiding" "Pgb mogelijk - Meerzorg mogelijk"
* #8VV "VV Beschermd wonen met zeer intensieve zorg, vanwege specifieke aandoeningen, met de nadruk op verzorging/verpleging" "Pgb mogelijk - Meerzorg mogelijk"
* #9bVV "VV Herstelgerichte behandeling met verpleging en verzorging" "Geen pgb"
* #3VG "VG Wonen met begeleiding en verzorging" "Pgb mogelijk"
* #4VG "VG Wonen met begeleiding en intensieve verzorging" "Pgb mogelijk"
* #5VG "VG Wonen met intensieve begeleiding en intensieve verzorging" "Pgb mogelijk - Meerzorg mogelijk"
* #6VG "VG Wonen met intensieve begeleiding, verzorging en gedragsregulering" "Pgb mogelijk"
* #7VG "VG (Besloten) wonen met zeer intensieve begeleiding, verzorging en gedragsregulering" "Pgb mogelijk - Meerzorg mogelijk"
* #8VG "VG Wonen met begeleiding en volledige verzorging en verpleging" "Pgb mogelijk - Meerzorg mogelijk"
* #1LVG "LVG Wonen met enige behandeling en begeleiding (18 tot 23 jaar)" "Geen pgb*"
* #2LVG "LVG Wonen met behandeling en begeleiding (18 tot 23 jaar)" "Geen pgb*"
* #3LVG "LVG Wonen met intensieve behandeling en begeleiding, kleine groep (18 tot 23 jaar)" "Geen pgb"
* #4LVG "LVG Wonen met zeer intensieve behandeling en begeleiding (18 tot 23 jaar)" "Geen pgb - Meerzorg mogelijk"
* #5LVG "LVG Besloten wonen met zeer intensieve behandeling en begeleiding (18 tot 23 jaar)" "Geen pgb - Meerzorg mogelijk"
* #1SGLVG "LVG Behandeling in een SGLVG behandelcentrum" "Geen pgb - Meerzorg mogelijk"
* #2LG "LG Wonen met begeleiding en enige verzorging" "Pgb mogelijk"
* #4LG "LG Wonen met begeleiding en verzorging" "Pgb mogelijk"
* #5LG "LG Wonen met begeleiding en intensieve verzorging" "Pgb mogelijk - Meerzorg mogelijk"
* #6LG "LG Wonen met intensieve begeleiding en intensieve verzorging" "Pgb mogelijk - Meerzorg mogelijk"
* #7LG "LG Wonen met zeer intensieve begeleiding en zeer intensieve verzorging" "Pgb mogelijk - Meerzorg mogelijk"
* #2ZGaud "ZGaud Wonen met intensieve begeleiding en verzorging" "Pgb mogelijk"
* #3ZGaud "ZGaud Wonen met intensieve begeleiding en intensieve verzorging" "Pgb mogelijk - Meerzorg mogelijk"
* #4ZGaud "ZGaud Wonen met intensieve begeleiding en enige verzorging" "Pgb mogelijk"
* #2ZGvis "ZGvis Wonen met begeleiding en enige verzorging" "Pgb mogelijk"
* #3ZGvis "ZGvis Wonen met intensieve begeleiding en verzorging" "Pgb mogelijk"
* #4ZGvis "ZGvis Wonen met intensieve begeleiding en intensieve verzorging" "Pgb mogelijk"
* #5ZGvis "ZGvis Wonen met zeer intensieve begeleiding en zeer intensieve verzorging" "Pgb mogelijk - Meerzorg mogelijk"
* #3bGGZ "GGZ-B Voortgezet verblijf met intensieve begeleiding" "Geen pgb"
* #4bGGZ "GGZ-B Voortgezet verblijf met intensieve begeleiding en verzorging" "Geen pgb"
* #5bGGZ "GGZ-B Voortgezet verblijf met intensieve begeleiding en gedragsregulering" "Geen pgb"
* #6bGGZ "GGZ-B Voortgezet verblijf met intensieve begeleiding en intensieve verpleging en verzorging" "Geen pgb - Meerzorg mogelijk"
* #7bGGZ "GGZ-B Beveiligd voortgezet verblijf vanwege extreme gedragsproblematiek met zeer intensieve begeleiding" "Geen pgb - Meerzorg mogelijk"
* #GGZWonen1 "GGZ wonen met intensieve begeleiding" "PGB mogelijk"
* #GGZWonen2 "GGZ wonen met intensieve begeleiding en verzorging" "PGB mogelijk"
* #GGZWonen3 "GGZ wonen met intensieve begeleiding en gedragsregulering" "PGB mogelijk"
* #GGZWonen4 "GGZ wonen met intensieve begeleiding en intensieve verpleging en verzorging" "PGB mogelijk - Meerzorg mogelijk"
* #GGZWonen5 "GGZ Beveiligd wonen vanwege extreme gedragsproblematiek met zeer intensieve begeleiding" "Geen pgb - Meerzorg mogelijk"

CodeSystem: NlGfSBICS
Id: nl-gf-sbi-cs
Title: "NL GF Standaard Bedrijfsindeling 2025"
Description: "Standaard Bedrijfsindeling (SBI) 2025 codes for healthcare-related business activities in the Netherlands."
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-sbi-2025-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #47730 "Detailhandel in farmaceutische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in farmaceutische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of pharmaceutical products"
* #86101 "Exploitatie van Universitair Medische Centra"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van Universitair Medische Centra"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of University Medical Centres"
* #86102 "Algemene ziekenhuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Algemene ziekenhuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General hospital care"
* #86103 "Overige ziekenhuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ziekenhuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other hospital care"
* #86104 "Curatieve Geestelijke gezondheidszorg met verblijf (met uitzondering van activiteiten van verslavingsklinieken)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Curatieve Geestelijke gezondheidszorg met verblijf (met uitzondering van activiteiten van verslavingsklinieken)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Curative mental health care with overnight stay (not activities of addiction clinics)"
* #86210 "Huisartsenzorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Huisartsenzorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General medical practice activities"
* #86221 "Medisch specialistische zorg zonder verblijf (met uitzondering van psychiatrische zorg)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medisch specialistische zorg zonder verblijf (met uitzondering van psychiatrische zorg)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised medical care without overnight stay (not psychiatric care)"
* #86222 "Psychiatrische zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Psychiatrische zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Psychiatric care"
* #86230 "Tandheelkundige zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Tandheelkundige zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Dental practice care activities"
* #86910 "Activiteiten van medische beeldvorming en medische laboratoria"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van medische beeldvorming en medische laboratoria"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Diagnostic imaging services and medical laboratory activities"
* #86920 "Ambulancezorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ambulancezorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patient transportation by ambulance"
* #86930 "Psychologische zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Psychologische zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of psychologists and psychotherapists, except medical doctors"
* #86941 "Verloskundige zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verloskundige zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of midwifes"
* #86942 "Verpleging en verzorging thuis en kraamzorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleging en verzorging thuis en kraamzorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nursing and personal care at home and maternity care"
* #86943 "Overige verpleging en verzorging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige verpleging en verzorging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other Nursing and personal care"
* #86950 "Fysiotherapie en ergotherapie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fysiotherapie en ergotherapie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Physiotherapy activities"
* #86960 "Alternatieve geneeskunde en oefentherapie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Alternatieve geneeskunde en oefentherapie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Traditional, complementary and alternative medicine activities"
* #86970 "Bemiddeling in de gezondheidszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in de gezondheidszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for medical, dental and other human health services"
* #86991 "Arbozorg (inclusief activiteiten van zelfstandige bedrijfsartsen)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Arbozorg (inclusief activiteiten van zelfstandige bedrijfsartsen)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Occupational health and safety service (including activities of independent occupational physicians)"
* #86992 "Preventieve zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Preventieve zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Preventive care"
* #86993 "Overige mondzorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige mondzorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other oral health care"
* #86994 "Overige paramedische zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige paramedische zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other paramedical care"
* #86999 "Overige gezondheidszorg zonder verblijf, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gezondheidszorg zonder verblijf, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other health care without overnight stay n.e.c."
* #87100 "Verpleeghuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleeghuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential nursing care activities"
* #87201 "Verstandelijke gehandicaptenzorg met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verstandelijke gehandicaptenzorg met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care for persons with intellectual disabilities"
* #87202 "Verblijfszorg voor mensen met een langdurige geestelijke gezondheidszorgvraag of een middelenverslaving"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg voor mensen met een langdurige geestelijke gezondheidszorgvraag of een middelenverslaving"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care for persons with non-intellectual mental illness or substance abuse"
* #87301 "Lichamelijke en zintuiglijke gehandicaptenzorg met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Lichamelijke en zintuiglijke gehandicaptenzorg met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential physical and sensory disability care"
* #87302 "Verblijfszorg met persoonlijke verzorging en begeleiding voor ouderen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg met persoonlijke verzorging en begeleiding voor ouderen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care with personal care and assistance for the elderly"
* #87910 "Bemiddeling in de verblijfszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in de verblijfszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for residential care activities"
* #87991 "Jeugdzorg met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Jeugdzorg met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential youth care"
* #87992 "Maatschappelijke opvang met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maatschappelijke opvang met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential social care"
* #88101 "Huishoudelijke hulp voor ouderen en mensen met een handicap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Huishoudelijke hulp voor ouderen en mensen met een handicap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Home assistance services for elderly and persons with disabilities"
* #88102 "Ondersteuning en begeleiding ouderen (inclusief dagactiviteiten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteuning en begeleiding ouderen (inclusief dagactiviteiten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support and assistance for elderly people (including day time activities)"
* #88103 "Ondersteuning en begeleiding mensen met een handicap (inclusief dagactiviteiten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteuning en begeleiding mensen met een handicap (inclusief dagactiviteiten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support and assistance for people with disabilities (including day time activities)"
* #88910 "Kinderopvang"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kinderopvang"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Child day-care activities"
* #88991 "Ondersteuning en begeleiding jeugdigen zonder verblijf (inclusief dagactiviteiten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteuning en begeleiding jeugdigen zonder verblijf (inclusief dagactiviteiten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support and asistance for young people without overnight stay (including day time activities)"
* #88992 "Sociaal-maatschappelijk welzijnswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sociaal-maatschappelijk welzijnswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Social welfare work"
* #88999 "Overige welzijnszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige welzijnszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other social work activities without accommodation n.e.c. (rest)"