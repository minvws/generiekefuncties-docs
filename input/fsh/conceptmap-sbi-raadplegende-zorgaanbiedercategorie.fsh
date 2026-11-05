Instance: SBIToRaadplegendeZorgaanbiedercategorie
InstanceOf: ConceptMap
Usage: #definition
* id = "sbi-to-raadplegende-zorgaanbiedercategorie"
* url = "http://fhir.generiekefuncties.nl/ConceptMap/sbi-to-raadplegende-zorgaanbiedercategorie"
* name = "SBIToRaadplegendeZorgaanbiedercategorie"
* title = "SBI to Raadplegende Zorgaanbiedercategorie"
* description = "Concept map relating health-sector Standaard Bedrijfsindeling (SBI 2025) codes (4773, 86, 87 and 88) to the Mitz raadplegende zorgaanbiedercategorieën (categories of healthcare providers consulting the patient record), as listed with their zorgaanbiedertypes in [Bijlage Raadplegende zorgaanbiedercategorieën](https://vzvz.atlassian.net/wiki/spaces/MA11/pages/828314733/Bijlage+Raadplegende+zorgaanbiedercategorie+n). The merged categories RPZAC101 and RPZAC102 are mapped as well, as they comprise several of the other categories. Equivalence `wider` (or `equivalent`) means that all healthcare provider activities of the SBI code fall within the category; `narrower` and `inexact` mean that only part of the SBI code belongs to the category, as described in the comment; `unmatched` means that no category applies. SBI group codes are mapped to the categories of their subclasses."
* status = #active
* experimental = true
* sourceUri = "http://fhir.generiekefuncties.nl/ValueSet/nl-gf-org-types-vs"
* group[+].source = "https://www.cbs.nl/standaard-bedrijfsindeling"
* group[=].target = "http://fhir.nl/otv/CodeSystem/raadplegende-zorgaanbiedercategorie"

// 4773 Retail sale of pharmaceutical products
* group[=].element[+].code = #4773
* group[=].element[=].display = "Retail sale of pharmaceutical products"
* group[=].element[=].target[+].code = #RPZAC005
* group[=].element[=].target[=].display = "Apotheken"
* group[=].element[=].target[=].equivalence = #equivalent

// 47730 Retail sale of pharmaceutical products
* group[=].element[+].code = #47730
* group[=].element[=].display = "Retail sale of pharmaceutical products"
* group[=].element[=].target[+].code = #RPZAC005
* group[=].element[=].target[=].display = "Apotheken"
* group[=].element[=].target[=].equivalence = #equivalent

// 86 Human health activities
* group[=].element[+].code = #86
* group[=].element[=].display = "Human health activities"
* group[=].element[=].target[+].code = #RPZAC001
* group[=].element[=].target[=].display = "Huisartsen en huisartsenposten"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Applies only to SBI code 86210 within this group."
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86101, 86102, 86103, 86910, 86920 and 86941, and to part of SBI codes 86221 and 86999, within this group."
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86942 and 86943 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86104, 86222 and 86930 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86230, 86950, 86960, 86992, 86993 and 86994, and to part of SBI codes 86221 and 86999, within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86101, 86102, 86103, 86104, 86210, 86222, 86910, 86920, 86930 and 86941, and to part of SBI codes 86221 and 86999, within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86101, 86102, 86103, 86104, 86210, 86222, 86910, 86920, 86930, 86941, 86942 and 86943, and to part of SBI codes 86221 and 86999, within this group."

// 861 Hospital activities
* group[=].element[+].code = #861
* group[=].element[=].display = "Hospital activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86101, 86102 and 86103 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86104 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8610 Hospital activities
* group[=].element[+].code = #8610
* group[=].element[=].display = "Hospital activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86101, 86102 and 86103 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86104 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86101 Operation of University Medical Centres
* group[=].element[+].code = #86101
* group[=].element[=].display = "Operation of University Medical Centres"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86102 General hospital care
* group[=].element[+].code = #86102
* group[=].element[=].display = "General hospital care"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86103 Other hospital care
* group[=].element[+].code = #86103
* group[=].element[=].display = "Other hospital care"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86104 Curative mental health care with overnight stay (not activities of addiction clinics)
* group[=].element[+].code = #86104
* group[=].element[=].display = "Curative mental health care with overnight stay (not activities of addiction clinics)"
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 862 Medical and dental practice activities
* group[=].element[+].code = #862
* group[=].element[=].display = "Medical and dental practice activities"
* group[=].element[=].target[+].code = #RPZAC001
* group[=].element[=].target[=].display = "Huisartsen en huisartsenposten"
* group[=].element[=].target[=].equivalence = #narrower
* group[=].element[=].target[=].comment = "Applies only to SBI code 86210 within this group."
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 86221 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86222 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86230, and to part of SBI code 86221, within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86210 and 86222, and to part of SBI code 86221, within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86210 and 86222, and to part of SBI code 86221, within this group."

// 8621 General medical practice activities
* group[=].element[+].code = #8621
* group[=].element[=].display = "General medical practice activities"
* group[=].element[=].target[+].code = #RPZAC001
* group[=].element[=].target[=].display = "Huisartsen en huisartsenposten"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86210 General medical practice activities
* group[=].element[+].code = #86210
* group[=].element[=].display = "General medical practice activities"
* group[=].element[=].target[+].code = #RPZAC001
* group[=].element[=].target[=].display = "Huisartsen en huisartsenposten"
* group[=].element[=].target[=].equivalence = #equivalent
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8622 Medical specialists activities
* group[=].element[+].code = #8622
* group[=].element[=].display = "Medical specialists activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 86221 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86222 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 86221 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86222, and to part of SBI code 86221, within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86222, and to part of SBI code 86221, within this group."

// 86221 Specialised medical care without overnight stay (not psychiatric care)
* group[=].element[+].code = #86221
* group[=].element[=].display = "Specialised medical care without overnight stay (not psychiatric care)"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to medical specialist care without overnight stay, such as independent treatment centres (zelfstandige behandelcentra), outpatient clinics, dialysis, radiotherapy, thrombosis services, abortion clinics and audiological and sports medicine centres; medical analysis and interpretation of diagnostic imaging (zorgaanbiedertype B1 'Beeldvormende diagnostiek')."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to baby and toddler care at consultatiebureaus (jeugdgezondheidszorg) and infectious disease control including vaccinations (e.g. GGD)."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to medical specialist care without overnight stay, such as independent treatment centres (zelfstandige behandelcentra), outpatient clinics, dialysis, radiotherapy, thrombosis services, abortion clinics and audiological and sports medicine centres; medical analysis and interpretation of diagnostic imaging (zorgaanbiedertype B1 'Beeldvormende diagnostiek')."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to medical specialist care without overnight stay, such as independent treatment centres (zelfstandige behandelcentra), outpatient clinics, dialysis, radiotherapy, thrombosis services, abortion clinics and audiological and sports medicine centres; medical analysis and interpretation of diagnostic imaging (zorgaanbiedertype B1 'Beeldvormende diagnostiek')."

// 86222 Psychiatric care
* group[=].element[+].code = #86222
* group[=].element[=].display = "Psychiatric care"
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8623 Dental practice care activities
* group[=].element[+].code = #8623
* group[=].element[=].display = "Dental practice care activities"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 86230 Dental practice care activities
* group[=].element[+].code = #86230
* group[=].element[=].display = "Dental practice care activities"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 869 Other human health activities
* group[=].element[+].code = #869
* group[=].element[=].display = "Other human health activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86910, 86920 and 86941, and to part of SBI code 86999, within this group."
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86942 and 86943 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86930 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86950, 86960, 86992, 86993 and 86994, and to part of SBI code 86999, within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86910, 86920, 86930 and 86941, and to part of SBI code 86999, within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86910, 86920, 86930, 86941, 86942 and 86943, and to part of SBI code 86999, within this group."

// 8691 Diagnostic imaging services and medical laboratory activities
* group[=].element[+].code = #8691
* group[=].element[=].display = "Diagnostic imaging services and medical laboratory activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86910 Diagnostic imaging services and medical laboratory activities
* group[=].element[+].code = #86910
* group[=].element[=].display = "Diagnostic imaging services and medical laboratory activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8692 Patient transportation by ambulance
* group[=].element[+].code = #8692
* group[=].element[=].display = "Patient transportation by ambulance"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86920 Patient transportation by ambulance
* group[=].element[+].code = #86920
* group[=].element[=].display = "Patient transportation by ambulance"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8693 Activities of psychologists and psychotherapists, except medical doctors
* group[=].element[+].code = #8693
* group[=].element[=].display = "Activities of psychologists and psychotherapists, except medical doctors"
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86930 Activities of psychologists and psychotherapists, except medical doctors
* group[=].element[+].code = #86930
* group[=].element[=].display = "Activities of psychologists and psychotherapists, except medical doctors"
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8694 Nursing and midwifery activities
* group[=].element[+].code = #8694
* group[=].element[=].display = "Nursing and midwifery activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86941 within this group."
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86942 and 86943 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 86941 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86941 Activities of midwifes
* group[=].element[+].code = #86941
* group[=].element[=].display = "Activities of midwifes"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86942 Nursing and personal care at home and maternity care
* group[=].element[+].code = #86942
* group[=].element[=].display = "Nursing and personal care at home and maternity care"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 86943 Other Nursing and personal care
* group[=].element[+].code = #86943
* group[=].element[=].display = "Other Nursing and personal care"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8695 Physiotherapy activities
* group[=].element[+].code = #8695
* group[=].element[=].display = "Physiotherapy activities"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 86950 Physiotherapy activities
* group[=].element[+].code = #86950
* group[=].element[=].display = "Physiotherapy activities"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 8696 Traditional, complementary and alternative medicine activities
* group[=].element[+].code = #8696
* group[=].element[=].display = "Traditional, complementary and alternative medicine activities"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 86960 Traditional, complementary and alternative medicine activities
* group[=].element[+].code = #86960
* group[=].element[=].display = "Traditional, complementary and alternative medicine activities"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 8697 Intermediation service activities for medical, dental and other human health services
* group[=].element[+].code = #8697
* group[=].element[=].display = "Intermediation service activities for medical, dental and other human health services"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Intermediation services do not deliver care themselves and do not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 86970 Intermediation service activities for medical, dental and other human health services
* group[=].element[+].code = #86970
* group[=].element[=].display = "Intermediation service activities for medical, dental and other human health services"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Intermediation services do not deliver care themselves and do not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 8699 Other human health activities n.e.c.
* group[=].element[+].code = #8699
* group[=].element[=].display = "Other human health activities n.e.c."
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 86999 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 86992, 86993 and 86994, and to part of SBI code 86999, within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 86999 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 86999 within this group."

// 86991 Occupational health and safety service (including activities of independent occupational physicians)
* group[=].element[+].code = #86991
* group[=].element[=].display = "Occupational health and safety service (including activities of independent occupational physicians)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Occupational health services (arbodiensten, bedrijfsartsen) do not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 86992 Preventive care
* group[=].element[+].code = #86992
* group[=].element[=].display = "Preventive care"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 86993 Other oral health care
* group[=].element[+].code = #86993
* group[=].element[=].display = "Other oral health care"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 86994 Other paramedical care
* group[=].element[+].code = #86994
* group[=].element[=].display = "Other paramedical care"
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #wider

// 86999 Other health care without overnight stay n.e.c.
* group[=].element[+].code = #86999
* group[=].element[=].display = "Other health care without overnight stay n.e.c."
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to blood, sperm, tissue and organ banks (zorgaanbiedertypes Z10 'Bloedbank' and Z26 'Transplantatie organisatie')."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to cooperatives that support general practitioners or facilitate chain care (zorgaanbiedertype ZG 'Zorggroep')."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to blood, sperm, tissue and organ banks (zorgaanbiedertypes Z10 'Bloedbank' and Z26 'Transplantatie organisatie')."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to blood, sperm, tissue and organ banks (zorgaanbiedertypes Z10 'Bloedbank' and Z26 'Transplantatie organisatie')."

// 87 Residential care activities
* group[=].element[+].code = #87
* group[=].element[=].display = "Residential care activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991 within this group."
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 87100, 87201, 87301 and 87302 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991, and to part of SBI code 87202, within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI codes 87100, 87201, 87301, 87302 and 87991, and to part of SBI code 87202, within this group."

// 871 Residential nursing care activities
* group[=].element[+].code = #871
* group[=].element[=].display = "Residential nursing care activities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8710 Residential nursing care activities
* group[=].element[+].code = #8710
* group[=].element[=].display = "Residential nursing care activities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 87100 Residential nursing care activities
* group[=].element[+].code = #87100
* group[=].element[=].display = "Residential nursing care activities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 872 Residential care activities for persons living with or having a diagnosis of a mental illness or substance abuse
* group[=].element[+].code = #872
* group[=].element[=].display = "Residential care activities for persons living with or having a diagnosis of a mental illness or substance abuse"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87201 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87201, and to part of SBI code 87202, within this group."

// 8720 Residential care activities for persons living with or having a diagnosis of a mental illness or substance abuse
* group[=].element[+].code = #8720
* group[=].element[=].display = "Residential care activities for persons living with or having a diagnosis of a mental illness or substance abuse"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87201 within this group."
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 87202 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87201, and to part of SBI code 87202, within this group."

// 87201 Residential care for persons with intellectual disabilities
* group[=].element[+].code = #87201
* group[=].element[=].display = "Residential care for persons with intellectual disabilities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 87202 Residential care for persons with non-intellectual mental illness or substance abuse
* group[=].element[+].code = #87202
* group[=].element[=].display = "Residential care for persons with non-intellectual mental illness or substance abuse"
* group[=].element[=].target[+].code = #RPZAC003
* group[=].element[=].target[=].display = "Geestelijke gezondheidszorg (GGZ)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to sheltered housing (beschermd wonen) and long-term mental health care with stay, including forensic psychiatric centres (zorgaanbiedertype G5 'Geestelijke gezondheidszorg (GGZ)')."
* group[=].element[=].target[+].code = #RPZAC103
* group[=].element[=].target[=].display = "Overige zorg (tandartsen, paramedici, jeugdgezondheidszorg)"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to addiction clinics (zorgaanbiedertype G1 'Verslavingszorg')."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to sheltered housing (beschermd wonen) and long-term mental health care with stay, including forensic psychiatric centres (zorgaanbiedertype G5 'Geestelijke gezondheidszorg (GGZ)')."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to sheltered housing (beschermd wonen) and long-term mental health care with stay, including forensic psychiatric centres (zorgaanbiedertype G5 'Geestelijke gezondheidszorg (GGZ)')."

// 873 Residential care activities for older persons or persons with physical disabilities
* group[=].element[+].code = #873
* group[=].element[=].display = "Residential care activities for older persons or persons with physical disabilities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 8730 Residential care activities for older persons or persons with physical disabilities
* group[=].element[+].code = #8730
* group[=].element[=].display = "Residential care activities for older persons or persons with physical disabilities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 87301 Residential physical and sensory disability care
* group[=].element[+].code = #87301
* group[=].element[=].display = "Residential physical and sensory disability care"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 87302 Residential care with personal care and assistance for the elderly
* group[=].element[+].code = #87302
* group[=].element[=].display = "Residential care with personal care and assistance for the elderly"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 879 Other residential care activities
* group[=].element[+].code = #879
* group[=].element[=].display = "Other residential care activities"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991 within this group."

// 8791 Intermediation service activities for residential care activities
* group[=].element[+].code = #8791
* group[=].element[=].display = "Intermediation service activities for residential care activities"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Intermediation services do not deliver care themselves and do not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 87910 Intermediation service activities for residential care activities
* group[=].element[+].code = #87910
* group[=].element[=].display = "Intermediation service activities for residential care activities"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Intermediation services do not deliver care themselves and do not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 8799 Other residential care activities n.e.c.
* group[=].element[+].code = #8799
* group[=].element[=].display = "Other residential care activities n.e.c."
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 87991 within this group."

// 87991 Residential youth care
* group[=].element[+].code = #87991
* group[=].element[=].display = "Residential youth care"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 87992 Residential social care
* group[=].element[+].code = #87992
* group[=].element[=].display = "Residential social care"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Social shelter (maatschappelijke opvang) does not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 88 Social work activities without accommodation
* group[=].element[+].code = #88
* group[=].element[=].display = "Social work activities without accommodation"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991 within this group."
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI codes 88103, 88910 and 88999 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991, and to part of SBI codes 88103, 88910 and 88999, within this group."

// 881 Social work activities without accommodation for older persons or persons with disabilities
* group[=].element[+].code = #881
* group[=].element[=].display = "Social work activities without accommodation for older persons or persons with disabilities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 88103 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 88103 within this group."

// 8810 Social work activities without accommodation for older persons or persons with disabilities
* group[=].element[+].code = #8810
* group[=].element[=].display = "Social work activities without accommodation for older persons or persons with disabilities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 88103 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 88103 within this group."

// 88101 Home assistance services for elderly and persons with disabilities
* group[=].element[+].code = #88101
* group[=].element[=].display = "Home assistance services for elderly and persons with disabilities"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Domestic help (huishoudelijke hulp) does not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 88102 Support and assistance for elderly people (including day time activities)
* group[=].element[+].code = #88102
* group[=].element[=].display = "Support and assistance for elderly people (including day time activities)"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Social support and day activities for the elderly do not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 88103 Support and assistance for people with disabilities (including day time activities)
* group[=].element[+].code = #88103
* group[=].element[=].display = "Support and assistance for people with disabilities (including day time activities)"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to providers of care for people with disabilities (zorgaanbiedertype IN15 'Zorg voor mensen met een beperking')."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to providers of care for people with disabilities (zorgaanbiedertype IN15 'Zorg voor mensen met een beperking')."

// 889 Other social work activities without accommodation
* group[=].element[+].code = #889
* group[=].element[=].display = "Other social work activities without accommodation"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991 within this group."
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI codes 88910 and 88999 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991, and to part of SBI codes 88910 and 88999, within this group."

// 8891 Child day-care activities
* group[=].element[+].code = #8891
* group[=].element[=].display = "Child day-care activities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 88910 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 88910 within this group."

// 88910 Child day-care activities
* group[=].element[+].code = #88910
* group[=].element[=].display = "Child day-care activities"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to medical day-care centres for children (zorgaanbiedertype IN7 'Verpleegkundig kinderdagverblijf')."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to medical day-care centres for children (zorgaanbiedertype IN7 'Verpleegkundig kinderdagverblijf')."

// 8899 Other social work activities without accommodation n.e.c.
* group[=].element[+].code = #8899
* group[=].element[=].display = "Other social work activities without accommodation n.e.c."
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991 within this group."
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to part of SBI code 88999 within this group."
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991 within this group."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to SBI code 88991, and to part of SBI code 88999, within this group."

// 88991 Support and asistance for young people without overnight stay (including day time activities)
* group[=].element[+].code = #88991
* group[=].element[=].display = "Support and asistance for young people without overnight stay (including day time activities)"
* group[=].element[=].target[+].code = #RPZAC104
* group[=].element[=].target[=].display = "Ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC101
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #wider

// 88992 Social welfare work
* group[=].element[+].code = #88992
* group[=].element[=].display = "Social welfare work"
* group[=].element[=].target[+].equivalence = #unmatched
* group[=].element[=].target[=].comment = "Social welfare work does not correspond to a zorgaanbiedertype in the Mitz zorgaanbiedercategorieën."

// 88999 Other social work activities without accommodation n.e.c. (rest)
* group[=].element[+].code = #88999
* group[=].element[=].display = "Other social work activities without accommodation n.e.c. (rest)"
* group[=].element[=].target[+].code = #RPZAC004
* group[=].element[=].target[=].display = "Verpleging en verzorging"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to care by self-employed care assistants (helpenden en zorghulpen) working in home care, hospitals or residential care institutions."
* group[=].element[=].target[+].code = #RPZAC102
* group[=].element[=].target[=].display = "Huisartsen, huisartsenposten, ziekenhuizen, gespecialiseerde klinieken, ambulancezorg, geestelijke gezondheidszorg (GGZ), verpleging en verzorging, laboratoria en diagnostische centra"
* group[=].element[=].target[=].equivalence = #inexact
* group[=].element[=].target[=].comment = "Applies only to care by self-employed care assistants (helpenden en zorghulpen) working in home care, hospitals or residential care institutions."
