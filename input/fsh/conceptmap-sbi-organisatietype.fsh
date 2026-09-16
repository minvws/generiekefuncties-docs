Instance: SBIToOrganisatieType
InstanceOf: ConceptMap
Usage: #definition
* id = "sbi-to-organisatietype"
* url = "http://minvws.github.io/generiekefuncties-docs/ConceptMap/sbi-to-organisatietype"
* name = "SBIToOrganisatieType"
* title = "SBI to OrganisatieType"
* description = "Concept map relating health-sector Standaard Bedrijfsindeling (SBI 2025) activity codes to the Dutch OrganisatieTypeCodelijst (organization-type) codes. Only SBI codes that have a clear OrganisatieType equivalent are included."
* status = #active
* experimental = true
* sourceUri = "http://minvws.github.io/generiekefuncties-docs/ValueSet/nl-gf-org-types-vs"
* targetUri = "http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.40.2.17.2.3--20200901000000"
* group[+].source = "https://www.cbs.nl/standaard-bedrijfsindeling"
* group[=].target = "http://nictiz.nl/fhir/NamingSystem/organization-type"

// Hospital activities -> Ziekenhuis
* group[=].element[+].code = #8610
* group[=].element[=].display = "Hospital activities"
* group[=].element[=].target[+].code = #V4
* group[=].element[=].target[=].display = "Ziekenhuis"
* group[=].element[=].target[=].equivalence = #equivalent

// Operation of University Medical Centres -> Universitair Medisch Centrum
* group[=].element[+].code = #86101
* group[=].element[=].display = "Operation of University Medical Centres"
* group[=].element[=].target[+].code = #V5
* group[=].element[=].target[=].display = "Universitair Medisch Centrum"
* group[=].element[=].target[=].equivalence = #equivalent

// General hospital care -> Algemeen ziekenhuis
* group[=].element[+].code = #86102
* group[=].element[=].display = "General hospital care"
* group[=].element[=].target[+].code = #V6
* group[=].element[=].target[=].display = "Algemeen ziekenhuis"
* group[=].element[=].target[=].equivalence = #equivalent

// Other hospital care -> Brandwondencentrum / Zelfstandig opererende ziekenhuisapotheek
* group[=].element[+].code = #86103
* group[=].element[=].display = "Other hospital care"
* group[=].element[=].target[+].code = #BRA
* group[=].element[=].target[=].display = "Brandwondencentrum"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Brandwondencentrum is a specific subtype within the broader SBI category 'Other hospital care'."
* group[=].element[=].target[+].code = #K9
* group[=].element[=].target[=].display = "Zelfstandig opererende ziekenhuisapotheek"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Zelfstandig opererende ziekenhuisapotheek covers only part of the broader SBI category 'Other hospital care'."

// Curative mental health care with overnight stay -> Geestelijke Gezondheidszorg
* group[=].element[+].code = #86104
* group[=].element[=].display = "Curative mental health care with overnight stay (not activities of addiction clinics)"
* group[=].element[=].target[+].code = #G5
* group[=].element[=].target[=].display = "Geestelijke Gezondheidszorg"
* group[=].element[=].target[=].equivalence = #wider

// General medical practice activities -> Huisartspraktijk
* group[=].element[+].code = #8621
* group[=].element[=].display = "General medical practice activities"
* group[=].element[=].target[+].code = #Z3
* group[=].element[=].target[=].display = "Huisartspraktijk (zelfstandig of groepspraktijk)"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #H1
* group[=].element[=].target[=].display = "Huisartsinstelling"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #K3
* group[=].element[=].target[=].display = "Apotheekhoudende huisartspraktijk"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Apotheekhoudende huisartspraktijk is a specialized subset of general medical practice activities."
* group[=].element[=].target[+].code = #N6
* group[=].element[=].target[=].display = "Huisartsenpost (t.b.v. dienstwaarneming)"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Huisartsenpost represents out-of-hours service delivery and is narrower than the full SBI category for general practice."

// Specialised medical care without overnight stay -> Zelfstandig behandelcentrum
* group[=].element[+].code = #86221
* group[=].element[=].display = "Specialised medical care without overnight stay (not psychiatric care)"
* group[=].element[=].target[+].code = #Z4
* group[=].element[=].target[=].display = "Zelfstandig behandelcentrum"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #P4
* group[=].element[=].target[=].display = "Polikliniek (als onderdeel van een ziekenhuis)"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Polikliniek as part of a hospital is one organizational form within broader specialised outpatient medical care."
* group[=].element[=].target[+].code = #DIA
* group[=].element[=].target[=].display = "Dialysecentrum"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Dialysecentrum covers a specific clinical service and is narrower than the full SBI class for specialised outpatient care."

// Psychiatric care -> Geestelijke Gezondheidszorg
* group[=].element[+].code = #86222
* group[=].element[=].display = "Psychiatric care"
* group[=].element[=].target[+].code = #G5
* group[=].element[=].target[=].display = "Geestelijke Gezondheidszorg"
* group[=].element[=].target[=].equivalence = #wider

// Diagnostic imaging services and medical laboratory activities -> Diagnostisch centrum / Laboratorium
* group[=].element[+].code = #86910
* group[=].element[=].display = "Diagnostic imaging services and medical laboratory activities"
* group[=].element[=].target[+].code = #Z5
* group[=].element[=].target[=].display = "Diagnostisch centrum"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #L1
* group[=].element[=].target[=].display = "Laboratorium"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Laboratorium represents one specific service type within the broader SBI category that also includes diagnostic imaging."
* group[=].element[=].target[+].code = #B2
* group[=].element[=].target[=].display = "Echocentrum"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Echocentrum is a specific diagnostic service and therefore narrower than the combined SBI category."

// Activities of psychologists and psychotherapists -> Geestelijke Gezondheidszorg
* group[=].element[+].code = #86930
* group[=].element[=].display = "Activities of psychologists and psychotherapists, except medical doctors"
* group[=].element[=].target[+].code = #G5
* group[=].element[=].target[=].display = "Geestelijke Gezondheidszorg"
* group[=].element[=].target[=].equivalence = #wider

// Activities of midwifes -> Verloskundigenpraktijk
* group[=].element[+].code = #86941
* group[=].element[=].display = "Activities of midwifes"
* group[=].element[=].target[+].code = #G3
* group[=].element[=].target[=].display = "Verloskundigenpraktijk"
* group[=].element[=].target[=].equivalence = #equivalent

// Nursing and personal care at home and maternity care -> Thuiszorg / Kraamzorg
* group[=].element[+].code = #86942
* group[=].element[=].display = "Nursing and personal care at home and maternity care"
* group[=].element[=].target[+].code = #T2
* group[=].element[=].target[=].display = "Thuiszorg"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #K4
* group[=].element[=].target[=].display = "Kraamzorg"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Kraamzorg is one component of this SBI category, which also includes broader home nursing and personal care."

// Preventive care -> Preventieve gezondheidszorg
* group[=].element[+].code = #86992
* group[=].element[=].display = "Preventive care"
* group[=].element[=].target[+].code = #P6
* group[=].element[=].target[=].display = "Preventieve gezondheidszorg"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #JGZ
* group[=].element[=].target[=].display = "Jeugdgezondheidszorg"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Jeugdgezondheidszorg is a specific subdomain of preventive care and does not cover all preventive activities in SBI 86992."

// Other health care without overnight stay n.e.c. -> Revalidatiecentrum
* group[=].element[+].code = #86999
* group[=].element[=].display = "Other health care without overnight stay n.e.c."
* group[=].element[=].target[+].code = #R8
* group[=].element[=].target[=].display = "Revalidatiecentrum"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Revalidatiecentrum is a specific organization type within the broader residual SBI category for other outpatient health care."

// Residential nursing care activities -> Verpleeghuis
* group[=].element[+].code = #8710
* group[=].element[=].display = "Residential nursing care activities"
* group[=].element[=].target[+].code = #R5
* group[=].element[=].target[=].display = "Verpleeghuis"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #H2
* group[=].element[=].target[=].display = "Hospice"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Hospice is a specialized care setting and therefore narrower than the full SBI category for residential nursing care."

// Residential care for persons with intellectual disabilities -> Verstandelijk gehandicaptenzorg
* group[=].element[+].code = #87201
* group[=].element[=].display = "Residential care for persons with intellectual disabilities"
* group[=].element[=].target[+].code = #G6
* group[=].element[=].target[=].display = "Verstandelijk gehandicaptenzorg"
* group[=].element[=].target[=].equivalence = #equivalent

// Residential care for persons with non-intellectual mental illness or substance abuse -> Geestelijke Gezondheidszorg
* group[=].element[+].code = #87202
* group[=].element[=].display = "Residential care for persons with non-intellectual mental illness or substance abuse"
* group[=].element[=].target[+].code = #G5
* group[=].element[=].target[=].display = "Geestelijke Gezondheidszorg"
* group[=].element[=].target[=].equivalence = #wider

// Residential physical and sensory disability care -> Verplegings- of verzorgingsinstelling
* group[=].element[+].code = #87301
* group[=].element[=].display = "Residential physical and sensory disability care"
* group[=].element[=].target[+].code = #X3
* group[=].element[=].target[=].display = "Verplegings- of verzorgingsinstelling"
* group[=].element[=].target[=].equivalence = #wider

// Residential care with personal care and assistance for the elderly -> Verzorgingstehuis
* group[=].element[+].code = #87302
* group[=].element[=].display = "Residential care with personal care and assistance for the elderly"
* group[=].element[=].target[+].code = #M1
* group[=].element[=].target[=].display = "Verzorgingstehuis"
* group[=].element[=].target[=].equivalence = #equivalent

// Retail sale of pharmaceutical products -> Openbare apotheek / Apotheekinstelling
* group[=].element[+].code = #47730
* group[=].element[=].display = "Retail sale of pharmaceutical products"
* group[=].element[=].target[+].code = #J8
* group[=].element[=].target[=].display = "Openbare apotheek"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #A1
* group[=].element[=].target[=].display = "Apotheekinstelling"
* group[=].element[=].target[=].equivalence = #wider
