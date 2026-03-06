CodeSystem: NlGfSBICS
Id: nl-gf-sbi-cs
Title: "NL GF Standaard Bedrijfsindeling 2025"
Description: "Standaard Bedrijfsindeling (SBI) 2025 codes. Based on the Dutch SBI 2025 classification system, which is used to classify business activities in the Netherlands. The codes and descriptions are derived from the official SBI 2025 documentation provided by the Dutch government."
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-sbi-2025-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^property[+].code = #parent
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#parent"
* ^property[=].description = "Parent concept code in the SBI hierarchy."
* ^property[=].type = #code
* #A "LANDBOUW, BOSBOUW EN VISSERIJ"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "LANDBOUW, BOSBOUW EN VISSERIJ"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "AGRICULTURE, FORESTRY AND FISHING"
* #01 "Landbouw, jacht en dienstverlening voor de landbouw en jacht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Landbouw, jacht en dienstverlening voor de landbouw en jacht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Crop and animal production, hunting and related service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #A
* #011 "Teelt van eenjarige gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van eenjarige gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of non-perennial crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #01
* #0111 "Teelt van andere granen dan rijst, en van peulgewassen en oliehoudende zaden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van andere granen dan rijst, en van peulgewassen en oliehoudende zaden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of cereals, other than rice, leguminous crops and oil seeds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #011
* #01110 "Teelt van andere granen dan rijst, en van peulgewassen en oliehoudende zaden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van andere granen dan rijst, en van peulgewassen en oliehoudende zaden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of cereals, other than rice, leguminous crops and oil seeds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0111
* #0112 "Teelt van rijst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van rijst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of rice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #011
* #01120 "Teelt van rijst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van rijst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of rice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0112
* #0113 "Teelt van groenten, meloenen en wortel- en knolgewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van groenten, meloenen en wortel- en knolgewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of vegetables and melons, roots and tubers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #011
* #01131 "Teelt van groenten in de volle grond"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van groenten in de volle grond"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of open-field vegetables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0113
* #01132 "Teelt van groenten onder glas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van groenten onder glas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of vegetables in greenhouses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0113
* #01133 "Teelt van paddenstoelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van paddenstoelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of mushrooms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0113
* #01134 "Teelt van aardappelen en overige wortel- en knolgewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van aardappelen en overige wortel- en knolgewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of potatoes and other roots and tubers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0113
* #0114 "Teelt van suikerriet"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van suikerriet"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of sugar cane"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #011
* #01140 "Teelt van suikerriet"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van suikerriet"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of sugar cane"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0114
* #0115 "Teelt van tabak"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van tabak"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #011
* #01150 "Teelt van tabak"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van tabak"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0115
* #0116 "Teelt van vezelgewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van vezelgewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of fibre crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #011
* #01160 "Teelt van vezelgewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van vezelgewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of fibre crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0116
* #0119 "Teelt van overige eenjarige gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van overige eenjarige gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of other non-perennial crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #011
* #01191 "Teelt van snijbloemen en snijheesters in de volle grond"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van snijbloemen en snijheesters in de volle grond"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of cut flowers and shrubs in open fields"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0119
* #01192 "Teelt van snijbloemen en snijheesters onder glas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van snijbloemen en snijheesters onder glas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of cut flowers and shrubs in greenhouses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0119
* #01193 "Teelt van voedergewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van voedergewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of fodder crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0119
* #01199 "Teelt van overige eenjarige gewassen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van overige eenjarige gewassen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of other non-perennial crops (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0119
* #012 "Teelt van meerjarige gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van meerjarige gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of perennial crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #01
* #0121 "Teelt van druiven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van druiven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of grapes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01210 "Teelt van druiven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van druiven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of grapes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0121
* #0122 "Teelt van tropisch en subtropisch fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van tropisch en subtropisch fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of tropical and subtropical fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01220 "Teelt van tropisch en subtropisch fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van tropisch en subtropisch fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of tropical and subtropical fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0122
* #0123 "Teelt van citrusvruchten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van citrusvruchten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of citrus fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01230 "Teelt van citrusvruchten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van citrusvruchten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of citrus fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0123
* #0124 "Teelt van appels, peren, pruimen, kersen en overige pit- en steenvruchten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van appels, peren, pruimen, kersen en overige pit- en steenvruchten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of pome fruits and stone fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01241 "Teelt van appels en peren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van appels en peren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of apples and pears"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0124
* #01242 "Teelt van steenvruchten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van steenvruchten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of stone fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0124
* #0125 "Teelt van overige boomvruchten, kleinfruit en noten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van overige boomvruchten, kleinfruit en noten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of other tree and bush fruits and nuts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01251 "Teelt van aardbeien in de volle grond"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van aardbeien in de volle grond"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of strawberries in open fields"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0125
* #01252 "Teelt van aardbeien onder glas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van aardbeien onder glas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of strawberries in greenhouses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0125
* #01253 "Teelt van houtig kleinfruit en noten in de volle grond"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van houtig kleinfruit en noten in de volle grond"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of other tree and bush fruits and nuts in open fields"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0125
* #01254 "Teelt van houtig kleinfruit onder glas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van houtig kleinfruit onder glas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of bush fruits in greenhouses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0125
* #0126 "Teelt van oliehoudende vruchten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van oliehoudende vruchten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of oleaginous fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01260 "Teelt van oliehoudende vruchten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van oliehoudende vruchten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of oleaginous fruits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0126
* #0127 "Teelt van gewassen bestemd voor de vervaardiging van dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van gewassen bestemd voor de vervaardiging van dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of beverage crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01270 "Teelt van gewassen bestemd voor de vervaardiging van dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van gewassen bestemd voor de vervaardiging van dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of beverage crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0127
* #0128 "Teelt van specerijgewassen en van aromatische en medicinale gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van specerijgewassen en van aromatische en medicinale gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of spices, aromatic, drug and pharmaceutical crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01280 "Teelt van specerijgewassen en van aromatische en medicinale gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van specerijgewassen en van aromatische en medicinale gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of spices, aromatic, drug and pharmaceutical crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0128
* #0129 "Teelt van overige meerjarige gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van overige meerjarige gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of other perennial crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #012
* #01290 "Teelt van overige meerjarige gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van overige meerjarige gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of other perennial crops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0129
* #013 "Plantenvermeerdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Plantenvermeerdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Plant propagation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #01
* #0130 "Plantenvermeerdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Plantenvermeerdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Plant propagation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #013
* #01301 "Teelt van bloembollen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van bloembollen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of flower bulbs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0130
* #01302 "Teelt van perkplanten in de volle grond"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van perkplanten in de volle grond"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of bedding plants in open fields"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0130
* #01303 "Teelt van perkplanten onder glas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van perkplanten onder glas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of bedding plants in greenhouses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0130
* #01304 "Teelt van potplanten onder glas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van potplanten onder glas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of pot plants in greenhouses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0130
* #01305 "Teelt van boomkwekerijgewassen in de volle grond"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van boomkwekerijgewassen in de volle grond"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of nursery crops in open fields"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0130
* #01309 "Teelt van overige sierplanten in de volle grond"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Teelt van overige sierplanten in de volle grond"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Growing of other ornamental plants in open fields"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0130
* #014 "Fokken en houden van dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Animal production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #01
* #0141 "Fokken en houden van melkvee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van melkvee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of dairy cattle"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01411 "Houden van melkvee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Houden van melkvee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Farming of dairy cattle"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0141
* #01412 "Opfokken van jong melkvee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opfokken van jong melkvee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of young dairy cattle"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0141
* #0142 "Fokken en houden van andere runderen en buffels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van andere runderen en buffels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of other cattle and buffaloes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01421 "Houden van vleeskalveren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Houden van vleeskalveren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Farming of beef calves for meat production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0142
* #01422 "Overige vleesveehouderij, inclusief houden van buffels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige vleesveehouderij, inclusief houden van buffels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other meat farming of cattle, including buffaloe farming"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0142
* #0143 "Fokken en houden van paarden en overige paardachtigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van paarden en overige paardachtigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of horses and other equines"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01430 "Fokken en houden van paarden en overige paardachtigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van paarden en overige paardachtigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of horses and other equines"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0143
* #0144 "Fokken en houden van kamelen en overige kameelachtigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van kamelen en overige kameelachtigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of camels and camelids"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01440 "Fokken en houden van kamelen en overige kameelachtigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van kamelen en overige kameelachtigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of camels and camelids"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0144
* #0145 "Fokken en houden van schapen en geiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van schapen en geiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of sheep and goats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01451 "Fokken en houden van schapen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van schapen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of sheep"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0145
* #01452 "Fokken en houden van geiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van geiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of goats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0145
* #0146 "Fokken en houden van varkens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van varkens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of swine and pigs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01461 "Fokken van varkens voor vermeerdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken van varkens voor vermeerdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of pigs for propagation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0146
* #01462 "Houden van varkens voor vleesproductie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Houden van varkens voor vleesproductie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Farming of pigs for meat production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0146
* #01463 "Activiteiten van (deels) gesloten varkensbedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van (deels) gesloten varkensbedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of (semi-)closed cycle pig farms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0146
* #0147 "Fokken en houden van pluimvee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van pluimvee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of poultry"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01471 "Opfokken en houden van leghennen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opfokken en houden van leghennen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of laying hens"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0147
* #01472 "Opfokken en houden van vleeskuikens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opfokken en houden van vleeskuikens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of broiler chickens"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0147
* #01473 "Opfokken en houden van ouderdieren kippen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opfokken en houden van ouderdieren kippen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of breeder chickens"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0147
* #01479 "Opfokken en houden van overig pluimvee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opfokken en houden van overig pluimvee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of other poultry"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0147
* #0148 "Fokken en houden van overige dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van overige dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of other animals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #014
* #01481 "Fokken en houden van edelpelsdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van edelpelsdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of fur-bearing animals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0148
* #01489 "Fokken en houden van overige dieren (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fokken en houden van overige dieren (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Raising of other animals (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0148
* #015 "Akker- en/of tuinbouw in combinatie met het fokken en houden van dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Akker- en/of tuinbouw in combinatie met het fokken en houden van dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mixed farming"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #01
* #0150 "Akker- en/of tuinbouw in combinatie met het fokken en houden van dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Akker- en/of tuinbouw in combinatie met het fokken en houden van dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mixed farming"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #015
* #01500 "Akker- en/of tuinbouw in combinatie met het fokken en houden van dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Akker- en/of tuinbouw in combinatie met het fokken en houden van dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mixed farming"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0150
* #016 "Dienstverlening voor de landbouw; behandeling van gewassen na de oogst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de landbouw; behandeling van gewassen na de oogst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities to agriculture and post-harvest crop activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #01
* #0161 "Dienstverlening voor de teelt van gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de teelt van gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for crop production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #016
* #01610 "Dienstverlening voor de teelt van gewassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de teelt van gewassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for crop production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0161
* #0162 "Dienstverlening voor het fokken en houden van dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor het fokken en houden van dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for animal production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #016
* #01620 "Dienstverlening voor het fokken en houden van dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor het fokken en houden van dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for animal production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0162
* #0163 "Behandeling van gewassen na de oogst en van zaden voor vermeerdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Behandeling van gewassen na de oogst en van zaden voor vermeerdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Post-harvest crop activities and seed processing for propagation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #016
* #01630 "Behandeling van gewassen na de oogst en van zaden voor vermeerdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Behandeling van gewassen na de oogst en van zaden voor vermeerdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Post-harvest crop activities and seed processing for propagation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0163
* #017 "Jacht en aanverwante diensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Jacht en aanverwante diensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hunting, trapping and related service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #01
* #0170 "Jacht en aanverwante diensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Jacht en aanverwante diensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hunting, trapping and related service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #017
* #01700 "Jacht en aanverwante diensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Jacht en aanverwante diensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hunting, trapping and related service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0170
* #02 "Bosbouw, exploitatie van bossen en dienstverlening voor de bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bosbouw, exploitatie van bossen en dienstverlening voor de bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Forestry and logging"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #A
* #021 "Bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Silviculture and other forestry activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #02
* #0210 "Bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Silviculture and other forestry activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #021
* #02100 "Bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Silviculture and other forestry activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0210
* #022 "Exploitatie van bossen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van bossen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Logging"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #02
* #0220 "Exploitatie van bossen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van bossen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Logging"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #022
* #02200 "Exploitatie van bossen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van bossen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Logging"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0220
* #023 "Verzamelen van in het wild groeiende producten met uitzondering van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verzamelen van in het wild groeiende producten met uitzondering van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Gathering of wild growing non-wood products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #02
* #0230 "Verzamelen van in het wild groeiende producten met uitzondering van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verzamelen van in het wild groeiende producten met uitzondering van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Gathering of wild growing non-wood products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #023
* #02300 "Verzamelen van in het wild groeiende producten met uitzondering van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verzamelen van in het wild groeiende producten met uitzondering van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Gathering of wild growing non-wood products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0230
* #024 "Dienstverlening voor de bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support services to forestry"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #02
* #0240 "Dienstverlening voor de bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support services to forestry"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #024
* #02400 "Dienstverlening voor de bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support services to forestry"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0240
* #03 "Visserij en aquacultuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Visserij en aquacultuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Fishing and aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #A
* #031 "Visserij"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Visserij"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Fishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #03
* #0311 "Zee- en kustvisserij"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zee- en kustvisserij"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Marine fishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #031
* #03110 "Zee- en kustvisserij"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zee- en kustvisserij"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Marine fishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0311
* #0312 "Binnenvisserij"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Binnenvisserij"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freshwater fishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #031
* #03120 "Binnenvisserij"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Binnenvisserij"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freshwater fishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0312
* #032 "Aquacultuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aquacultuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #03
* #0321 "Aquacultuur in zee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aquacultuur in zee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Marine aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #032
* #03210 "Aquacultuur in zee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aquacultuur in zee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Marine aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0321
* #0322 "Aquacultuur in zoet water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aquacultuur in zoet water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freshwater aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #032
* #03220 "Aquacultuur in zoet water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aquacultuur in zoet water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freshwater aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0322
* #033 "Ondersteunende activiteiten voor visserij en aquacultuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteunende activiteiten voor visserij en aquacultuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for fishing and aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #03
* #0330 "Ondersteunende activiteiten voor visserij en aquacultuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteunende activiteiten voor visserij en aquacultuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for fishing and aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #033
* #03300 "Ondersteunende activiteiten voor visserij en aquacultuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteunende activiteiten voor visserij en aquacultuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for fishing and aquaculture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0330
* #B "WINNING VAN DELFSTOFFEN"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "WINNING VAN DELFSTOFFEN"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "MINING AND QUARRYING"
* #05 "Winning van steenkool en bruinkool"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van steenkool en bruinkool"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of coal and lignite"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #B
* #051 "Winning van steenkool"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van steenkool"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of hard coal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #05
* #0510 "Winning van steenkool"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van steenkool"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of hard coal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #051
* #05100 "Winning van steenkool"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van steenkool"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of hard coal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0510
* #052 "Winning van bruinkool"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van bruinkool"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of lignite"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #05
* #0520 "Winning van bruinkool"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van bruinkool"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of lignite"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #052
* #05200 "Winning van bruinkool"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van bruinkool"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of lignite"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0520
* #06 "Winning van aardolie en aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van aardolie en aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of crude petroleum and natural gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #B
* #061 "Winning van aardolie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van aardolie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of crude petroleum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #06
* #0610 "Winning van aardolie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van aardolie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of crude petroleum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #061
* #06100 "Winning van aardolie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van aardolie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of crude petroleum"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0610
* #062 "Winning van aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of natural gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #06
* #0620 "Winning van aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of natural gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #062
* #06200 "Winning van aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of natural gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0620
* #07 "Winning van metaalertsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van metaalertsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of metal ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #B
* #071 "Winning van ijzererts"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van ijzererts"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of iron ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #07
* #0710 "Winning van ijzererts"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van ijzererts"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of iron ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #071
* #07100 "Winning van ijzererts"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van ijzererts"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of iron ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0710
* #072 "Winning van non-ferrometaalertsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van non-ferrometaalertsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of non-ferrous metal ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #07
* #0721 "Winning van uranium- en thoriumerts"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van uranium- en thoriumerts"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of uranium and thorium ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #072
* #07210 "Winning van uranium- en thoriumerts"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van uranium- en thoriumerts"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of uranium and thorium ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0721
* #0729 "Winning van overige non-ferrometaalertsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van overige non-ferrometaalertsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of other non-ferrous metal ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #072
* #07290 "Winning van overige non-ferrometaalertsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van overige non-ferrometaalertsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of other non-ferrous metal ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0729
* #08 "Overige winning van delfstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige winning van delfstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other mining and quarrying"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #B
* #081 "Winning van steen, zand en klei"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van steen, zand en klei"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Quarrying of stone, sand and clay"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #08
* #0811 "Winning van siersteen, kalksteen, gips, leisteen en overige steensoorten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van siersteen, kalksteen, gips, leisteen en overige steensoorten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Quarrying of ornamental stone, limestone, gypsum, slate and other stone"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #081
* #08110 "Winning van siersteen, kalksteen, gips, leisteen en overige steensoorten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van siersteen, kalksteen, gips, leisteen en overige steensoorten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Quarrying of ornamental stone, limestone, gypsum, slate and other stone"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0811
* #0812 "Winning van grind, zand, klei en kaolien"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van grind, zand, klei en kaolien"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of gravel and sand pits and mining of clay and kaolin"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #081
* #08120 "Winning van grind, zand, klei en kaolien"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van grind, zand, klei en kaolien"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of gravel and sand pits and mining of clay and kaolin"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0812
* #089 "Winning van delfstoffen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van delfstoffen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining and quarrying n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #08
* #0891 "Winning van mineralen voor de chemische en de kunstmestindustrie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van mineralen voor de chemische en de kunstmestindustrie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of chemical and fertiliser minerals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #089
* #08910 "Winning van mineralen voor de chemische en de kunstmestindustrie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van mineralen voor de chemische en de kunstmestindustrie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining of chemical and fertiliser minerals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0891
* #0892 "Winning van turf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van turf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of peat"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #089
* #08920 "Winning van turf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van turf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of peat"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0892
* #0893 "Winning van zout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van zout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of salt"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #089
* #08930 "Winning van zout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van zout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Extraction of salt"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0893
* #0899 "Overige winning van delfstoffen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige winning van delfstoffen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other mining and quarrying n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #089
* #08990 "Overige winning van delfstoffen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige winning van delfstoffen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other mining and quarrying n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0899
* #09 "Dienstverlening voor de winning van delfstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de winning van delfstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mining support service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #B
* #091 "Dienstverlening voor de winning van aardolie en aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de winning van aardolie en aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for petroleum and natural gas extraction"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #09
* #0910 "Dienstverlening voor de winning van aardolie en aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de winning van aardolie en aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for petroleum and natural gas extraction"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #091
* #09100 "Dienstverlening voor de winning van aardolie en aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de winning van aardolie en aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for petroleum and natural gas extraction"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0910
* #099 "Dienstverlening voor de winning van overige delfstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de winning van overige delfstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for other mining and quarrying"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #09
* #0990 "Dienstverlening voor de winning van overige delfstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de winning van overige delfstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for other mining and quarrying"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #099
* #09900 "Dienstverlening voor de winning van overige delfstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de winning van overige delfstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for other mining and quarrying"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #0990
* #C "INDUSTRIE"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "INDUSTRIE"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "MANUFACTURING"
* #10 "Vervaardiging van voedingsmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van voedingsmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of food products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #101 "Verwerking en conservering van vlees en vervaardiging van vleesproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vlees en vervaardiging van vleesproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of meat and production of meat products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1011 "Verwerking en conservering van vlees, met uitzondering van vlees van gevogelte"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vlees, met uitzondering van vlees van gevogelte"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of meat, except of poultry meat"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #101
* #10110 "Verwerking en conservering van vlees, met uitzondering van vlees van gevogelte"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vlees, met uitzondering van vlees van gevogelte"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of meat, except of poultry meat"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1011
* #1012 "Verwerking en conservering van vlees van gevogelte"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vlees van gevogelte"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of poultry meat"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #101
* #10120 "Verwerking en conservering van vlees van gevogelte"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vlees van gevogelte"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of poultry meat"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1012
* #1013 "Vervaardiging van vleesproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vleesproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of meat and poultry meat products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #101
* #10130 "Vervaardiging van vleesproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vleesproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of meat and poultry meat products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1013
* #102 "Verwerking en conservering van vis en van schaal- en weekdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vis en van schaal- en weekdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of fish, crustaceans and molluscs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1020 "Verwerking en conservering van vis en van schaal- en weekdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vis en van schaal- en weekdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of fish, crustaceans and molluscs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #102
* #10200 "Verwerking en conservering van vis en van schaal- en weekdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van vis en van schaal- en weekdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of fish, crustaceans and molluscs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1020
* #103 "Verwerking en conservering van aardappelen, groenten en fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van aardappelen, groenten en fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of fruit and vegetables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1031 "Verwerking en conservering van aardappelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van aardappelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of potatoes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #103
* #10310 "Verwerking en conservering van aardappelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en conservering van aardappelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and preserving of potatoes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1031
* #1032 "Vervaardiging van groente- en fruitsappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van groente- en fruitsappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fruit and vegetable juice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #103
* #10320 "Vervaardiging van groente- en fruitsappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van groente- en fruitsappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fruit and vegetable juice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1032
* #1039 "Overige verwerking en conservering van groenten en fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige verwerking en conservering van groenten en fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other processing and preserving of fruit and vegetables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #103
* #10390 "Overige verwerking en conservering van groenten en fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige verwerking en conservering van groenten en fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other processing and preserving of fruit and vegetables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1039
* #104 "Vervaardiging van plantaardige en dierlijke oliën en vetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van plantaardige en dierlijke oliën en vetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of vegetable and animal oils and fats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1041 "Vervaardiging van oliën en vetten, met uitzondering van margarine en vergelijkbare eetbare vetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van oliën en vetten, met uitzondering van margarine en vergelijkbare eetbare vetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of oils and fats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #104
* #10410 "Vervaardiging van oliën en vetten, met uitzondering van margarine en vergelijkbare eetbare vetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van oliën en vetten, met uitzondering van margarine en vergelijkbare eetbare vetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of oils and fats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1041
* #1042 "Vervaardiging van margarine en vergelijkbare eetbare vetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van margarine en vergelijkbare eetbare vetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of margarine and similar edible fats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #104
* #10420 "Vervaardiging van margarine en vergelijkbare eetbare vetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van margarine en vergelijkbare eetbare vetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of margarine and similar edible fats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1042
* #105 "Vervaardiging van zuivelproducten en consumptie-ijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van zuivelproducten en consumptie-ijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of dairy products and edible ice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1051 "Vervaardiging van zuivelproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van zuivelproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of dairy products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #105
* #10510 "Vervaardiging van zuivelproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van zuivelproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of dairy products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1051
* #1052 "Vervaardiging van roomijs en ander consumptie-ijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van roomijs en ander consumptie-ijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ice cream and other edible ice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #105
* #10520 "Vervaardiging van roomijs en ander consumptie-ijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van roomijs en ander consumptie-ijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ice cream and other edible ice"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1052
* #106 "Vervaardiging van maalderijproducten, zetmeel en zetmeelproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van maalderijproducten, zetmeel en zetmeelproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of grain mill products, starches and starch products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1061 "Vervaardiging van maalderijproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van maalderijproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of grain mill products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #106
* #10610 "Vervaardiging van maalderijproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van maalderijproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of grain mill products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1061
* #1062 "Vervaardiging van zetmeel en zetmeelproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van zetmeel en zetmeelproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of starches and starch products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #106
* #10620 "Vervaardiging van zetmeel en zetmeelproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van zetmeel en zetmeelproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of starches and starch products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1062
* #107 "Vervaardiging van bakkerijproducten en deegwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bakkerijproducten en deegwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bakery and farinaceous products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1071 "Vervaardiging van brood en vers banketbakkerswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van brood en vers banketbakkerswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bread; manufacture of fresh pastry goods and cakes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #107
* #10710 "Vervaardiging van brood en vers banketbakkerswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van brood en vers banketbakkerswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bread; manufacture of fresh pastry goods and cakes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1071
* #1072 "Vervaardiging van beschuit, biscuit en houdbaar banketbakkerswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van beschuit, biscuit en houdbaar banketbakkerswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of rusks, biscuits, preserved pastries and cakes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #107
* #10720 "Vervaardiging van beschuit, biscuit en houdbaar banketbakkerswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van beschuit, biscuit en houdbaar banketbakkerswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of rusks, biscuits, preserved pastries and cakes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1072
* #1073 "Vervaardiging van deegwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van deegwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of farinaceous products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #107
* #10730 "Vervaardiging van deegwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van deegwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of farinaceous products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1073
* #108 "Vervaardiging van overige voedingsmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige voedingsmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other food products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1081 "Vervaardiging van suiker"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van suiker"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of sugar"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #108
* #10810 "Vervaardiging van suiker"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van suiker"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of sugar"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1081
* #1082 "Vervaardiging van cacao, chocolade en suikerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cacao, chocolade en suikerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cocoa, chocolate and sugar confectionery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #108
* #10821 "Verwerking van cacao"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking van cacao"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing of cocoa"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1082
* #10822 "Vervaardiging van chocolade en suikerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van chocolade en suikerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of chocolate and other sugar confectionery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1082
* #1083 "Verwerking van thee en koffie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking van thee en koffie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing of tea and coffee"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #108
* #10830 "Verwerking van thee en koffie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking van thee en koffie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing of tea and coffee"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1083
* #1084 "Vervaardiging van sauzen, specerijen en kruiderijen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van sauzen, specerijen en kruiderijen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of condiments and seasonings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #108
* #10840 "Vervaardiging van sauzen, specerijen en kruiderijen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van sauzen, specerijen en kruiderijen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of condiments and seasonings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1084
* #1085 "Vervaardiging van kant- en klaarmaaltijden en schotels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kant- en klaarmaaltijden en schotels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of prepared meals and dishes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #108
* #10850 "Vervaardiging van kant- en klaarmaaltijden en schotels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kant- en klaarmaaltijden en schotels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of prepared meals and dishes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1085
* #1086 "Vervaardiging van gehomogeniseerde voedingspreparaten en dieetvoeding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gehomogeniseerde voedingspreparaten en dieetvoeding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of homogenised food preparations and dietetic food"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #108
* #10860 "Vervaardiging van gehomogeniseerde voedingspreparaten en dieetvoeding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gehomogeniseerde voedingspreparaten en dieetvoeding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of homogenised food preparations and dietetic food"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1086
* #1089 "Vervaardiging van overige voedingsmiddelen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige voedingsmiddelen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other food products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #108
* #10890 "Vervaardiging van overige voedingsmiddelen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige voedingsmiddelen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other food products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1089
* #109 "Vervaardiging van diervoeders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van diervoeders"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of prepared animal feeds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #10
* #1091 "Vervaardiging van veevoeders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van veevoeders"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of prepared feeds for farm animals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #109
* #10910 "Vervaardiging van veevoeders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van veevoeders"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of prepared feeds for farm animals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1091
* #1092 "Vervaardiging van voeders voor huisdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van voeders voor huisdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of prepared pet foods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #109
* #10920 "Vervaardiging van voeders voor huisdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van voeders voor huisdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of prepared pet foods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1092
* #11 "Vervaardiging van dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #110 "Vervaardiging van dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #11
* #1101 "Destilleren, rectificeren en mengen van sterk alcoholische dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Destilleren, rectificeren en mengen van sterk alcoholische dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Distilling, rectifying and blending of spirits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #110
* #11010 "Destilleren, rectificeren en mengen van sterk alcoholische dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Destilleren, rectificeren en mengen van sterk alcoholische dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Distilling, rectifying and blending of spirits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1101
* #1102 "Vervaardiging van wijn uit druiven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van wijn uit druiven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wine from grape"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #110
* #11020 "Vervaardiging van wijn uit druiven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van wijn uit druiven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wine from grape"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1102
* #1103 "Vervaardiging van cider en overige gefermenteerde vruchtendranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cider en overige gefermenteerde vruchtendranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cider and other fermented fruit beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #110
* #11030 "Vervaardiging van cider en overige gefermenteerde vruchtendranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cider en overige gefermenteerde vruchtendranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cider and other fermented fruit beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1103
* #1104 "Vervaardiging van overige niet-gedistilleerde gefermenteerde dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige niet-gedistilleerde gefermenteerde dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other non-distilled fermented beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #110
* #11040 "Vervaardiging van overige niet-gedistilleerde gefermenteerde dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige niet-gedistilleerde gefermenteerde dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other non-distilled fermented beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1104
* #1105 "Vervaardiging van bier"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bier"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of beer"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #110
* #11050 "Vervaardiging van bier"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bier"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of beer"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1105
* #1106 "Vervaardiging van mout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van mout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of malt"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #110
* #11060 "Vervaardiging van mout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van mout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of malt"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1106
* #1107 "Vervaardiging van frisdranken en gebotteld water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van frisdranken en gebotteld water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of soft drinks and bottled waters"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #110
* #11070 "Vervaardiging van frisdranken en gebotteld water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van frisdranken en gebotteld water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of soft drinks and bottled waters"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1107
* #12 "Vervaardiging van tabaksproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van tabaksproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #120 "Vervaardiging van tabaksproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van tabaksproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #12
* #1200 "Vervaardiging van tabaksproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van tabaksproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #120
* #12000 "Vervaardiging van tabaksproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van tabaksproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1200
* #13 "Vervaardiging van textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #131 "Bewerken en spinnen van textielvezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bewerken en spinnen van textielvezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Preparation and spinning of textile fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #13
* #1310 "Bewerken en spinnen van textielvezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bewerken en spinnen van textielvezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Preparation and spinning of textile fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #131
* #13100 "Bewerken en spinnen van textielvezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bewerken en spinnen van textielvezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Preparation and spinning of textile fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1310
* #132 "Weven van textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Weven van textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Weaving of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #13
* #1320 "Weven van textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Weven van textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Weaving of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #132
* #13200 "Weven van textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Weven van textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Weaving of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1320
* #133 "Textielveredeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Textielveredeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Finishing of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #13
* #1330 "Textielveredeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Textielveredeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Finishing of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #133
* #13300 "Textielveredeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Textielveredeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Finishing of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1330
* #139 "Vervaardiging van overige textielproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige textielproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #13
* #1391 "Vervaardiging van gebreide en gehaakte stoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gebreide en gehaakte stoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of knitted and crocheted fabrics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #139
* #13910 "Vervaardiging van gebreide en gehaakte stoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gebreide en gehaakte stoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of knitted and crocheted fabrics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1391
* #1392 "Vervaardiging van huishoudtextiel en geconfectioneerde artikelen voor stoffering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van huishoudtextiel en geconfectioneerde artikelen voor stoffering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of household textiles and made-up furnishing articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #139
* #13920 "Vervaardiging van huishoudtextiel en geconfectioneerde artikelen voor stoffering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van huishoudtextiel en geconfectioneerde artikelen voor stoffering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of household textiles and made-up furnishing articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1392
* #1393 "Vervaardiging van vloerkleden en tapijten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vloerkleden en tapijten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of carpets and rugs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #139
* #13930 "Vervaardiging van vloerkleden en tapijten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vloerkleden en tapijten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of carpets and rugs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1393
* #1394 "Vervaardiging van koord, touw, bindgaren en netten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van koord, touw, bindgaren en netten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cordage, rope, twine and netting"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #139
* #13940 "Vervaardiging van koord, touw, bindgaren en netten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van koord, touw, bindgaren en netten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cordage, rope, twine and netting"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1394
* #1395 "Vervaardiging van ongeweven stoffen en artikelen daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van ongeweven stoffen en artikelen daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of non-wovens and non-woven articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #139
* #13950 "Vervaardiging van ongeweven stoffen en artikelen daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van ongeweven stoffen en artikelen daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of non-wovens and non-woven articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1395
* #1396 "Vervaardiging van overig technisch en industrieel textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overig technisch en industrieel textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other technical and industrial textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #139
* #13960 "Vervaardiging van overig technisch en industrieel textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overig technisch en industrieel textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other technical and industrial textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1396
* #1399 "Vervaardiging van overige textielproducten (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige textielproducten (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other textiles n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #139
* #13990 "Vervaardiging van overige textielproducten (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige textielproducten (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other textiles n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1399
* #14 "Vervaardiging van kleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wearing apparel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #141 "Vervaardiging van gebreide en gehaakte kleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gebreide en gehaakte kleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of knitted and crocheted apparel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #14
* #1410 "Vervaardiging van gebreide en gehaakte kleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gebreide en gehaakte kleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of knitted and crocheted apparel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #141
* #14100 "Vervaardiging van gebreide en gehaakte kleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gebreide en gehaakte kleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of knitted and crocheted apparel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1410
* #142 "Vervaardiging van overige kleding en accessoires"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige kleding en accessoires"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other wearing apparel and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #14
* #1421 "Vervaardiging van bovenkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bovenkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of outerwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #142
* #14210 "Vervaardiging van bovenkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bovenkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of outerwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1421
* #1422 "Vervaardiging van onderkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van onderkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of underwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #142
* #14220 "Vervaardiging van onderkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van onderkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of underwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1422
* #1423 "Vervaardiging van werkkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van werkkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of workwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #142
* #14230 "Vervaardiging van werkkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van werkkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of workwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1423
* #1424 "Vervaardiging van kleding van leer en van bont"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kleding van leer en van bont"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of leather clothes and fur apparel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #142
* #14240 "Vervaardiging van kleding van leer en van bont"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kleding van leer en van bont"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of leather clothes and fur apparel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1424
* #1429 "Vervaardiging van overige kleding en accessoires, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige kleding en accessoires, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other wearing apparel and accessories n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #142
* #14290 "Vervaardiging van overige kleding en accessoires, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige kleding en accessoires, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other wearing apparel and accessories n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1429
* #15 "Vervaardiging van leer, lederwaren en soortgelijke producten van andere materialen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van leer, lederwaren en soortgelijke producten van andere materialen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of leather and related products of other materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #151 "Looien, verven en bewerken van leder en bont; vervaardiging van koffers, tassen, zadel- en tuigmakerswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Looien, verven en bewerken van leder en bont; vervaardiging van koffers, tassen, zadel- en tuigmakerswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tanning, dyeing, dressing of leather and fur; manufacture of luggage, handbags, saddlery and harness"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #15
* #1511 "Looien, verven en bewerken van leder en bont"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Looien, verven en bewerken van leder en bont"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tanning, dressing, dyeing of leather and fur"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #151
* #15110 "Looien, verven en bewerken van leder en bont"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Looien, verven en bewerken van leder en bont"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tanning, dressing, dyeing of leather and fur"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1511
* #1512 "Vervaardiging van koffers, tassen, zadel- en tuigmakerswerk van ongeacht welk materiaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van koffers, tassen, zadel- en tuigmakerswerk van ongeacht welk materiaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of luggage, handbags, saddlery and harness of any material"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #151
* #15120 "Vervaardiging van koffers, tassen, zadel- en tuigmakerswerk van ongeacht welk materiaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van koffers, tassen, zadel- en tuigmakerswerk van ongeacht welk materiaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of luggage, handbags, saddlery and harness of any material"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1512
* #152 "Vervaardiging van schoeisel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schoeisel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of footwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #15
* #1520 "Vervaardiging van schoeisel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schoeisel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of footwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #152
* #15200 "Vervaardiging van schoeisel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schoeisel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of footwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1520
* #16 "Houtindustrie en vervaardiging van artikelen van hout en kurk, met uitzondering van meubelen; vervaardiging van artikelen van riet en van vlechtwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Houtindustrie en vervaardiging van artikelen van hout en kurk, met uitzondering van meubelen; vervaardiging van artikelen van riet en van vlechtwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wood and of products of wood and cork, except furniture; manufacture of articles of straw and plaiting materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #161 "Zagen en schaven van hout; verwerking en afwerking van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zagen en schaven van hout; verwerking en afwerking van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sawmilling and planing of wood; processing and finishing of wood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #16
* #1611 "Zagen en schaven van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zagen en schaven van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sawmilling and planing of wood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #161
* #16110 "Zagen en schaven van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zagen en schaven van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sawmilling and planing of wood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1611
* #1612 "Verwerking en afwerking van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en afwerking van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and finishing of wood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #161
* #16120 "Verwerking en afwerking van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en afwerking van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and finishing of wood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1612
* #162 "Vervaardiging van artikelen van hout, kurk, riet of vlechtwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van artikelen van hout, kurk, riet of vlechtwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of products of wood, cork, straw and plaiting materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #16
* #1621 "Vervaardiging van fineer en van panelen op basis van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van fineer en van panelen op basis van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of veneer sheets and wood-based panels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16210 "Vervaardiging van fineer en van panelen op basis van hout"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van fineer en van panelen op basis van hout"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of veneer sheets and wood-based panels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1621
* #1622 "Vervaardiging van panelen voor parketvloeren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van panelen voor parketvloeren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of assembled parquet floors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16220 "Vervaardiging van panelen voor parketvloeren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van panelen voor parketvloeren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of assembled parquet floors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1622
* #1623 "Vervaardiging van overig schrijn- en timmerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overig schrijn- en timmerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other builders' carpentry and joinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16230 "Vervaardiging van overig schrijn- en timmerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overig schrijn- en timmerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other builders' carpentry and joinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1623
* #1624 "Vervaardiging van houten emballage"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van houten emballage"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wooden containers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16240 "Vervaardiging van houten emballage"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van houten emballage"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wooden containers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1624
* #1625 "Vervaardiging van houten deuren en kozijnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van houten deuren en kozijnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of doors and windows of wood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16250 "Vervaardiging van houten deuren en kozijnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van houten deuren en kozijnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of doors and windows of wood"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1625
* #1626 "Vervaardiging van vaste brandstoffen uit plantaardige biomassa"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vaste brandstoffen uit plantaardige biomassa"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of solid fuels from vegetable biomass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16260 "Vervaardiging van vaste brandstoffen uit plantaardige biomassa"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vaste brandstoffen uit plantaardige biomassa"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of solid fuels from vegetable biomass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1626
* #1627 "Afwerking van houten producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afwerking van houten producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Finishing of wooden products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16270 "Afwerking van houten producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afwerking van houten producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Finishing of wooden products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1627
* #1628 "Vervaardiging van overige producten van hout en van producten van kurk, riet of vlechtwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van hout en van producten van kurk, riet of vlechtwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other products of wood and articles of cork, straw and plaiting materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #162
* #16280 "Vervaardiging van overige producten van hout en van producten van kurk, riet of vlechtwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van hout en van producten van kurk, riet of vlechtwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other products of wood and articles of cork, straw and plaiting materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1628
* #17 "Vervaardiging van papier en papierwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van papier en papierwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of paper and paper products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #171 "Vervaardiging van papierpulp, papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van papierpulp, papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pulp, paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #17
* #1711 "Vervaardiging van papierpulp"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van papierpulp"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pulp"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #171
* #17110 "Vervaardiging van papierpulp"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van papierpulp"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pulp"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1711
* #1712 "Vervaardiging van papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #171
* #17121 "Vervaardiging van grafisch papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van grafisch papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of printing paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1712
* #17122 "Vervaardiging van papier en karton voor verpakking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van papier en karton voor verpakking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of paper and paperboard for packaging"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1712
* #17129 "Vervaardiging van overig papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overig papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of other paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1712
* #172 "Vervaardiging van papier- en kartonwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van papier- en kartonwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of articles of paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #17
* #1721 "Vervaardiging van gegolfd papier, golfkarton en verpakkingsmateriaal van papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gegolfd papier, golfkarton en verpakkingsmateriaal van papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of corrugated paper, paperboard and containers of paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #172
* #17211 "Vervaardiging van verpakkingsmiddelen van papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van verpakkingsmiddelen van papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of paper and paperboard packaging products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1721
* #17212 "Vervaardiging van golfpapier en -karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van golfpapier en -karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of corrugated paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1721
* #1722 "Vervaardiging van huishoudelijke en sanitaire papierwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van huishoudelijke en sanitaire papierwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of household and sanitary goods and of toilet requisites"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #172
* #17220 "Vervaardiging van huishoudelijke en sanitaire papierwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van huishoudelijke en sanitaire papierwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of household and sanitary goods and of toilet requisites"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1722
* #1723 "Vervaardiging van kantoorbenodigdheden van papier"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kantoorbenodigdheden van papier"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of paper stationery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #172
* #17230 "Vervaardiging van kantoorbenodigdheden van papier"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kantoorbenodigdheden van papier"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of paper stationery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1723
* #1724 "Vervaardiging van behangpapier"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van behangpapier"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wallpaper"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #172
* #17240 "Vervaardiging van behangpapier"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van behangpapier"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wallpaper"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1724
* #1725 "Vervaardiging van overige papier- en kartonwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige papier- en kartonwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other articles of paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #172
* #17250 "Vervaardiging van overige papier- en kartonwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige papier- en kartonwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other articles of paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1725
* #18 "Activiteiten op het gebied van drukwerk en reproductie van opgenomen media"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van drukwerk en reproductie van opgenomen media"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing and reproduction of recorded media"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #181 "Activiteiten op het gebied van drukwerk en gerelateerde dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van drukwerk en gerelateerde dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing and service activities related to printing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #18
* #1811 "Drukken van dagbladen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Drukken van dagbladen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing of newspapers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #181
* #18110 "Drukken van dagbladen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Drukken van dagbladen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing of newspapers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1811
* #1812 "Overige activiteiten op het gebied van drukwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van drukwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other printing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #181
* #18121 "Drukken van boeken en dergelijke"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Drukken van boeken en dergelijke"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing of books and similar products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1812
* #18122 "Drukken van tijdschriften"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Drukken van tijdschriften"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing of magazines"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1812
* #18123 "Drukken van reclame"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Drukken van reclame"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing of advertising material"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1812
* #18124 "Drukken van verpakkingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Drukken van verpakkingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing of packaging material"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1812
* #18125 "Drukken van formulieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Drukken van formulieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Printing of forms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1812
* #18129 "Overige activiteiten op het gebied van drukwerk (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van drukwerk (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other printing activities (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1812
* #1813 "Voorbereidende activiteiten voor papieren en digitale output"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Voorbereidende activiteiten voor papieren en digitale output"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Pre-press and pre-media services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #181
* #18130 "Voorbereidende activiteiten voor papieren en digitale output"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Voorbereidende activiteiten voor papieren en digitale output"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Pre-press and pre-media services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1813
* #1814 "Activiteiten van binderijen en aanverwante diensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van binderijen en aanverwante diensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Binding and related services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #181
* #18140 "Activiteiten van binderijen en aanverwante diensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van binderijen en aanverwante diensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Binding and related services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1814
* #182 "Reproductie van opgenomen media"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reproductie van opgenomen media"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Reproduction of recorded media"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #18
* #1820 "Reproductie van opgenomen media"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reproductie van opgenomen media"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Reproduction of recorded media"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #182
* #18200 "Reproductie van opgenomen media"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reproductie van opgenomen media"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Reproduction of recorded media"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1820
* #19 "Vervaardiging van cokes en van geraffineerde aardolieproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cokes en van geraffineerde aardolieproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of coke and refined petroleum products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #191 "Vervaardiging van cokesovenproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cokesovenproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of coke oven products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #19
* #1910 "Vervaardiging van cokesovenproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cokesovenproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of coke oven products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #191
* #19100 "Vervaardiging van cokesovenproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cokesovenproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of coke oven products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1910
* #192 "Vervaardiging van geraffineerde aardolieproducten en van producten uit fossiele brandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van geraffineerde aardolieproducten en van producten uit fossiele brandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of refined petroleum products and fossil fuel products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #19
* #1920 "Vervaardiging van geraffineerde aardolieproducten en van producten uit fossiele brandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van geraffineerde aardolieproducten en van producten uit fossiele brandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of refined petroleum products and fossil fuel products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #192
* #19200 "Vervaardiging van geraffineerde aardolieproducten en van producten uit fossiele brandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van geraffineerde aardolieproducten en van producten uit fossiele brandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of refined petroleum products and fossil fuel products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #1920
* #20 "Vervaardiging van chemicaliën en chemische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van chemicaliën en chemische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of chemicals and chemical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #201 "Vervaardiging van chemische basisproducten, kunstmeststoffen en stikstofverbindingen en van kunststoffen en synthetische rubber in primaire vormen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van chemische basisproducten, kunstmeststoffen en stikstofverbindingen en van kunststoffen en synthetische rubber in primaire vormen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic chemicals, fertilisers and nitrogen compounds, plastics and synthetic rubber in primary forms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #20
* #2011 "Vervaardiging van industriële gassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van industriële gassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of industrial gases"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #201
* #20110 "Vervaardiging van industriële gassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van industriële gassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of industrial gases"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2011
* #2012 "Vervaardiging van kleurstoffen en pigmenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kleurstoffen en pigmenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of dyes and pigments"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #201
* #20120 "Vervaardiging van kleurstoffen en pigmenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kleurstoffen en pigmenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of dyes and pigments"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2012
* #2013 "Vervaardiging van overige anorganische basischemicaliën"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige anorganische basischemicaliën"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other inorganic basic chemicals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #201
* #20130 "Vervaardiging van overige anorganische basischemicaliën"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige anorganische basischemicaliën"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other inorganic basic chemicals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2013
* #2014 "Vervaardiging van overige organische basischemicaliën"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige organische basischemicaliën"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other organic basic chemicals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #201
* #20141 "Vervaardiging van petrochemische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van petrochemische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of petrochemical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2014
* #20149 "Vervaardiging van overige organische basischemicaliën (geen petrochemische producten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige organische basischemicaliën (geen petrochemische producten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of other organic basic chemicals (non-petrochemicals)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2014
* #2015 "Vervaardiging van kunstmeststoffen en stikstofverbindingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunstmeststoffen en stikstofverbindingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fertilisers and nitrogen compounds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #201
* #20150 "Vervaardiging van kunstmeststoffen en stikstofverbindingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunstmeststoffen en stikstofverbindingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fertilisers and nitrogen compounds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2015
* #2016 "Vervaardiging van kunststoffen in primaire vormen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststoffen in primaire vormen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastics in primary forms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #201
* #20160 "Vervaardiging van kunststoffen in primaire vormen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststoffen in primaire vormen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastics in primary forms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2016
* #2017 "Vervaardiging van synthetische rubber in primaire vormen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van synthetische rubber in primaire vormen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of synthetic rubber in primary forms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #201
* #20170 "Vervaardiging van synthetische rubber in primaire vormen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van synthetische rubber in primaire vormen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of synthetic rubber in primary forms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2017
* #202 "Vervaardiging van pesticiden, ontsmettingsmiddelen en overige landbouwchemicaliën"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van pesticiden, ontsmettingsmiddelen en overige landbouwchemicaliën"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pesticides, disinfectants and other agrochemical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #20
* #2020 "Vervaardiging van pesticiden, ontsmettingsmiddelen en overige landbouwchemicaliën"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van pesticiden, ontsmettingsmiddelen en overige landbouwchemicaliën"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pesticides, disinfectants and other agrochemical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #202
* #20200 "Vervaardiging van pesticiden, ontsmettingsmiddelen en overige landbouwchemicaliën"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van pesticiden, ontsmettingsmiddelen en overige landbouwchemicaliën"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pesticides, disinfectants and other agrochemical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2020
* #203 "Vervaardiging van verf, vernis en soortgelijke coatings, drukinkt en mastiek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van verf, vernis en soortgelijke coatings, drukinkt en mastiek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of paints, varnishes and similar coatings, printing ink and mastics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #20
* #2030 "Vervaardiging van verf, vernis en soortgelijke coatings, drukinkt en mastiek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van verf, vernis en soortgelijke coatings, drukinkt en mastiek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of paints, varnishes and similar coatings, printing ink and mastics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #203
* #20300 "Vervaardiging van verf, vernis en soortgelijke coatings, drukinkt en mastiek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van verf, vernis en soortgelijke coatings, drukinkt en mastiek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of paints, varnishes and similar coatings, printing ink and mastics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2030
* #204 "Vervaardiging van was-, reinigings- en polijstmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van was-, reinigings- en polijstmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of washing, cleaning and polishing preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #20
* #2041 "Vervaardiging van zeep, was-, reinigings- en polijstmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van zeep, was-, reinigings- en polijstmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of soap and detergents, cleaning and polishing preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #204
* #20410 "Vervaardiging van zeep, was-, reinigings- en polijstmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van zeep, was-, reinigings- en polijstmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of soap and detergents, cleaning and polishing preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2041
* #2042 "Vervaardiging van parfums en cosmetica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van parfums en cosmetica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of perfume and toilet preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #204
* #20420 "Vervaardiging van parfums en cosmetica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van parfums en cosmetica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of perfume and toilet preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2042
* #205 "Vervaardiging van overige chemische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige chemische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other chemical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #20
* #2051 "Vervaardiging van vloeibare biobrandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vloeibare biobrandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of liquid biofuels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #205
* #20510 "Vervaardiging van vloeibare biobrandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vloeibare biobrandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of liquid biofuels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2051
* #2059 "Vervaardiging van overige chemische producten (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige chemische producten (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other chemical products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #205
* #20590 "Vervaardiging van overige chemische producten (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige chemische producten (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other chemical products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2059
* #206 "Vervaardiging van synthetische vezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van synthetische vezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of man-made fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #20
* #2060 "Vervaardiging van synthetische vezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van synthetische vezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of man-made fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #206
* #20600 "Vervaardiging van synthetische vezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van synthetische vezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of man-made fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2060
* #21 "Vervaardiging van farmaceutische grondstoffen en producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van farmaceutische grondstoffen en producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic pharmaceutical products and pharmaceutical preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #211 "Vervaardiging van farmaceutische grondstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van farmaceutische grondstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic pharmaceutical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #21
* #2110 "Vervaardiging van farmaceutische grondstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van farmaceutische grondstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic pharmaceutical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #211
* #21100 "Vervaardiging van farmaceutische grondstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van farmaceutische grondstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic pharmaceutical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2110
* #212 "Vervaardiging van farmaceutische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van farmaceutische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pharmaceutical preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #21
* #2120 "Vervaardiging van farmaceutische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van farmaceutische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pharmaceutical preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #212
* #21200 "Vervaardiging van farmaceutische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van farmaceutische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of pharmaceutical preparations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2120
* #22 "Vervaardiging van producten van rubber of kunststof"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van producten van rubber of kunststof"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of rubber and plastic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #221 "Vervaardiging van producten van rubber"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van producten van rubber"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of rubber products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #22
* #2211 "Vervaardiging en loopvlakvernieuwing van rubberbanden en vervaardiging van binnenbanden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging en loopvlakvernieuwing van rubberbanden en vervaardiging van binnenbanden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture, retreading and rebuilding of rubber tyres and manufacture of tubes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #221
* #22110 "Vervaardiging en loopvlakvernieuwing van rubberbanden en vervaardiging van binnenbanden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging en loopvlakvernieuwing van rubberbanden en vervaardiging van binnenbanden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture, retreading and rebuilding of rubber tyres and manufacture of tubes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2211
* #2212 "Vervaardiging van overige producten van rubber"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van rubber"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other rubber products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #221
* #22120 "Vervaardiging van overige producten van rubber"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van rubber"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other rubber products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2212
* #222 "Vervaardiging van producten van kunststof"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van producten van kunststof"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #22
* #2221 "Vervaardiging van platen, vellen, buizen en profielen van kunststof"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van platen, vellen, buizen en profielen van kunststof"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastic plates, sheets, tubes and profiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #222
* #22210 "Vervaardiging van platen, vellen, buizen en profielen van kunststof"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van platen, vellen, buizen en profielen van kunststof"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastic plates, sheets, tubes and profiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2221
* #2222 "Vervaardiging van kunststof verpakkingsmateriaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststof verpakkingsmateriaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastic packing goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #222
* #22220 "Vervaardiging van kunststof verpakkingsmateriaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststof verpakkingsmateriaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastic packing goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2222
* #2223 "Vervaardiging van kunststof deuren en kozijnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststof deuren en kozijnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of doors and windows of plastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #222
* #22230 "Vervaardiging van kunststof deuren en kozijnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststof deuren en kozijnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of doors and windows of plastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2223
* #2224 "Vervaardiging van kunststofartikelen voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststofartikelen voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of builders’ ware of plastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #222
* #22240 "Vervaardiging van kunststofartikelen voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kunststofartikelen voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of builders’ ware of plastic"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2224
* #2225 "Verwerking en afwerking van kunststofproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en afwerking van kunststofproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and finishing of plastic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #222
* #22250 "Verwerking en afwerking van kunststofproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwerking en afwerking van kunststofproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing and finishing of plastic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2225
* #2226 "Vervaardiging van overige kunststofproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige kunststofproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other plastic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #222
* #22260 "Vervaardiging van overige kunststofproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige kunststofproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other plastic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2226
* #23 "Vervaardiging van overige niet-metaalhoudende minerale producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige niet-metaalhoudende minerale producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other non-metallic mineral products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #231 "Vervaardiging van glas en glaswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van glas en glaswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of glass and glass products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2311 "Vervaardiging van vlakglas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vlakglas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of flat glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #231
* #23110 "Vervaardiging van vlakglas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vlakglas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of flat glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2311
* #2312 "Vormen en bewerken van vlakglas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vormen en bewerken van vlakglas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Shaping and processing of flat glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #231
* #23120 "Vormen en bewerken van vlakglas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vormen en bewerken van vlakglas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Shaping and processing of flat glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2312
* #2313 "Vervaardiging van holglas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van holglas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of hollow glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #231
* #23130 "Vervaardiging van holglas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van holglas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of hollow glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2313
* #2314 "Vervaardiging van glasvezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van glasvezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of glass fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #231
* #23140 "Vervaardiging van glasvezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van glasvezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of glass fibres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2314
* #2315 "Vervaardiging en bewerking van overig glas, inclusief technisch glaswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging en bewerking van overig glas, inclusief technisch glaswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture and processing of other glass, including technical glassware"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #231
* #23150 "Vervaardiging en bewerking van overig glas, inclusief technisch glaswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging en bewerking van overig glas, inclusief technisch glaswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture and processing of other glass, including technical glassware"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2315
* #232 "Vervaardiging van vuurvaste producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vuurvaste producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of refractory products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2320 "Vervaardiging van vuurvaste producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vuurvaste producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of refractory products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #232
* #23200 "Vervaardiging van vuurvaste producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vuurvaste producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of refractory products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2320
* #233 "Vervaardiging van kleiproducten voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kleiproducten voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of clay building materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2331 "Vervaardiging van keramische tegels en plavuizen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van keramische tegels en plavuizen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic tiles and flags"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #233
* #23310 "Vervaardiging van keramische tegels en plavuizen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van keramische tegels en plavuizen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic tiles and flags"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2331
* #2332 "Vervaardiging van bakstenen, tegels en producten voor de bouw, van gebakken klei"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bakstenen, tegels en producten voor de bouw, van gebakken klei"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bricks, tiles and construction products, in baked clay"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #233
* #23320 "Vervaardiging van bakstenen, tegels en producten voor de bouw, van gebakken klei"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bakstenen, tegels en producten voor de bouw, van gebakken klei"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bricks, tiles and construction products, in baked clay"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2332
* #234 "Vervaardiging van overige porseleinen en keramische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige porseleinen en keramische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other porcelain and ceramic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2341 "Vervaardiging van huishoudelijk en sieraardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van huishoudelijk en sieraardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic household and ornamental articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #234
* #23410 "Vervaardiging van huishoudelijk en sieraardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van huishoudelijk en sieraardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic household and ornamental articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2341
* #2342 "Vervaardiging van sanitair aardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van sanitair aardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic sanitary fixtures"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #234
* #23420 "Vervaardiging van sanitair aardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van sanitair aardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic sanitary fixtures"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2342
* #2343 "Vervaardiging van keramische isolatoren en isolerende fittingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van keramische isolatoren en isolerende fittingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic insulators and insulating fittings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #234
* #23430 "Vervaardiging van keramische isolatoren en isolerende fittingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van keramische isolatoren en isolerende fittingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ceramic insulators and insulating fittings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2343
* #2344 "Vervaardiging van overig technisch keramisch aardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overig technisch keramisch aardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other technical ceramic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #234
* #23440 "Vervaardiging van overig technisch keramisch aardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overig technisch keramisch aardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other technical ceramic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2344
* #2345 "Vervaardiging van overige producten van keramiek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van keramiek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other ceramic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #234
* #23450 "Vervaardiging van overige producten van keramiek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van keramiek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other ceramic products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2345
* #235 "Vervaardiging van cement, kalk en gips"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cement, kalk en gips"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cement, lime and plaster"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2351 "Vervaardiging van cement"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cement"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cement"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #235
* #23510 "Vervaardiging van cement"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van cement"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cement"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2351
* #2352 "Vervaardiging van kalk en gips"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kalk en gips"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of lime and plaster"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #235
* #23520 "Vervaardiging van kalk en gips"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kalk en gips"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of lime and plaster"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2352
* #236 "Vervaardiging van producten van beton, cement en gips"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van producten van beton, cement en gips"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of articles of concrete, cement and plaster"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2361 "Vervaardiging van betonproducten voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van betonproducten voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of concrete products for construction purposes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #236
* #23611 "Vervaardiging van producten van beton voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van producten van beton voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of concrete (not sand-lime) products for construction purposes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2361
* #23612 "Vervaardiging van producten van kalkzandsteen voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van producten van kalkzandsteen voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of sand-lime products for construction purposes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2361
* #2362 "Vervaardiging van gipsproducten voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gipsproducten voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plaster products for construction purposes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #236
* #23620 "Vervaardiging van gipsproducten voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gipsproducten voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plaster products for construction purposes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2362
* #2363 "Vervaardiging van stortklare beton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van stortklare beton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ready-mixed concrete"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #236
* #23630 "Vervaardiging van stortklare beton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van stortklare beton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ready-mixed concrete"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2363
* #2364 "Vervaardiging van mortel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van mortel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of mortars"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #236
* #23640 "Vervaardiging van mortel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van mortel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of mortars"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2364
* #2365 "Vervaardiging van vezelcement"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vezelcement"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fibre cement"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #236
* #23650 "Vervaardiging van vezelcement"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van vezelcement"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fibre cement"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2365
* #2366 "Vervaardiging van overige producten van beton, cement en gips"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van beton, cement en gips"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other articles of concrete, cement and plaster"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #236
* #23660 "Vervaardiging van overige producten van beton, cement en gips"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van beton, cement en gips"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other articles of concrete, cement and plaster"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2366
* #237 "Houwen, bewerken en afwerken van natuursteen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Houwen, bewerken en afwerken van natuursteen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cutting, shaping and finishing of stone"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2370 "Houwen, bewerken en afwerken van natuursteen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Houwen, bewerken en afwerken van natuursteen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cutting, shaping and finishing of stone"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #237
* #23700 "Houwen, bewerken en afwerken van natuursteen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Houwen, bewerken en afwerken van natuursteen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cutting, shaping and finishing of stone"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2370
* #239 "Vervaardiging van schuurmiddelen en niet-metaalhoudende minerale producten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schuurmiddelen en niet-metaalhoudende minerale producten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of abrasive products and non-metallic mineral products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #23
* #2391 "Vervaardiging van schuurmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schuurmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of abrasive products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #239
* #23910 "Vervaardiging van schuurmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schuurmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of abrasive products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2391
* #2399 "Vervaardiging van overige niet-metaalhoudende minerale producten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige niet-metaalhoudende minerale producten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other non-metallic mineral products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #239
* #23990 "Vervaardiging van overige niet-metaalhoudende minerale producten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige niet-metaalhoudende minerale producten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other non-metallic mineral products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2399
* #24 "Vervaardiging van basismetalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van basismetalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #241 "Vervaardiging van ijzer en staal en van ferrolegeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van ijzer en staal en van ferrolegeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic iron and steel and of ferro-alloys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #24
* #2410 "Vervaardiging van ijzer en staal en van ferrolegeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van ijzer en staal en van ferrolegeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic iron and steel and of ferro-alloys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #241
* #24100 "Vervaardiging van ijzer en staal en van ferrolegeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van ijzer en staal en van ferrolegeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic iron and steel and of ferro-alloys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2410
* #242 "Vervaardiging van stalen buizen, pijpen, holle profielen en bijbehorende fittingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van stalen buizen, pijpen, holle profielen en bijbehorende fittingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tubes, pipes, hollow profiles and related fittings, of steel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #24
* #2420 "Vervaardiging van stalen buizen, pijpen, holle profielen en bijbehorende fittingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van stalen buizen, pijpen, holle profielen en bijbehorende fittingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tubes, pipes, hollow profiles and related fittings, of steel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #242
* #24200 "Vervaardiging van stalen buizen, pijpen, holle profielen en bijbehorende fittingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van stalen buizen, pijpen, holle profielen en bijbehorende fittingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tubes, pipes, hollow profiles and related fittings, of steel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2420
* #243 "Vervaardiging van overige producten van de eerste verwerking van staal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige producten van de eerste verwerking van staal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other products of first processing of steel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #24
* #2431 "Koudtrekken van staven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudtrekken van staven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold drawing of bars"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #243
* #24310 "Koudtrekken van staven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudtrekken van staven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold drawing of bars"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2431
* #2432 "Koudwalsen van bandstaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudwalsen van bandstaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold rolling of narrow strip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #243
* #24320 "Koudwalsen van bandstaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudwalsen van bandstaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold rolling of narrow strip"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2432
* #2433 "Koudvervormen of koudfelsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudvervormen of koudfelsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold forming or folding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #243
* #24330 "Koudvervormen of koudfelsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudvervormen of koudfelsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold forming or folding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2433
* #2434 "Koudtrekken van draad"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudtrekken van draad"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold drawing of wire"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #243
* #24340 "Koudtrekken van draad"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Koudtrekken van draad"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cold drawing of wire"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2434
* #244 "Productie van basisedelmetalen en van overige non-ferrometalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van basisedelmetalen en van overige non-ferrometalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of basic precious and other non-ferrous metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #24
* #2441 "Productie van edelmetalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van edelmetalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Precious metals production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #244
* #24410 "Productie van edelmetalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van edelmetalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Precious metals production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2441
* #2442 "Productie van aluminium"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van aluminium"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Aluminium production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #244
* #24420 "Productie van aluminium"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van aluminium"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Aluminium production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2442
* #2443 "Productie van lood, zink en tin"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van lood, zink en tin"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Lead, zinc and tin production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #244
* #24430 "Productie van lood, zink en tin"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van lood, zink en tin"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Lead, zinc and tin production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2443
* #2444 "Productie van koper"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van koper"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Copper production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #244
* #24440 "Productie van koper"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van koper"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Copper production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2444
* #2445 "Productie van overige non-ferrometalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van overige non-ferrometalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other non-ferrous metal production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #244
* #24450 "Productie van overige non-ferrometalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van overige non-ferrometalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other non-ferrous metal production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2445
* #2446 "Bewerking van nucleaire brandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bewerking van nucleaire brandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing of nuclear fuel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #244
* #24460 "Bewerking van nucleaire brandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bewerking van nucleaire brandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Processing of nuclear fuel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2446
* #245 "Gieten van metalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van metalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #24
* #2451 "Gieten van ijzer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van ijzer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of iron"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #245
* #24510 "Gieten van ijzer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van ijzer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of iron"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2451
* #2452 "Gieten van staal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van staal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of steel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #245
* #24520 "Gieten van staal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van staal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of steel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2452
* #2453 "Gieten van lichte metalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van lichte metalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of light metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #245
* #24530 "Gieten van lichte metalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van lichte metalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of light metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2453
* #2454 "Gieten van overige non-ferrometalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van overige non-ferrometalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of other non-ferrous metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #245
* #24540 "Gieten van overige non-ferrometalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gieten van overige non-ferrometalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Casting of other non-ferrous metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2454
* #25 "Vervaardiging van producten van metaal, met uitzondering van machines en apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van producten van metaal, met uitzondering van machines en apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fabricated metal products, except machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #251 "Vervaardiging van metalen constructiewerken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van metalen constructiewerken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of structural metal products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #25
* #2511 "Vervaardiging van metalen constructiewerken en delen daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van metalen constructiewerken en delen daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of metal structures and parts of structures"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #251
* #25110 "Vervaardiging van metalen constructiewerken en delen daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van metalen constructiewerken en delen daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of metal structures and parts of structures"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2511
* #2512 "Vervaardiging van metalen deuren en kozijnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van metalen deuren en kozijnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of doors and windows of metal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #251
* #25120 "Vervaardiging van metalen deuren en kozijnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van metalen deuren en kozijnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of doors and windows of metal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2512
* #252 "Vervaardiging van metalen tanks, reservoirs en containers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van metalen tanks, reservoirs en containers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tanks, reservoirs and containers of metal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #25
* #2521 "Vervaardiging van radiatoren, stoomgeneratoren en ketels voor centrale verwarming"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van radiatoren, stoomgeneratoren en ketels voor centrale verwarming"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of central heating radiators, steam generators and boilers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #252
* #25210 "Vervaardiging van radiatoren, stoomgeneratoren en ketels voor centrale verwarming"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van radiatoren, stoomgeneratoren en ketels voor centrale verwarming"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of central heating radiators, steam generators and boilers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2521
* #2522 "Vervaardiging van overige metalen tanks, reservoirs en containers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige metalen tanks, reservoirs en containers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other tanks, reservoirs and containers of metal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #252
* #25220 "Vervaardiging van overige metalen tanks, reservoirs en containers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige metalen tanks, reservoirs en containers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other tanks, reservoirs and containers of metal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2522
* #253 "Vervaardiging van wapens en munitie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van wapens en munitie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of weapons and ammunition"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #25
* #2530 "Vervaardiging van wapens en munitie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van wapens en munitie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of weapons and ammunition"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #253
* #25300 "Vervaardiging van wapens en munitie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van wapens en munitie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of weapons and ammunition"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2530
* #254 "Smeden en bewerken van metaal en poedermetallurgie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Smeden en bewerken van metaal en poedermetallurgie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Forging and shaping metal and powder metallurgy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #25
* #2540 "Smeden en bewerken van metaal en poedermetallurgie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Smeden en bewerken van metaal en poedermetallurgie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Forging and shaping metal and powder metallurgy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #254
* #25400 "Smeden en bewerken van metaal en poedermetallurgie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Smeden en bewerken van metaal en poedermetallurgie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Forging and shaping metal and powder metallurgy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2540
* #255 "Behandelen, coaten en bewerken van metalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Behandelen, coaten en bewerken van metalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Treatment and coating of metals; machining"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #25
* #2551 "Coaten van metalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Coaten van metalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Coating of metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #255
* #25510 "Coaten van metalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Coaten van metalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Coating of metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2551
* #2552 "Warmtebehandeling van metaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Warmtebehandeling van metaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Heat treatment of metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #255
* #25520 "Warmtebehandeling van metaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Warmtebehandeling van metaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Heat treatment of metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2552
* #2553 "Metaalbewerking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Metaalbewerking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Machining of metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #255
* #25530 "Metaalbewerking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Metaalbewerking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Machining of metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2553
* #256 "Vervaardiging van scharen, messen, bestekken, gereedschap en ijzerwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van scharen, messen, bestekken, gereedschap en ijzerwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cutlery, tools and general hardware"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #25
* #2561 "Vervaardiging van scharen, messen en bestekken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van scharen, messen en bestekken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cutlery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #256
* #25610 "Vervaardiging van scharen, messen en bestekken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van scharen, messen en bestekken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of cutlery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2561
* #2562 "Vervaardiging van hang- en sluitwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van hang- en sluitwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of locks and hinges"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #256
* #25620 "Vervaardiging van hang- en sluitwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van hang- en sluitwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of locks and hinges"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2562
* #2563 "Vervaardiging van gereedschap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gereedschap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #256
* #25630 "Vervaardiging van gereedschap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van gereedschap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2563
* #259 "Vervaardiging van overige metalen producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige metalen producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other fabricated metal products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #25
* #2591 "Vervaardiging van stalen vaten en soortgelijke containers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van stalen vaten en soortgelijke containers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of steel drums and similar containers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #259
* #25910 "Vervaardiging van stalen vaten en soortgelijke containers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van stalen vaten en soortgelijke containers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of steel drums and similar containers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2591
* #2592 "Vervaardiging van verpakkingsmiddelen van licht metaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van verpakkingsmiddelen van licht metaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of light metal packaging"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #259
* #25920 "Vervaardiging van verpakkingsmiddelen van licht metaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van verpakkingsmiddelen van licht metaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of light metal packaging"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2592
* #2593 "Vervaardiging van draadproducten en van kettingen en veren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van draadproducten en van kettingen en veren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wire products, chain and springs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #259
* #25930 "Vervaardiging van draadproducten en van kettingen en veren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van draadproducten en van kettingen en veren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wire products, chain and springs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2593
* #2594 "Vervaardiging van bouten, schroeven, moeren en dergelijke"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bouten, schroeven, moeren en dergelijke"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fasteners and screw machine products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #259
* #25940 "Vervaardiging van bouten, schroeven, moeren en dergelijke"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bouten, schroeven, moeren en dergelijke"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fasteners and screw machine products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2594
* #2599 "Vervaardiging van overige metalen producten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige metalen producten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other fabricated metal products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #259
* #25990 "Vervaardiging van overige metalen producten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige metalen producten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other fabricated metal products n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2599
* #26 "Vervaardiging van computers en van elektronische en optische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van computers en van elektronische en optische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of computer, electronic and optical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #261 "Vervaardiging van elektronische onderdelen en printplaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektronische onderdelen en printplaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electronic components and boards"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #26
* #2611 "Vervaardiging van elektronische componenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektronische componenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electronic components"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #261
* #26110 "Vervaardiging van elektronische componenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektronische componenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electronic components"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2611
* #2612 "Vervaardiging van elektronische printplaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektronische printplaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of loaded electronic boards"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #261
* #26120 "Vervaardiging van elektronische printplaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektronische printplaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of loaded electronic boards"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2612
* #262 "Vervaardiging van computers en randapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van computers en randapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of computers and peripheral equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #26
* #2620 "Vervaardiging van computers en randapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van computers en randapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of computers and peripheral equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #262
* #26200 "Vervaardiging van computers en randapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van computers en randapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of computers and peripheral equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2620
* #263 "Vervaardiging van communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #26
* #2630 "Vervaardiging van communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #263
* #26300 "Vervaardiging van communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2630
* #264 "Vervaardiging van consumentenelektronica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van consumentenelektronica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of consumer electronics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #26
* #2640 "Vervaardiging van consumentenelektronica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van consumentenelektronica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of consumer electronics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #264
* #26400 "Vervaardiging van consumentenelektronica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van consumentenelektronica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of consumer electronics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2640
* #265 "Vervaardiging van meet- en controle-instrumenten en uurwerken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van meet- en controle-instrumenten en uurwerken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of measuring testing instruments, clocks and watches"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #26
* #2651 "Vervaardiging van instrumenten en apparatuur voor meten, controle en navigatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van instrumenten en apparatuur voor meten, controle en navigatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of instruments and appliances for measuring, testing and navigation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #265
* #26510 "Vervaardiging van instrumenten en apparatuur voor meten, controle en navigatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van instrumenten en apparatuur voor meten, controle en navigatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of instruments and appliances for measuring, testing and navigation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2651
* #2652 "Vervaardiging van uurwerken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van uurwerken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of watches and clocks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #265
* #26520 "Vervaardiging van uurwerken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van uurwerken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of watches and clocks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2652
* #266 "Vervaardiging van bestralingsapparatuur en van elektromedische en elektrotherapeutische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bestralingsapparatuur en van elektromedische en elektrotherapeutische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of irradiation, electromedical and electrotherapeutic equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #26
* #2660 "Vervaardiging van bestralingsapparatuur en van elektromedische en elektrotherapeutische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bestralingsapparatuur en van elektromedische en elektrotherapeutische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of irradiation, electromedical and electrotherapeutic equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #266
* #26600 "Vervaardiging van bestralingsapparatuur en van elektromedische en elektrotherapeutische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van bestralingsapparatuur en van elektromedische en elektrotherapeutische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of irradiation, electromedical and electrotherapeutic equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2660
* #267 "Vervaardiging van optische instrumenten, magnetische en optische dragers en fotografische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van optische instrumenten, magnetische en optische dragers en fotografische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of optical instruments, magnetic and optical media and photographic equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #26
* #2670 "Vervaardiging van optische instrumenten, magnetische en optische dragers en fotografische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van optische instrumenten, magnetische en optische dragers en fotografische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of optical instruments, magnetic and optical media and photographic equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #267
* #26700 "Vervaardiging van optische instrumenten, magnetische en optische dragers en fotografische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van optische instrumenten, magnetische en optische dragers en fotografische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of optical instruments, magnetic and optical media and photographic equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2670
* #27 "Vervaardiging van elektrische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electrical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #271 "Vervaardiging van elektromotoren, van elektrische generatoren en transformatoren en van schakel- en verdeelinrichtingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektromotoren, van elektrische generatoren en transformatoren en van schakel- en verdeelinrichtingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electric motors, generators, transformers and electricity distribution and control apparatus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #27
* #2711 "Vervaardiging van elektromotoren en van elektrische generatoren en transformatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektromotoren en van elektrische generatoren en transformatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electric motors, generators and transformers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #271
* #27110 "Vervaardiging van elektromotoren en van elektrische generatoren en transformatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektromotoren en van elektrische generatoren en transformatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electric motors, generators and transformers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2711
* #2712 "Vervaardiging van schakel- en verdeelinrichtingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schakel- en verdeelinrichtingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electricity distribution and control apparatus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #271
* #27120 "Vervaardiging van schakel- en verdeelinrichtingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schakel- en verdeelinrichtingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electricity distribution and control apparatus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2712
* #272 "Vervaardiging van batterijen en accumulatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van batterijen en accumulatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of batteries and accumulators"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #27
* #2720 "Vervaardiging van batterijen en accumulatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van batterijen en accumulatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of batteries and accumulators"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #272
* #27200 "Vervaardiging van batterijen en accumulatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van batterijen en accumulatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of batteries and accumulators"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2720
* #273 "Vervaardiging van kabels en van schakelaars, stekkers, stopcontacten e.d."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kabels en van schakelaars, stekkers, stopcontacten e.d."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wiring and wiring devices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #27
* #2731 "Vervaardiging van kabels van optische vezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kabels van optische vezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fibre optic cables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #273
* #27310 "Vervaardiging van kabels van optische vezels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kabels van optische vezels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fibre optic cables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2731
* #2732 "Vervaardiging van overige elektrische en elektronische kabels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige elektrische en elektronische kabels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other electronic and electric wires and cables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #273
* #27320 "Vervaardiging van overige elektrische en elektronische kabels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige elektrische en elektronische kabels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other electronic and electric wires and cables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2732
* #2733 "Vervaardiging van schakelaars, stekkers, stopcontacten e.d."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schakelaars, stekkers, stopcontacten e.d."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wiring devices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #273
* #27330 "Vervaardiging van schakelaars, stekkers, stopcontacten e.d."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van schakelaars, stekkers, stopcontacten e.d."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of wiring devices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2733
* #274 "Vervaardiging van elektrische lampen en verlichtingsapparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische lampen en verlichtingsapparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of lighting equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #27
* #2740 "Vervaardiging van elektrische lampen en verlichtingsapparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische lampen en verlichtingsapparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of lighting equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #274
* #27400 "Vervaardiging van elektrische lampen en verlichtingsapparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische lampen en verlichtingsapparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of lighting equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2740
* #275 "Vervaardiging van huishoudelijke apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van huishoudelijke apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of domestic appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #27
* #2751 "Vervaardiging van elektrische huishoudelijke apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische huishoudelijke apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electric domestic appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #275
* #27510 "Vervaardiging van elektrische huishoudelijke apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische huishoudelijke apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electric domestic appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2751
* #2752 "Vervaardiging van niet-elektrische huishoudelijke apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van niet-elektrische huishoudelijke apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of non-electric domestic appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #275
* #27520 "Vervaardiging van niet-elektrische huishoudelijke apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van niet-elektrische huishoudelijke apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of non-electric domestic appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2752
* #279 "Vervaardiging van overige elektrische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige elektrische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other electrical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #27
* #2790 "Vervaardiging van overige elektrische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige elektrische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other electrical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #279
* #27900 "Vervaardiging van overige elektrische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige elektrische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other electrical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2790
* #28 "Vervaardiging van machines en apparaten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines en apparaten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery and equipment n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #281 "Vervaardiging van machines en apparaten voor algemeen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines en apparaten voor algemeen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of general-purpose machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #28
* #2811 "Vervaardiging van motoren en turbines, met uitzondering van motoren voor luchtvaartuigen, motorvoertuigen en tweewielers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motoren en turbines, met uitzondering van motoren voor luchtvaartuigen, motorvoertuigen en tweewielers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of engines and turbines, except aircraft, vehicle and cycle engines"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #281
* #28110 "Vervaardiging van motoren en turbines, met uitzondering van motoren voor luchtvaartuigen, motorvoertuigen en tweewielers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motoren en turbines, met uitzondering van motoren voor luchtvaartuigen, motorvoertuigen en tweewielers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of engines and turbines, except aircraft, vehicle and cycle engines"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2811
* #2812 "Vervaardiging van hydraulische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van hydraulische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fluid power equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #281
* #28120 "Vervaardiging van hydraulische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van hydraulische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of fluid power equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2812
* #2813 "Vervaardiging van overige pompen en compressoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige pompen en compressoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other pumps and compressors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #281
* #28130 "Vervaardiging van overige pompen en compressoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige pompen en compressoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other pumps and compressors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2813
* #2814 "Vervaardiging van overige kranen en kleppen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige kranen en kleppen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other taps and valves"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #281
* #28140 "Vervaardiging van overige kranen en kleppen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige kranen en kleppen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other taps and valves"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2814
* #2815 "Vervaardiging van lagers, tandwielen en overige drijfwerkelementen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van lagers, tandwielen en overige drijfwerkelementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bearings, gears, gearing and driving elements"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #281
* #28150 "Vervaardiging van lagers, tandwielen en overige drijfwerkelementen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van lagers, tandwielen en overige drijfwerkelementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bearings, gears, gearing and driving elements"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2815
* #282 "Vervaardiging van overige machines en apparaten voor algemeen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige machines en apparaten voor algemeen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other general-purpose machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #28
* #2821 "Vervaardiging van ovens en branders en van permanente verwarmingstoestellen voor huishoudelijk gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van ovens en branders en van permanente verwarmingstoestellen voor huishoudelijk gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ovens, furnaces and permanent household heating equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #282
* #28210 "Vervaardiging van ovens en branders en van permanente verwarmingstoestellen voor huishoudelijk gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van ovens en branders en van permanente verwarmingstoestellen voor huishoudelijk gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of ovens, furnaces and permanent household heating equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2821
* #2822 "Vervaardiging van hijs-, hef- en transportwerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van hijs-, hef- en transportwerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of lifting and handling equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #282
* #28220 "Vervaardiging van hijs-, hef- en transportwerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van hijs-, hef- en transportwerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of lifting and handling equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2822
* #2823 "Vervaardiging van kantoormachines en -uitrusting, met uitzondering van computers en randapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kantoormachines en -uitrusting, met uitzondering van computers en randapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of office machinery and equipment, except computers and peripheral equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #282
* #28230 "Vervaardiging van kantoormachines en -uitrusting, met uitzondering van computers en randapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van kantoormachines en -uitrusting, met uitzondering van computers en randapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of office machinery and equipment, except computers and peripheral equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2823
* #2824 "Vervaardiging van pneumatisch en elektrisch handgereedschap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van pneumatisch en elektrisch handgereedschap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of power-driven hand tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #282
* #28240 "Vervaardiging van pneumatisch en elektrisch handgereedschap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van pneumatisch en elektrisch handgereedschap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of power-driven hand tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2824
* #2825 "Vervaardiging van machines en apparaten voor klimaatregeling, voor niet-huishoudelijk gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines en apparaten voor klimaatregeling, voor niet-huishoudelijk gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of non-domestic air conditioning equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #282
* #28250 "Vervaardiging van machines en apparaten voor klimaatregeling, voor niet-huishoudelijk gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines en apparaten voor klimaatregeling, voor niet-huishoudelijk gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of non-domestic air conditioning equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2825
* #2829 "Vervaardiging van overige machines en apparaten voor algemeen gebruik, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige machines en apparaten voor algemeen gebruik, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other general-purpose machinery n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #282
* #28290 "Vervaardiging van overige machines en apparaten voor algemeen gebruik, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige machines en apparaten voor algemeen gebruik, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other general-purpose machinery n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2829
* #283 "Vervaardiging van machines en werktuigen voor de land- en bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines en werktuigen voor de land- en bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of agricultural and forestry machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #28
* #2830 "Vervaardiging van machines en werktuigen voor de land- en bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines en werktuigen voor de land- en bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of agricultural and forestry machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #283
* #28300 "Vervaardiging van machines en werktuigen voor de land- en bosbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines en werktuigen voor de land- en bosbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of agricultural and forestry machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2830
* #284 "Vervaardiging van niet-verspanende machines voor de metaalbewerking en van gereedschapswerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van niet-verspanende machines voor de metaalbewerking en van gereedschapswerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of metal forming machinery and machine tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #28
* #2841 "Vervaardiging van niet-verspanende machines en gereedschapswerktuigen voor metaalbewerking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van niet-verspanende machines en gereedschapswerktuigen voor metaalbewerking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of metal forming machinery and machine tools for metal work"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #284
* #28410 "Vervaardiging van niet-verspanende machines en gereedschapswerktuigen voor metaalbewerking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van niet-verspanende machines en gereedschapswerktuigen voor metaalbewerking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of metal forming machinery and machine tools for metal work"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2841
* #2842 "Vervaardiging van overige gereedschapswerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige gereedschapswerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other machine tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #284
* #28420 "Vervaardiging van overige gereedschapswerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige gereedschapswerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other machine tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2842
* #289 "Vervaardiging van overige machines, apparaten en werktuigen voor specifieke doeleinden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige machines, apparaten en werktuigen voor specifieke doeleinden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other special-purpose machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #28
* #2891 "Vervaardiging van machines voor de metallurgie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de metallurgie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for metallurgy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28910 "Vervaardiging van machines voor de metallurgie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de metallurgie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for metallurgy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2891
* #2892 "Vervaardiging van machines voor de winning van delfstoffen en voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de winning van delfstoffen en voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for mining, quarrying and construction"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28920 "Vervaardiging van machines voor de winning van delfstoffen en voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de winning van delfstoffen en voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for mining, quarrying and construction"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2892
* #2893 "Vervaardiging van machines voor de productie van voedings- en genotmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de productie van voedings- en genotmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for food, beverage and tobacco processing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28930 "Vervaardiging van machines voor de productie van voedings- en genotmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de productie van voedings- en genotmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for food, beverage and tobacco processing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2893
* #2894 "Vervaardiging van machines voor de productie van textiel, kleding en leer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de productie van textiel, kleding en leer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for textile, apparel and leather production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28940 "Vervaardiging van machines voor de productie van textiel, kleding en leer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de productie van textiel, kleding en leer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for textile, apparel and leather production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2894
* #2895 "Vervaardiging van machines voor de productie van papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de productie van papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for paper and paperboard production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28950 "Vervaardiging van machines voor de productie van papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de productie van papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of machinery for paper and paperboard production"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2895
* #2896 "Vervaardiging van machines voor de kunststof- en rubberindustrie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de kunststof- en rubberindustrie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastics and rubber machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28960 "Vervaardiging van machines voor de kunststof- en rubberindustrie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor de kunststof- en rubberindustrie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of plastics and rubber machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2896
* #2897 "Vervaardiging van machines voor additieve productie, zoals 3D-printers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor additieve productie, zoals 3D-printers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of additive manufacturing machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28970 "Vervaardiging van machines voor additieve productie, zoals 3D-printers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van machines voor additieve productie, zoals 3D-printers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of additive manufacturing machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2897
* #2899 "Vervaardiging van overige machines, apparaten en werktuigen voor specifieke doeleinden (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige machines, apparaten en werktuigen voor specifieke doeleinden (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other special-purpose machinery n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #289
* #28990 "Vervaardiging van overige machines, apparaten en werktuigen voor specifieke doeleinden (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige machines, apparaten en werktuigen voor specifieke doeleinden (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other special-purpose machinery n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2899
* #29 "Vervaardiging van motorvoertuigen, aanhangwagens en opleggers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motorvoertuigen, aanhangwagens en opleggers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of motor vehicles, trailers and semi-trailers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #291 "Vervaardiging van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #29
* #2910 "Vervaardiging van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #291
* #29100 "Vervaardiging van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2910
* #292 "Vervaardiging van carrosserieën voor motorvoertuigen; vervaardiging van aanhangwagens en opleggers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van carrosserieën voor motorvoertuigen; vervaardiging van aanhangwagens en opleggers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bodies and coachwork for motor vehicles; manufacture of trailers and semi-trailers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #29
* #2920 "Vervaardiging van carrosserieën voor motorvoertuigen; vervaardiging van aanhangwagens en opleggers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van carrosserieën voor motorvoertuigen; vervaardiging van aanhangwagens en opleggers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bodies and coachwork for motor vehicles; manufacture of trailers and semi-trailers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #292
* #29201 "Carrosseriebouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Carrosseriebouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motor vehicle bodywork"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2920
* #29202 "Vervaardiging van aanhangwagens en opleggers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van aanhangwagens en opleggers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of trailers and semi-trailers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2920
* #293 "Vervaardiging van onderdelen en toebehoren voor motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van onderdelen en toebehoren voor motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of motor vehicle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #29
* #2931 "Vervaardiging van elektrische en elektronische benodigdheden voor motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische en elektronische benodigdheden voor motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electrical and electronic equipment for motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #293
* #29310 "Vervaardiging van elektrische en elektronische benodigdheden voor motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van elektrische en elektronische benodigdheden voor motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of electrical and electronic equipment for motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2931
* #2932 "Vervaardiging van overige onderdelen en toebehoren voor motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige onderdelen en toebehoren voor motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other parts and accessories for motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #293
* #29320 "Vervaardiging van overige onderdelen en toebehoren voor motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige onderdelen en toebehoren voor motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other parts and accessories for motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #2932
* #30 "Vervaardiging van overige vervoermiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige vervoermiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other transport equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #301 "Scheepsbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Scheepsbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building of ships and boats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #30
* #3011 "Bouw van civiele schepen en drijvend materieel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van civiele schepen en drijvend materieel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building of civilian ships and floating structures"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #301
* #30110 "Bouw van civiele schepen en drijvend materieel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van civiele schepen en drijvend materieel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building of civilian ships and floating structures"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3011
* #3012 "Bouw van sport- en recreatievaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van sport- en recreatievaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building of pleasure and sporting boats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #301
* #30120 "Bouw van sport- en recreatievaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van sport- en recreatievaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building of pleasure and sporting boats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3012
* #3013 "Bouw van militaire schepen en vaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van militaire schepen en vaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building of military ships and vessels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #301
* #30130 "Bouw van militaire schepen en vaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van militaire schepen en vaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building of military ships and vessels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3013
* #302 "Vervaardiging van rollend materieel voor spoorwegen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van rollend materieel voor spoorwegen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of railway locomotives and rolling stock"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #30
* #3020 "Vervaardiging van rollend materieel voor spoorwegen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van rollend materieel voor spoorwegen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of railway locomotives and rolling stock"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #302
* #30200 "Vervaardiging van rollend materieel voor spoorwegen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van rollend materieel voor spoorwegen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of railway locomotives and rolling stock"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3020
* #303 "Vervaardiging van lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of air and spacecraft and related machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #30
* #3031 "Vervaardiging van civiele lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van civiele lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of civilian air and spacecraft and related machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #303
* #30310 "Vervaardiging van civiele lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van civiele lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of civilian air and spacecraft and related machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3031
* #3032 "Vervaardiging van militaire lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van militaire lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of military air and spacecraft and related machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #303
* #30320 "Vervaardiging van militaire lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van militaire lucht- en ruimtevaartuigen en aanverwante toestellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of military air and spacecraft and related machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3032
* #304 "Vervaardiging van militaire gevechtsvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van militaire gevechtsvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of military fighting vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #30
* #3040 "Vervaardiging van militaire gevechtsvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van militaire gevechtsvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of military fighting vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #304
* #30400 "Vervaardiging van militaire gevechtsvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van militaire gevechtsvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of military fighting vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3040
* #309 "Vervaardiging van transportmiddelen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van transportmiddelen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of transport equipment n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #30
* #3091 "Vervaardiging van motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #309
* #30910 "Vervaardiging van motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3091
* #3092 "Vervaardiging van fietsen en voertuigen voor personen met een fysieke beperking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van fietsen en voertuigen voor personen met een fysieke beperking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bicycles and invalid carriages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #309
* #30920 "Vervaardiging van fietsen en voertuigen voor personen met een fysieke beperking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van fietsen en voertuigen voor personen met een fysieke beperking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of bicycles and invalid carriages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3092
* #3099 "Vervaardiging van overige transportmiddelen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige transportmiddelen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other transport equipment n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #309
* #30990 "Vervaardiging van overige transportmiddelen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige transportmiddelen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of other transport equipment n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3099
* #31 "Vervaardiging van meubelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van meubelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of furniture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #310 "Vervaardiging van meubelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van meubelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of furniture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #31
* #3100 "Vervaardiging van meubelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van meubelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of furniture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #310
* #31000 "Vervaardiging van meubelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van meubelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of furniture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3100
* #32 "Vervaardiging van overige goederen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige goederen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other manufacturing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #321 "Vervaardiging van juwelen, sieraden en aanverwante artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van juwelen, sieraden en aanverwante artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of jewellery, bijouterie and related articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #32
* #3211 "Slaan van munten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Slaan van munten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Striking of coins"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #321
* #32110 "Slaan van munten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Slaan van munten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Striking of coins"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3211
* #3212 "Vervaardiging van juwelen en aanverwante artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van juwelen en aanverwante artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of jewellery and related articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #321
* #32120 "Vervaardiging van juwelen en aanverwante artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van juwelen en aanverwante artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of jewellery and related articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3212
* #3213 "Vervaardiging van imitatiesieraden en aanverwante artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van imitatiesieraden en aanverwante artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of imitation jewellery and related articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #321
* #32130 "Vervaardiging van imitatiesieraden en aanverwante artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van imitatiesieraden en aanverwante artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of imitation jewellery and related articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3213
* #322 "Vervaardiging van muziekinstrumenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van muziekinstrumenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of musical instruments"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #32
* #3220 "Vervaardiging van muziekinstrumenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van muziekinstrumenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of musical instruments"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #322
* #32200 "Vervaardiging van muziekinstrumenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van muziekinstrumenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of musical instruments"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3220
* #323 "Vervaardiging van sportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van sportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of sports goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #32
* #3230 "Vervaardiging van sportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van sportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of sports goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #323
* #32300 "Vervaardiging van sportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van sportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of sports goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3230
* #324 "Vervaardiging van spellen en speelgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van spellen en speelgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of games and toys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #32
* #3240 "Vervaardiging van spellen en speelgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van spellen en speelgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of games and toys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #324
* #32400 "Vervaardiging van spellen en speelgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van spellen en speelgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of games and toys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3240
* #325 "Vervaardiging van medische en tandheelkundige instrumenten en benodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van medische en tandheelkundige instrumenten en benodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of medical and dental instruments and supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #32
* #3250 "Vervaardiging van medische en tandheelkundige instrumenten en benodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van medische en tandheelkundige instrumenten en benodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of medical and dental instruments and supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #325
* #32501 "Vervaardiging van tandheelkundige instrumenten en benodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van tandheelkundige instrumenten en benodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of dental instruments and supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3250
* #32502 "Vervaardiging van medische instrumenten en benodigdheden (niet tandheelkundig)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van medische instrumenten en benodigdheden (niet tandheelkundig)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing of medical instruments and supplies (non-dental)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3250
* #329 "Vervaardiging van goederen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van goederen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacturing n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #32
* #3291 "Vervaardiging van borstelwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van borstelwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of brooms and brushes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #329
* #32910 "Vervaardiging van borstelwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van borstelwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of brooms and brushes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3291
* #3299 "Vervaardiging van overige goederen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige goederen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other manufacturing n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #329
* #32990 "Vervaardiging van overige goederen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervaardiging van overige goederen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other manufacturing n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3299
* #33 "Reparatie, onderhoud en installatie van machines en apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie, onderhoud en installatie van machines en apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair, maintenance and installation of machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #C
* #331 "Reparatie en onderhoud van producten van metaal, machines en apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van producten van metaal, machines en apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of fabricated metal products, machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #33
* #3311 "Reparatie en onderhoud van producten van metaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van producten van metaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of fabricated metal products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33110 "Reparatie en onderhoud van producten van metaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van producten van metaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of fabricated metal products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3311
* #3312 "Reparatie en onderhoud van machines"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van machines"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33121 "Reparatie en onderhoud van machines voor algemeen gebruik en van machine-onderdelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van machines voor algemeen gebruik en van machine-onderdelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance services of general-purpose machinery and machine parts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3312
* #33122 "Reparatie en onderhoud van pneumatisch en elektrisch gereedschap en gereedschapswerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van pneumatisch en elektrisch gereedschap en gereedschapswerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance services of pneumatic and electric tools and machine tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3312
* #33123 "Reparatie en onderhoud van machines voor een specifieke bedrijfstak"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van machines voor een specifieke bedrijfstak"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance services of machinery for a specific industrial sector"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3312
* #3313 "Reparatie en onderhoud van elektronische en optische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van elektronische en optische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of electronic and optical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33130 "Reparatie en onderhoud van elektronische en optische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van elektronische en optische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of electronic and optical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3313
* #3314 "Reparatie en onderhoud van elektrische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van elektrische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of electrical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33140 "Reparatie en onderhoud van elektrische apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van elektrische apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of electrical equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3314
* #3315 "Reparatie en onderhoud van civiele schepen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van civiele schepen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of civilian ships and boats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33150 "Reparatie en onderhoud van civiele schepen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van civiele schepen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of civilian ships and boats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3315
* #3316 "Reparatie en onderhoud van civiele lucht- en ruimtevaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van civiele lucht- en ruimtevaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of civilian air and spacecraft"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33160 "Reparatie en onderhoud van civiele lucht- en ruimtevaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van civiele lucht- en ruimtevaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of civilian air and spacecraft"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3316
* #3317 "Reparatie en onderhoud van overige civiele transportmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van overige civiele transportmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of other civilian transport equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33170 "Reparatie en onderhoud van overige civiele transportmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van overige civiele transportmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of other civilian transport equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3317
* #3318 "Reparatie en onderhoud van militaire gevechtsvoertuigen, schepen, lucht- en ruimtevaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van militaire gevechtsvoertuigen, schepen, lucht- en ruimtevaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of military fighting vehicles, ships, boats, air and spacecraft"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33180 "Reparatie en onderhoud van militaire gevechtsvoertuigen, schepen, lucht- en ruimtevaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van militaire gevechtsvoertuigen, schepen, lucht- en ruimtevaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of military fighting vehicles, ships, boats, air and spacecraft"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3318
* #3319 "Reparatie en onderhoud van overige apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van overige apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of other equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #331
* #33190 "Reparatie en onderhoud van overige apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van overige apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of other equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3319
* #332 "Installatie van industriële machines en apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Installatie van industriële machines en apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Installation of industrial machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #33
* #3320 "Installatie van industriële machines en apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Installatie van industriële machines en apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Installation of industrial machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #332
* #33200 "Installatie van industriële machines en apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Installatie van industriële machines en apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Installation of industrial machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3320
* #D "PRODUCTIE EN DISTRIBUTIE VAN EN HANDEL IN ELEKTRICITEIT, GAS, STOOM EN GEKOELDE LUCHT"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "PRODUCTIE EN DISTRIBUTIE VAN EN HANDEL IN ELEKTRICITEIT, GAS, STOOM EN GEKOELDE LUCHT"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "ELECTRICITY, GAS, STEAM AND AIR CONDITIONING SUPPLY"
* #35 "Productie en distributie van en handel in elektriciteit, gas, stoom en gekoelde lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie en distributie van en handel in elektriciteit, gas, stoom en gekoelde lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Electricity, gas, steam and air conditioning supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #D
* #351 "Productie, transmissie en distributie van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie, transmissie en distributie van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Electric power generation, transmission and distribution"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #35
* #3511 "Productie van elektriciteit uit niet-hernieuwbare bronnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van elektriciteit uit niet-hernieuwbare bronnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of electricity from non-renewable sources"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #351
* #35110 "Productie van elektriciteit uit niet-hernieuwbare bronnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van elektriciteit uit niet-hernieuwbare bronnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of electricity from non-renewable sources"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3511
* #3512 "Productie van elektriciteit uit hernieuwbare bronnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van elektriciteit uit hernieuwbare bronnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of electricity from renewable sources"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #351
* #35121 "Productie van elektriciteit uit windenergie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van elektriciteit uit windenergie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of electricity from wind power"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3512
* #35122 "Productie van elektriciteit door zonnecellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van elektriciteit door zonnecellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of electricity from solar cells"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3512
* #35123 "Productie van elektriciteit uit waterkracht, biomassa en overige hernieuwbare bronnen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van elektriciteit uit waterkracht, biomassa en overige hernieuwbare bronnen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of electricity from hydropower, biomass and other renewable sources"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3512
* #3513 "Transmissie van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Transmissie van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Transmission of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #351
* #35130 "Transmissie van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Transmissie van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Transmission of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3513
* #3514 "Distributie van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Distributie van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Distribution of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #351
* #35140 "Distributie van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Distributie van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Distribution of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3514
* #3515 "Handel in elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Trade of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #351
* #35150 "Handel in elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Trade of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3515
* #3516 "Opslag van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Storage of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #351
* #35160 "Opslag van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Storage of electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3516
* #352 "Productie van gas, en distributie van gasvormige brandstoffen via leidingen en handel daarin"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van gas, en distributie van gasvormige brandstoffen via leidingen en handel daarin"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of gas, and distribution of gaseous fuels through mains"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #35
* #3521 "Productie van gas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van gas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #352
* #35210 "Productie van gas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van gas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Manufacture of gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3521
* #3522 "Distributie van gasvormige brandstoffen via leidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Distributie van gasvormige brandstoffen via leidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Distribution of gaseous fuels through mains"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #352
* #35220 "Distributie van gasvormige brandstoffen via leidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Distributie van gasvormige brandstoffen via leidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Distribution of gaseous fuels through mains"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3522
* #3523 "Handel in gas via leidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in gas via leidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Trade of gas through mains"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #352
* #35230 "Handel in gas via leidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in gas via leidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Trade of gas through mains"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3523
* #3524 "Opslag van gas als onderdeel van netwerkleveringsdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag van gas als onderdeel van netwerkleveringsdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Storage of gas as part of network supply services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #352
* #35240 "Opslag van gas als onderdeel van netwerkleveringsdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag van gas als onderdeel van netwerkleveringsdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Storage of gas as part of network supply services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3524
* #353 "Productie en distributie van en handel in stoom en gekoelde lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie en distributie van en handel in stoom en gekoelde lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Steam and air conditioning supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #35
* #3530 "Productie en distributie van en handel in stoom en gekoelde lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie en distributie van en handel in stoom en gekoelde lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Steam and air conditioning supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #353
* #35300 "Productie en distributie van en handel in stoom en gekoelde lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie en distributie van en handel in stoom en gekoelde lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Steam and air conditioning supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3530
* #354 "Activiteiten van makelaars en bemiddelaars voor elektriciteit en aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van makelaars en bemiddelaars voor elektriciteit en aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of brokers and agents for electric power and natural gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #35
* #3540 "Activiteiten van makelaars en bemiddelaars voor elektriciteit en aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van makelaars en bemiddelaars voor elektriciteit en aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of brokers and agents for electric power and natural gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #354
* #35400 "Activiteiten van makelaars en bemiddelaars voor elektriciteit en aardgas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van makelaars en bemiddelaars voor elektriciteit en aardgas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of brokers and agents for electric power and natural gas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3540
* #E "WINNING EN DISTRIBUTIE VAN WATER; AFVAL- EN AFVALWATERBEHEER EN SANERING"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "WINNING EN DISTRIBUTIE VAN WATER; AFVAL- EN AFVALWATERBEHEER EN SANERING"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "WATER SUPPLY; SEWERAGE, WASTE MANAGEMENT AND REMEDIATION ACTIVITIES"
* #36 "Winning, behandeling en distributie van water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning, behandeling en distributie van water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Water collection, treatment and supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #E
* #360 "Winning, behandeling en distributie van water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning, behandeling en distributie van water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Water collection, treatment and supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #36
* #3600 "Winning, behandeling en distributie van water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning, behandeling en distributie van water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Water collection, treatment and supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #360
* #36000 "Winning, behandeling en distributie van water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning, behandeling en distributie van water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Water collection, treatment and supply"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3600
* #37 "Afvalwaterinzameling en -behandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afvalwaterinzameling en -behandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sewerage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #E
* #370 "Afvalwaterinzameling en -behandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afvalwaterinzameling en -behandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sewerage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #37
* #3700 "Afvalwaterinzameling en -behandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afvalwaterinzameling en -behandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sewerage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #370
* #37000 "Afvalwaterinzameling en -behandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afvalwaterinzameling en -behandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sewerage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3700
* #38 "Afvalinzameling, voorbereiding tot recycling, en verwijdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afvalinzameling, voorbereiding tot recycling, en verwijdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Waste collection, recovery and disposal activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #E
* #381 "Inzameling van afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inzameling van afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Waste collection"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #38
* #3811 "Inzameling van niet-schadelijk afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inzameling van niet-schadelijk afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Collection of non-hazardous waste"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #381
* #38110 "Inzameling van niet-schadelijk afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inzameling van niet-schadelijk afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Collection of non-hazardous waste"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3811
* #3812 "Inzameling van schadelijk afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inzameling van schadelijk afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Collection of hazardous waste"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #381
* #38120 "Inzameling van schadelijk afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inzameling van schadelijk afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Collection of hazardous waste"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3812
* #382 "Terugwinning uit afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Terugwinning uit afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Waste recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #38
* #3821 "Terugwinning van materialen uit afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Terugwinning van materialen uit afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Materials recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #382
* #38210 "Terugwinning van materialen uit afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Terugwinning van materialen uit afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Materials recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3821
* #3822 "Winning van energie uit afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van energie uit afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Energy recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #382
* #38220 "Winning van energie uit afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Winning van energie uit afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Energy recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3822
* #3823 "Overige terugwinning uit afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige terugwinning uit afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other waste recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #382
* #38230 "Overige terugwinning uit afval"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige terugwinning uit afval"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other waste recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3823
* #383 "Verwijdering van afval zonder terugwinning"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verwijdering van afval zonder terugwinning"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Waste disposal without recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #38
* #3831 "Verbranding zonder energieterugwinning"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verbranding zonder energieterugwinning"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Incineration without energy recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #383
* #38310 "Verbranding zonder energieterugwinning"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verbranding zonder energieterugwinning"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Incineration without energy recovery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3831
* #3832 "Storten of permanent opslaan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Storten of permanent opslaan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Landfilling or permanent storage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #383
* #38320 "Storten of permanent opslaan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Storten of permanent opslaan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Landfilling or permanent storage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3832
* #3833 "Overige afvalverwijdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige afvalverwijdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other waste disposal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #383
* #38330 "Overige afvalverwijdering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige afvalverwijdering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other waste disposal"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3833
* #39 "Sanering en overig afvalbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sanering en overig afvalbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Remediation activities and other waste management service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #E
* #390 "Sanering en overig afvalbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sanering en overig afvalbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Remediation activities and other waste management service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #39
* #3900 "Sanering en overig afvalbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sanering en overig afvalbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Remediation activities and other waste management service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #390
* #39001 "Sanering van bodem en grondwater"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sanering van bodem en grondwater"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Remediation of soil and groundwater"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3900
* #39002 "Overige sanering en afvalbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige sanering en afvalbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other remediation and waste management service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #3900
* #F "BOUWNIJVERHEID"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "BOUWNIJVERHEID"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "CONSTRUCTION"
* #41 "Burgerlijke en utiliteitsbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Burgerlijke en utiliteitsbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of residential and non-residential buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #F
* #410 "Burgerlijke en utiliteitsbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Burgerlijke en utiliteitsbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of residential and non-residential buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #41
* #4100 "Burgerlijke en utiliteitsbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Burgerlijke en utiliteitsbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of residential and non-residential buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #410
* #41000 "Burgerlijke en utiliteitsbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Burgerlijke en utiliteitsbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of residential and non-residential buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4100
* #42 "Grond-, water- en wegenbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Grond-, water- en wegenbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Civil engineering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #F
* #421 "Bouw van wegen, spoorwegen, bruggen en tunnels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van wegen, spoorwegen, bruggen en tunnels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of roads and railways"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #42
* #4211 "Wegenbouw en stratenmaken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wegenbouw en stratenmaken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of roads and motorways"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #421
* #42110 "Wegenbouw en stratenmaken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wegenbouw en stratenmaken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of roads and motorways"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4211
* #4212 "Bouw van boven- en ondergrondse spoorwegen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van boven- en ondergrondse spoorwegen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of railways and underground railways"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #421
* #42120 "Bouw van boven- en ondergrondse spoorwegen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van boven- en ondergrondse spoorwegen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of railways and underground railways"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4212
* #4213 "Bouw van bruggen en tunnels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van bruggen en tunnels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of bridges and tunnels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #421
* #42130 "Bouw van bruggen en tunnels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van bruggen en tunnels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of bridges and tunnels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4213
* #422 "Bouw van civieltechnische werken ten behoeve van utiliteitsbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van civieltechnische werken ten behoeve van utiliteitsbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of utility projects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #42
* #4221 "Leggen van rioleringen, buizen en pijpleidingen; aanleg van bronbemaling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Leggen van rioleringen, buizen en pijpleidingen; aanleg van bronbemaling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of utility projects for fluids"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #422
* #42210 "Leggen van rioleringen, buizen en pijpleidingen; aanleg van bronbemaling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Leggen van rioleringen, buizen en pijpleidingen; aanleg van bronbemaling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of utility projects for fluids"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4221
* #4222 "Leggen van elektriciteits- en telecommunicatiekabels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Leggen van elektriciteits- en telecommunicatiekabels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of utility projects for electricity and telecommunications"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #422
* #42220 "Leggen van elektriciteits- en telecommunicatiekabels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Leggen van elektriciteits- en telecommunicatiekabels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of utility projects for electricity and telecommunications"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4222
* #429 "Bouw van overige civieltechnische werken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van overige civieltechnische werken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of other civil engineering projects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #42
* #4291 "Waterbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Waterbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of water projects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #429
* #42910 "Waterbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Waterbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of water projects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4291
* #4299 "Bouw van overige civieltechnische werken (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van overige civieltechnische werken (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of other civil engineering projects n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #429
* #42990 "Bouw van overige civieltechnische werken (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouw van overige civieltechnische werken (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Construction of other civil engineering projects n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4299
* #43 "Gespecialiseerde werkzaamheden in de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde werkzaamheden in de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised construction activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #F
* #431 "Slopen en bouwrijp maken van terreinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Slopen en bouwrijp maken van terreinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Demolition and site preparation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #43
* #4311 "Slopen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Slopen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Demolition"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #431
* #43110 "Slopen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Slopen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Demolition"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4311
* #4312 "Bouwrijp maken van terreinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouwrijp maken van terreinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Site preparation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #431
* #43120 "Bouwrijp maken van terreinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouwrijp maken van terreinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Site preparation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4312
* #4313 "Proefboren en boren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Proefboren en boren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Test drilling and boring"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #431
* #43130 "Proefboren en boren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Proefboren en boren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Test drilling and boring"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4313
* #432 "Elektrische installatie, loodgieterswerk en overige bouwinstallatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Elektrische installatie, loodgieterswerk en overige bouwinstallatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Electrical, plumbing and other construction installation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #43
* #4321 "Elektrische installatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Elektrische installatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Electrical installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #432
* #43211 "Installatie van zonnepanelen voor de productie van elektriciteit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Installatie van zonnepanelen voor de productie van elektriciteit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Installation of solar panels for generating electricity"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4321
* #43212 "Overige elektrische installatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige elektrische installatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other electrical installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4321
* #4322 "Loodgieterswerk, installatie van verwarming en klimaatregeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Loodgieterswerk, installatie van verwarming en klimaatregeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Plumbing, heat and air-conditioning installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #432
* #43221 "Loodgieters- en fitterswerk; installatie van sanitair"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Loodgieters- en fitterswerk; installatie van sanitair"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Plumbing and fitting; sanitary installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4322
* #43222 "Installatie van verwarmings- en luchtbehandelingsapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Installatie van verwarmings- en luchtbehandelingsapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Installation of heating and air-conditioning equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4322
* #4323 "Aanbrengen van isolatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aanbrengen van isolatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Installation of insulation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #432
* #43230 "Aanbrengen van isolatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Aanbrengen van isolatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Installation of insulation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4323
* #4324 "Overige bouwinstallatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige bouwinstallatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other construction installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #432
* #43240 "Overige bouwinstallatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige bouwinstallatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other construction installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4324
* #433 "Afwerking van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afwerking van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Building completion and finishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #43
* #4331 "Stukadoorswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Stukadoorswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Plastering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #433
* #43310 "Stukadoorswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Stukadoorswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Plastering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4331
* #4332 "Bouwtimmeren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouwtimmeren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Joinery installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #433
* #43320 "Bouwtimmeren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bouwtimmeren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Joinery installation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4332
* #4333 "Afwerken van vloeren en wanden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afwerken van vloeren en wanden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Floor and wall covering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #433
* #43330 "Afwerken van vloeren en wanden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Afwerken van vloeren en wanden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Floor and wall covering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4333
* #4334 "Schilderen en glaszetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Schilderen en glaszetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Painting and glazing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #433
* #43340 "Schilderen en glaszetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Schilderen en glaszetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Painting and glazing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4334
* #4335 "Overige werkzaamheden in verband met de afwerking van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige werkzaamheden in verband met de afwerking van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other building completion and finishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #433
* #43350 "Overige werkzaamheden in verband met de afwerking van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige werkzaamheden in verband met de afwerking van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other building completion and finishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4335
* #434 "Gespecialiseerde bouwactiviteiten in de constructie van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde bouwactiviteiten in de constructie van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised construction activities in construction of buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #43
* #4341 "Dakdekken en bouwen van dakconstructies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dakdekken en bouwen van dakconstructies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Roofing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #434
* #43410 "Dakdekken en bouwen van dakconstructies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dakdekken en bouwen van dakconstructies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Roofing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4341
* #4342 "Overige gespecialiseerde bouwactiviteiten in de constructie van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde bouwactiviteiten in de constructie van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised construction activities in construction of buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #434
* #43420 "Overige gespecialiseerde bouwactiviteiten in de constructie van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde bouwactiviteiten in de constructie van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised construction activities in construction of buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4342
* #435 "Gespecialiseerde bouwactiviteiten op het gebied van civiele techniek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde bouwactiviteiten op het gebied van civiele techniek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised construction activities in civil engineering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #43
* #4350 "Gespecialiseerde bouwactiviteiten op het gebied van civiele techniek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde bouwactiviteiten op het gebied van civiele techniek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised construction activities in civil engineering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #435
* #43500 "Gespecialiseerde bouwactiviteiten op het gebied van civiele techniek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde bouwactiviteiten op het gebied van civiele techniek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised construction activities in civil engineering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4350
* #436 "Bemiddelingsdiensten voor gespecialiseerde bouwactiviteiten."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsdiensten voor gespecialiseerde bouwactiviteiten."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for specialised construction services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #43
* #4360 "Bemiddelingsdiensten voor gespecialiseerde bouwactiviteiten."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsdiensten voor gespecialiseerde bouwactiviteiten."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for specialised construction services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #436
* #43600 "Bemiddelingsdiensten voor gespecialiseerde bouwactiviteiten."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsdiensten voor gespecialiseerde bouwactiviteiten."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for specialised construction services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4360
* #439 "Overige gespecialiseerde bouwactiviteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde bouwactiviteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised construction activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #43
* #4391 "Metselwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Metselwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Masonry and bricklaying activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #439
* #43910 "Metselwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Metselwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Masonry and bricklaying activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4391
* #4399 "Overige gespecialiseerde bouwactiviteiten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde bouwactiviteiten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised construction activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #439
* #43990 "Overige gespecialiseerde bouwactiviteiten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde bouwactiviteiten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised construction activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4399
* #G "GROOT- EN DETAILHANDEL"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "GROOT- EN DETAILHANDEL"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "WHOLESALE AND RETAIL TRADE"
* #46 "Groothandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale trade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #G
* #461 "Handelsbemiddeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale on a fee or contract basis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4611 "Handelsbemiddeling in de groothandel in landbouwproducten, levende dieren, textielgrondstoffen en halffabricaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in landbouwproducten, levende dieren, textielgrondstoffen en halffabricaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of agricultural raw materials, live animals, textile raw materials and semi-finished goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46110 "Handelsbemiddeling in de groothandel in landbouwproducten, levende dieren, textielgrondstoffen en halffabricaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in landbouwproducten, levende dieren, textielgrondstoffen en halffabricaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of agricultural raw materials, live animals, textile raw materials and semi-finished goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4611
* #4612 "Handelsbemiddeling in de groothandel in brandstoffen, ertsen, metalen en chemische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in brandstoffen, ertsen, metalen en chemische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of fuels, ores, metals and industrial chemicals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46120 "Handelsbemiddeling in de groothandel in brandstoffen, ertsen, metalen en chemische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in brandstoffen, ertsen, metalen en chemische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of fuels, ores, metals and industrial chemicals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4612
* #4613 "Handelsbemiddeling in de groothandel in hout en bouwmaterialen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in hout en bouwmaterialen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of timber and building materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46130 "Handelsbemiddeling in de groothandel in hout en bouwmaterialen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in hout en bouwmaterialen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of timber and building materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4613
* #4614 "Handelsbemiddeling in de groothandel in machines, apparaten en werktuigen voor de industrie en in schepen en luchtvaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in machines, apparaten en werktuigen voor de industrie en in schepen en luchtvaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of machinery, industrial equipment, ships and aircraft"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46140 "Handelsbemiddeling in de groothandel in machines, apparaten en werktuigen voor de industrie en in schepen en luchtvaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in machines, apparaten en werktuigen voor de industrie en in schepen en luchtvaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of machinery, industrial equipment, ships and aircraft"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4614
* #4615 "Handelsbemiddeling in de groothandel in meubelen, huishoudelijke artikelen en ijzerwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in meubelen, huishoudelijke artikelen en ijzerwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of furniture, household goods, hardware and ironmongery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46150 "Handelsbemiddeling in de groothandel in meubelen, huishoudelijke artikelen en ijzerwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in meubelen, huishoudelijke artikelen en ijzerwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of furniture, household goods, hardware and ironmongery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4615
* #4616 "Handelsbemiddeling in de groothandel in textiel, kleding, bont, schoeisel en lederwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in textiel, kleding, bont, schoeisel en lederwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of textiles, clothing, fur, footwear and leather goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46160 "Handelsbemiddeling in de groothandel in textiel, kleding, bont, schoeisel en lederwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in textiel, kleding, bont, schoeisel en lederwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of textiles, clothing, fur, footwear and leather goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4616
* #4617 "Handelsbemiddeling in de groothandel in voedings- en genotmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in voedings- en genotmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of food, beverages and tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46170 "Handelsbemiddeling in de groothandel in voedings- en genotmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in voedings- en genotmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of food, beverages and tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4617
* #4618 "Handelsbemiddeling in de groothandel in overige goederen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in overige goederen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of other particular products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46180 "Handelsbemiddeling in de groothandel in overige goederen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de groothandel in overige goederen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in the wholesale of other particular products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4618
* #4619 "Handelsbemiddeling in de niet-gespecialiseerde groothandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de niet-gespecialiseerde groothandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in non-specialised wholesale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #461
* #46190 "Handelsbemiddeling in de niet-gespecialiseerde groothandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handelsbemiddeling in de niet-gespecialiseerde groothandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of agents involved in non-specialised wholesale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4619
* #462 "Groothandel in landbouwproducten en levende dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in landbouwproducten en levende dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of agricultural raw materials and live animals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4621 "Groothandel in granen, ruwe tabak, oliën, zaden en veevoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in granen, ruwe tabak, oliën, zaden en veevoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of grain, unmanufactured tobacco, seeds and animal feeds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #462
* #46211 "Groothandel in granen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in granen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of grain"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46212 "Groothandel in zaden, pootgoed en peulvruchten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in zaden, pootgoed en peulvruchten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of seeds, seedlings and legumes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46213 "Groothandel in hooi, stro en ruwvoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in hooi, stro en ruwvoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of hay, straw and roughage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46214 "Groothandel in meng- en krachtvoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in meng- en krachtvoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of compound feed and concentrates"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46215 "Groothandel in veevoer (geen ruw-, meng- en krachtvoer)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in veevoer (geen ruw-, meng- en krachtvoer)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of livestock feed (not roughage, compound feed and concentrates)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46216 "Groothandel in ruwe plantaardige en dierlijke oliën en vetten en oliehoudende grondstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in ruwe plantaardige en dierlijke oliën en vetten en oliehoudende grondstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of crude vegetable and animal oils and fats and oleaginous raw materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46217 "Groothandel in ruwe tabak"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in ruwe tabak"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of unmanufactured tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46218 "Groothandel in akkerbouwproducten en veevoer algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in akkerbouwproducten en veevoer algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of arable products and livestock feeds, general range"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #46219 "Groothandel in overige akkerbouwproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige akkerbouwproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other arable products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4621
* #4622 "Groothandel in bloemen en planten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in bloemen en planten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of flowers and plants"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #462
* #46220 "Groothandel in bloemen en planten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in bloemen en planten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of flowers and plants"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4622
* #4623 "Groothandel in levende dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in levende dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of live animals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #462
* #46231 "Groothandel in levend vee"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in levend vee"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of live cattle"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4623
* #46232 "Groothandel in huisdieren, siervissen, siervogels en wilde dieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in huisdieren, siervissen, siervogels en wilde dieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of pets, ornamental fish, ornamental birds and wild animals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4623
* #4624 "Groothandel in huiden, vellen, leer en halffabrikaten van leer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in huiden, vellen, leer en halffabrikaten van leer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of hides, skins and leather"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #462
* #46241 "Groothandel in huiden en vellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in huiden en vellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of hides and skins"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4624
* #46242 "Groothandel in leer en halffabrikaten van leer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in leer en halffabrikaten van leer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of leather and semi-finished leather products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4624
* #463 "Groothandel in voedingsmiddelen, dranken en overige genotmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in voedingsmiddelen, dranken en overige genotmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of food, beverages and tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4631 "Groothandel in groenten en fruit en in consumptie-aardappelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in groenten en fruit en in consumptie-aardappelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of fruit and vegetables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46311 "Groothandel in groenten en fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in groenten en fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of fruit and vegetables, except ware potatoes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4631
* #46312 "Groothandel in consumptie-aardappelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in consumptie-aardappelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of ware potatoes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4631
* #4632 "Groothandel in vlees, vleesproducten, vis en visproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vlees, vleesproducten, vis en visproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of meat, meat products, fish and fish products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46321 "Groothandel in vlees en vleesproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vlees en vleesproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of meat and meat products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4632
* #46322 "Groothandel in vis en visproducten en schaal- en weekdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vis en visproducten en schaal- en weekdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of fish and fish products, crustaceans and molluscs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4632
* #4633 "Groothandel in zuivelproducten, spijsoliën en -vetten en eieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in zuivelproducten, spijsoliën en -vetten en eieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of dairy products, eggs and edible oils and fats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46331 "Groothandel in zuivelproducten en spijsoliën en -vetten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in zuivelproducten en spijsoliën en -vetten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of dairy products and edible oils and fats"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4633
* #46332 "Groothandel in eieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in eieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesalef of eggs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4633
* #4634 "Groothandel in dranken (met uitzondering van zuivel)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in dranken (met uitzondering van zuivel)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46340 "Groothandel in dranken (met uitzondering van zuivel)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in dranken (met uitzondering van zuivel)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4634
* #4635 "Groothandel in tabaksproducten en rokersbenodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in tabaksproducten en rokersbenodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46350 "Groothandel in tabaksproducten en rokersbenodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in tabaksproducten en rokersbenodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4635
* #4636 "Groothandel in suiker, chocolade en suikerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in suiker, chocolade en suikerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of sugar, chocolate and sugar confectionery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46360 "Groothandel in suiker, chocolade en suikerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in suiker, chocolade en suikerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of sugar, chocolate and sugar confectionery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4636
* #4637 "Groothandel in koffie, thee, cacao en specerijen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in koffie, thee, cacao en specerijen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of coffee, tea, cocoa and spices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46370 "Groothandel in koffie, thee, cacao en specerijen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in koffie, thee, cacao en specerijen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of coffee, tea, cocoa and spices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4637
* #4638 "Groothandel in overige voedingsmiddelen en in overige grondstoffen en halffabrikaten voor de voedingsmiddelenindustrie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige voedingsmiddelen en in overige grondstoffen en halffabrikaten voor de voedingsmiddelenindustrie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other food"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46381 "Groothandel in snacks"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in snacks"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of snacks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4638
* #46382 "Gespecialiseerde groothandel in overige voedingsmiddelen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde groothandel in overige voedingsmiddelen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised wholesale of other food (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4638
* #46383 "Groothandel in bakkerijgrondstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in bakkerijgrondstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of bakery raw materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4638
* #46389 "Gespecialiseerde groothandel in overige grondstoffen en halffabrikaten voor de voedings- en genotmiddelenindustrie (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde groothandel in overige grondstoffen en halffabrikaten voor de voedings- en genotmiddelenindustrie (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised wholesale of other raw materials and semi-finished goods for the food, beverage and tobacco industries (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4638
* #4639 "Groothandel in voedingsmiddelen, dranken en overige genotmiddelen algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in voedingsmiddelen, dranken en overige genotmiddelen algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised wholesale of food, beverages and tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #463
* #46390 "Groothandel in voedingsmiddelen, dranken en overige genotmiddelen algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in voedingsmiddelen, dranken en overige genotmiddelen algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised wholesale of food, beverages and tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4639
* #464 "Groothandel in consumentenartikelen (non-food)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in consumentenartikelen (non-food)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of household goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4641 "Groothandel in kledingstoffen, fournituren en overige textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in kledingstoffen, fournituren en overige textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46411 "Groothandel in kledingstoffen en fournituren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in kledingstoffen en fournituren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of clothing materials and haberdashery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4641
* #46412 "Groothandel in overige textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4641
* #4642 "Groothandel in kleding, schoenen en kledingaccessoires"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in kleding, schoenen en kledingaccessoires"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of clothing and footwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46421 "Groothandel in bovenkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in bovenkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of outer clothing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4642
* #46422 "Groothandel in werkkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in werkkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of workwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4642
* #46423 "Groothandel in onderkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in onderkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of underwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4642
* #46424 "Groothandel in schoenen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in schoenen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of footwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4642
* #46425 "Groothandel in kledingaccessoires"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in kledingaccessoires"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of clothing accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4642
* #46429 "Groothandel in textielwaren algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in textielwaren algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of a general range of clothing and textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4642
* #4643 "Groothandel in elektrische huishoudelijke apparatuur, audio- en videoapparatuur, fotografische en optische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in elektrische huishoudelijke apparatuur, audio- en videoapparatuur, fotografische en optische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of electrical household appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46431 "Groothandel in witgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in witgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of white goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4643
* #46432 "Groothandel in elektrische huishoudelijke apparatuur (geen witgoed, audio en video)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in elektrische huishoudelijke apparatuur (geen witgoed, audio en video)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of electrical household appliances (not white goods, audio and video)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4643
* #46433 "Groothandel in audio- en video-apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in audio- en video-apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of audio and video equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4643
* #46434 "Groothandel in fotografische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in fotografische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of photographic goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4643
* #46435 "Groothandel in optische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in optische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of optical articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4643
* #4644 "Groothandel in glas, porselein en aardewerk en in reinigingsmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in glas, porselein en aardewerk en in reinigingsmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of china and glassware and cleaning materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46441 "Groothandel in glas, porselein en aardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in glas, porselein en aardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of glass, china and pottery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4644
* #46442 "Groothandel in was-, poets- en reinigingsmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in was-, poets- en reinigingsmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of washing, polishing and cleaning agents"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4644
* #4645 "Groothandel in parfums en cosmetica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in parfums en cosmetica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of perfume and cosmetics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46450 "Groothandel in parfums en cosmetica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in parfums en cosmetica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of perfume and cosmetics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4645
* #4646 "Groothandel in farmaceutische producten, medische instrumenten en orthopedische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in farmaceutische producten, medische instrumenten en orthopedische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of pharmaceutical and medical goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46461 "Groothandel in farmaceutische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in farmaceutische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of farmaceutical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4646
* #46462 "Groothandel in medische en tandheelkundige instrumenten, verpleeg- en orthopedische artikelen en laboratoriumbenodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in medische en tandheelkundige instrumenten, verpleeg- en orthopedische artikelen en laboratoriumbenodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of medical and dental instruments, nursing and orthopaedic articles and laboratory supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4646
* #4647 "Groothandel in huishoudelijke, kantoor- en winkelmeubelen, vloerbedekking en verlichting"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in huishoudelijke, kantoor- en winkelmeubelen, vloerbedekking en verlichting"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of household, office and shop furniture, carpets and lighting equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46471 "Groothandel in huishoudelijke, kantoor- en winkelmeubelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in huishoudelijke, kantoor- en winkelmeubelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of household, office and shop furniture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4647
* #46472 "Groothandel in vloerbedekking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vloerbedekking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of floor coverings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4647
* #46473 "Groothandel in verlichtingsartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in verlichtingsartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of lighting products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4647
* #4648 "Groothandel in juweliersartikelen en horloges"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in juweliersartikelen en horloges"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of watches and jewellery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46480 "Groothandel in juweliersartikelen en horloges"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in juweliersartikelen en horloges"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of watches and jewellery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4648
* #4649 "Groothandel in overige consumentenartikelen (non-food)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige consumentenartikelen (non-food)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other household goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #464
* #46491 "Groothandel in fietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in fietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of bicycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46492 "Groothandel in watersportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in watersportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of water sports goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46493 "Groothandel in kampeerartikelen (geen caravans)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in kampeerartikelen (geen caravans)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of camping goods (not caravans)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46494 "Groothandel in speelgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in speelgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of toys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46495 "Groothandel in muziekinstrumenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in muziekinstrumenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of musical instruments"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46496 "Groothandel in sportartikelen (geen watersport)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in sportartikelen (geen watersport)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of sports goods (not for water sports)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46497 "Groothandel in papier- en kartonwaren (geen verpakkingsmateriaal)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in papier- en kartonwaren (geen verpakkingsmateriaal)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of paper and paperboard goods (not packaging material)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46498 "Groothandel in boeken, tijdschriften en overig drukwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in boeken, tijdschriften en overig drukwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of books, magazines and other printed matter"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #46499 "Groothandel in overige consumentenartikelen (non-food) (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige consumentenartikelen (non-food) (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other consumer goods (non-food) (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4649
* #465 "Groothandel in informatie- en communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in informatie- en communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of information and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4650 "Groothandel in informatie- en communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in informatie- en communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of information and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #465
* #46500 "Groothandel in informatie- en communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in informatie- en communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of information and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4650
* #466 "Groothandel in andere machines en werktuigen en toebehoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in andere machines en werktuigen en toebehoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other machinery, equipment and supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4661 "Groothandel in landbouwmachines, werktuigen en tractoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in landbouwmachines, werktuigen en tractoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of agricultural machinery, equipment and supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #466
* #46610 "Groothandel in landbouwmachines, werktuigen en tractoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in landbouwmachines, werktuigen en tractoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of agricultural machinery, equipment and supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4661
* #4662 "Groothandel in gereedschapswerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in gereedschapswerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of machine tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #466
* #46620 "Groothandel in gereedschapswerktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in gereedschapswerktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of machine tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4662
* #4663 "Groothandel in machines voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in machines voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of mining, construction and civil engineering machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #466
* #46630 "Groothandel in machines voor de bouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in machines voor de bouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of mining, construction and civil engineering machinery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4663
* #4664 "Groothandel in overige machines en werktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige machines en werktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #466
* #46641 "Groothandel in intern transportmaterieel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in intern transportmaterieel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of material handling equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #46642 "Groothandel in machines en apparaten voor de warmte-, koel- en vriestechniek, voor industrieel gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in machines en apparaten voor de warmte-, koel- en vriestechniek, voor industrieel gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of machinery and equipment for heating and cooling, for industrial use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #46643 "Groothandel in aandrijfmotoren, pompen en compressoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in aandrijfmotoren, pompen en compressoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of propulsion motors, pumps and compressors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #46644 "Groothandel in appendages, technische toebehoren e.d."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in appendages, technische toebehoren e.d."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of fittings, technical accessories and similar equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #46645 "Groothandel in meet- en regelapparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in meet- en regelapparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of measuring and control equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #46646 "Groothandel in emballage voor industrieel gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in emballage voor industrieel gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of reservoirs and containers for industrial use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #46647 "Groothandel in scheepsbenodigdheden en visserij-artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in scheepsbenodigdheden en visserij-artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of articles for ships and fishing equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #46649 "Groothandel in overige machines, werktuigen en toebehoren voor industrie en handel (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige machines, werktuigen en toebehoren voor industrie en handel (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other machinery, equipment and accessories for industry and trade (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4664
* #467 "Groothandel in motorvoertuigen, motorfietsen en delen en toebehoren van motorvoertuigen en motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in motorvoertuigen, motorfietsen en delen en toebehoren van motorvoertuigen en motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of motor vehicles, motorcycles and related parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4671 "Groothandel in motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #467
* #46710 "Groothandel in motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4671
* #4672 "Groothandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of motor vehicle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #467
* #46720 "Groothandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of motor vehicle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4672
* #4673 "Groothandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of motorcycles, motorcycle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #467
* #46730 "Groothandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of motorcycles, motorcycle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4673
* #468 "Overige gespecialiseerde groothandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde groothandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised wholesale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4681 "Groothandel in vaste, vloeibare en gasvormige brandstoffen en aanverwante producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vaste, vloeibare en gasvormige brandstoffen en aanverwante producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of solid, liquid and gaseous fuels and related products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46811 "Groothandel in vaste brandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vaste brandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of solid fuels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4681
* #46812 "Groothandel in vloeibare en gasvormige brandstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vloeibare en gasvormige brandstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of liquid and gaseous fuels"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4681
* #46813 "Groothandel in minerale olieproducten (geen brandstoffen)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in minerale olieproducten (geen brandstoffen)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of mineral oil products (not fuels)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4681
* #4682 "Groothandel in metalen en metaalertsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in metalen en metaalertsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of metals and metal ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46821 "Groothandel in metaalertsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in metaalertsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of metal ores"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4682
* #46822 "Groothandel in ferrometalen en halffabrikaten daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in ferrometalen en halffabrikaten daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of ferrous metals and semi-finished products thereof"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4682
* #46823 "Groothandel in non-ferrometalen en halffabrikaten daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in non-ferrometalen en halffabrikaten daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of non-ferrous metals and their semi-finished products thereof"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4682
* #4683 "Groothandel in hout, bouwmaterialen en sanitair"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in hout, bouwmaterialen en sanitair"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of wood, construction materials and sanitary equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46831 "Groothandel in hout en plaatmateriaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in hout en plaatmateriaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of wood and panel materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46832 "Groothandel in verf en verfwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in verf en verfwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of paints and paint materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46833 "Groothandel in behang"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in behang"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of wallpaper"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46834 "Groothandel in vlakglas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in vlakglas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of flat glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46835 "Groothandel in zand en grind"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in zand en grind"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of sand and gravel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46836 "Groothandel in tegels en plavuizen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in tegels en plavuizen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of tiles and flagstones"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46837 "Groothandel in sanitaire artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in sanitaire artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of sanitary equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46838 "Groothandel gespecialiseerd in overige bouwmaterialen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel gespecialiseerd in overige bouwmaterialen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised wholesale of other construction materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #46839 "Groothandel in bouwmaterialen algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in bouwmaterialen algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of a general range of construction materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4683
* #4684 "Groothandel in ijzerwaren en in installatiemateriaal voor loodgieterswerk en verwarming"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in ijzerwaren en in installatiemateriaal voor loodgieterswerk en verwarming"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of hardware, plumbing and heating equipment and supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46841 "Groothandel in ijzer- en metaalwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in ijzer- en metaalwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of iron and metal hardware"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4684
* #46842 "Groothandel in verwarmingsapparaten en sanitair installatiemateriaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in verwarmingsapparaten en sanitair installatiemateriaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of heating equipment and sanitary installation equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4684
* #4685 "Groothandel in chemische producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in chemische producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of chemical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46851 "Groothandel in chemische grondstoffen en chemicaliën voor industriële toepassing"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in chemische grondstoffen en chemicaliën voor industriële toepassing"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of chemical raw materials and chemicals for industrial use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4685
* #46852 "Groothandel in bestrijdingsmiddelen en meststoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in bestrijdingsmiddelen en meststoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of pesticides and fertilisers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4685
* #4686 "Groothandel in overige intermediaire producten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige intermediaire producten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other intermediate products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46861 "Groothandel in textielgrondstoffen en halffabrikaten daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in textielgrondstoffen en halffabrikaten daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of textile raw materials and semi-finished products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4686
* #46862 "Groothandel in papier en karton"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in papier en karton"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of paper and paperboard"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4686
* #46869 "Groothandel in overige intermediaire producten (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige intermediaire producten (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other intermediary products (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4686
* #4687 "Groothandel in afval en schroot"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in afval en schroot"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of waste and scrap"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46871 "Groothandel in autosloopmateriaal"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in autosloopmateriaal"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of scrap and parts of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4687
* #46872 "Groothandel in ijzer- en staalschroot en gebruikte non-ferrometalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in ijzer- en staalschroot en gebruikte non-ferrometalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of iron and steel scrap and used non-ferrous metals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4687
* #46879 "Groothandel in overige gebruikte materialen en afvalstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Groothandel in overige gebruikte materialen en afvalstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wholesale of other used materials and waste"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4687
* #4689 "Overige gespecialiseerde groothandel (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde groothandel (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised wholesale n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #468
* #46890 "Overige gespecialiseerde groothandel (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde groothandel (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised wholesale n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4689
* #469 "Niet-gespecialiseerde groothandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gespecialiseerde groothandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised wholesale trade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #46
* #4690 "Niet-gespecialiseerde groothandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gespecialiseerde groothandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised wholesale trade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #469
* #46901 "Niet-gespecialiseerde groothandel in consumentenartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gespecialiseerde groothandel in consumentenartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised wholesale of consumer goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4690
* #46902 "Niet-gespecialiseerde groothandel in niet-consumentenartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gespecialiseerde groothandel in niet-consumentenartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised wholesale of non-consumer goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4690
* #47 "Detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail trade"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #G
* #471 "Niet-gespecialiseerde detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gespecialiseerde detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4711 "Niet-gespecialiseerde detailhandel waarbij voedings- en genotmiddelen overheersen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gespecialiseerde detailhandel waarbij voedings- en genotmiddelen overheersen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised retail sale of predominately food, beverages or tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #471
* #47110 "Niet-gespecialiseerde detailhandel waarbij voedings- en genotmiddelen overheersen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gespecialiseerde detailhandel waarbij voedings- en genotmiddelen overheersen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-specialised retail sale of predominately food, beverages or tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4711
* #4712 "Overige niet-gespecialiseerde detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige niet-gespecialiseerde detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other non-specialised retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #471
* #47120 "Overige niet-gespecialiseerde detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige niet-gespecialiseerde detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other non-specialised retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4712
* #472 "Detailhandel in voedingsmiddelen, dranken en overige genotmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in voedingsmiddelen, dranken en overige genotmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of food, beverages and tobacco"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4721 "Detailhandel in aardappelen, groenten en fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in aardappelen, groenten en fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of fruit and vegetables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #472
* #47210 "Detailhandel in aardappelen, groenten en fruit"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in aardappelen, groenten en fruit"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of fruit and vegetables"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4721
* #4722 "Detailhandel in vlees en vleeswaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in vlees en vleeswaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of meat and meat products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #472
* #47221 "Detailhandel in vlees en vleeswaren (niet voornamelijk wild en gevogelte)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in vlees en vleeswaren (niet voornamelijk wild en gevogelte)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of meat and meat products (not predominantly game or poultry)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4722
* #47222 "Detailhandel in wild en gevogelte"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in wild en gevogelte"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of game and poultry"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4722
* #4723 "Detailhandel in vis en schaal- en weekdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in vis en schaal- en weekdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of fish, crustaceans and molluscs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #472
* #47230 "Detailhandel in vis en schaal- en weekdieren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in vis en schaal- en weekdieren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of fish, crustaceans and molluscs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4723
* #4724 "Detailhandel in brood, banket en suikerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in brood, banket en suikerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of bread, cake and confectionery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #472
* #47241 "Detailhandel in brood en banket"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in brood en banket"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of bread and pastry"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4724
* #47242 "Detailhandel in chocolade en suikerwerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in chocolade en suikerwerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of chocolate and confectionery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4724
* #4725 "Detailhandel in dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #472
* #47250 "Detailhandel in dranken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in dranken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of beverages"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4725
* #4726 "Detailhandel in tabaksproducten en aanverwante artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tabaksproducten en aanverwante artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #472
* #47260 "Detailhandel in tabaksproducten en aanverwante artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tabaksproducten en aanverwante artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of tobacco products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4726
* #4727 "Detailhandel in overige voedings- en genotmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in overige voedings- en genotmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of other food"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #472
* #47271 "Detailhandel in kaas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kaas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of cheese"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4727
* #47272 "Detailhandel in natuurvoeding en reformartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in natuurvoeding en reformartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of natural food and health products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4727
* #47273 "Detailhandel in buitenlandse voedingsmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in buitenlandse voedingsmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of foreign food products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4727
* #47279 "Gespecialiseerde detailhandel in overige voedings- en genotmiddelen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gespecialiseerde detailhandel in overige voedings- en genotmiddelen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised retail sale of other food (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4727
* #473 "Detailhandel in voertuigbrandstof"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in voertuigbrandstof"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of automotive fuel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4730 "Detailhandel in voertuigbrandstof"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in voertuigbrandstof"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of automotive fuel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #473
* #47300 "Detailhandel in voertuigbrandstof"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in voertuigbrandstof"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of automotive fuel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4730
* #474 "Detailhandel in consumentenelektronica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in consumentenelektronica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of information and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4740 "Detailhandel in consumentenelektronica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in consumentenelektronica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of information and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #474
* #47401 "Detailhandel in computers, randapparatuur en software"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in computers, randapparatuur en software"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of computers, peripheral equipment and software"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4740
* #47402 "Detailhandel in telecommunicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in telecommunicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of telecommunication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4740
* #47403 "Detailhandel in audio- en videoapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in audio- en videoapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of audio and video equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4740
* #47404 "Detailhandel in een algemeen assortiment van consumentenelektronica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in een algemeen assortiment van consumentenelektronica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of a general range of consumer electronics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4740
* #475 "Detailhandel in overige huishoudelijke artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in overige huishoudelijke artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of other household equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4751 "Detailhandel in textiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in textiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #475
* #47511 "Detailhandel in kledingstoffen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kledingstoffen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of clothing fabrics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4751
* #47512 "Detailhandel in huishoudtextiel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in huishoudtextiel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of household textiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4751
* #47513 "Detailhandel in breiwol, handwerken en fournituren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in breiwol, handwerken en fournituren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of knitting wool, handicrafts and haberdashery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4751
* #4752 "Detailhandel in ijzerwaren, bouwmaterialen, verf en glas"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in ijzerwaren, bouwmaterialen, verf en glas"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of hardware, building materials, paints and glass"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #475
* #47521 "Detailhandel in ijzerwaren en gereedschappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in ijzerwaren en gereedschappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of hardware and tools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4752
* #47522 "Detailhandel in verf, verfwaren en behang"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in verf, verfwaren en behang"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of paints, paint materials and wallpaper"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4752
* #47523 "Detailhandel in houten bouw- en tuinmaterialen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in houten bouw- en tuinmaterialen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of wooden building and garden materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4752
* #47524 "Detailhandel in tegels"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tegels"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of tiles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4752
* #47525 "Detailhandel in parket-, laminaat- en kurkvloeren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in parket-, laminaat- en kurkvloeren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of parquet, laminate and cork flooring"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4752
* #47526 "Detailhandel gespecialiseerd in overige doe-het-zelfartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel gespecialiseerd in overige doe-het-zelfartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised retail sale of other do-it-yourself articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4752
* #47527 "Detailhandel in bouwmaterialen algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in bouwmaterialen algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of a general range of building material"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4752
* #4753 "Detailhandel in tapijten en overige vloerbedekking en wandbekleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tapijten en overige vloerbedekking en wandbekleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of carpets, rugs, wall and floor coverings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #475
* #47530 "Detailhandel in tapijten en overige vloerbedekking en wandbekleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tapijten en overige vloerbedekking en wandbekleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of carpets, rugs, wall and floor coverings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4753
* #4754 "Detailhandel in elektrische huishoudelijke apparaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in elektrische huishoudelijke apparaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of electrical household appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #475
* #47541 "Detailhandel in witgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in witgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of white goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4754
* #47542 "Detailhandel in naai- en breimachines"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in naai- en breimachines"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of sewing and knitting machines"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4754
* #47543 "Detailhandel in overige elektrische huishoudelijke apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in overige elektrische huishoudelijke apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of other electrical household appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4754
* #47544 "Detailhandel in onderdelen voor elektrische huishoudelijke apparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in onderdelen voor elektrische huishoudelijke apparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of spare parts for electrical household appliances"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4754
* #4755 "Detailhandel in meubelen, verlichting, tafelgerei en overige huishoudelijke artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in meubelen, verlichting, tafelgerei en overige huishoudelijke artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of furniture, lighting equipment, tableware and other household goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #475
* #47551 "Detailhandel in meubelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in meubelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of furniture"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #47552 "Detailhandel in verlichtingsartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in verlichtingsartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of lighting articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #47553 "Detailhandel in artikelen voor woninginrichting algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in artikelen voor woninginrichting algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of a general range of home furnishing articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #47554 "Detailhandel in keukens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in keukens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of kitchens"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #47555 "Detailhandel in glas-, porselein- en aardewerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in glas-, porselein- en aardewerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of glassware, china and pottery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #47556 "Detailhandel in babyartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in babyartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of baby equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #47557 "Detailhandel gespecialiseerd in overige huishoudelijke artikelen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel gespecialiseerd in overige huishoudelijke artikelen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised retail sale of other household articles (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #47558 "Detailhandel in huishoudelijke artikelen algemeen assortiment"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in huishoudelijke artikelen algemeen assortiment"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of a general range of household articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4755
* #476 "Detailhandel in cultuur-, recreatieartikelen en speelgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in cultuur-, recreatieartikelen en speelgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of cultural and recreation goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4761 "Detailhandel in boeken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in boeken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of books"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #476
* #47610 "Detailhandel in boeken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in boeken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of books"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4761
* #4762 "Detailhandel in kranten, tijdschriften en kantoorartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kranten, tijdschriften en kantoorartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of newspapers, and other periodical publications and stationery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #476
* #47620 "Detailhandel in kranten, tijdschriften en kantoorartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kranten, tijdschriften en kantoorartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of newspapers, and other periodical publications and stationery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4762
* #4763 "Detailhandel in sportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in sportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of sporting equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #476
* #47631 "Detailhandel in fietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in fietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of bicycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4763
* #47632 "Detailhandel in watersportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in watersportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of water sports goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4763
* #47633 "Detailhandel in sportartikelen (geen watersport)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in sportartikelen (geen watersport)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of sports goods (not for water sports)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4763
* #47634 "Detailhandel in kampeerartikelen (geen caravans)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kampeerartikelen (geen caravans)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of camping goods (not caravans)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4763
* #4764 "Detailhandel in spellen en speelgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in spellen en speelgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of games and toys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #476
* #47640 "Detailhandel in spellen en speelgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in spellen en speelgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of games and toys"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4764
* #4769 "Detailhandel in overige cultuur- en recreatieartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in overige cultuur- en recreatieartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of cultural and recreational goods n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #476
* #47690 "Detailhandel in overige cultuur- en recreatieartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in overige cultuur- en recreatieartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of cultural and recreational goods n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4769
* #477 "Detailhandel in overige consumentenartikelen, met uitzondering van motorvoertuigen en motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in overige consumentenartikelen, met uitzondering van motorvoertuigen en motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of other goods, except motor vehicles and motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4771 "Detailhandel in kleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of clothing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47711 "Detailhandel in herenkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in herenkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of men's clothing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4771
* #47712 "Detailhandel in dameskleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in dameskleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of women's clothing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4771
* #47713 "Detailhandel in kleding en kledingaccessoires (algemeen assortiment)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kleding en kledingaccessoires (algemeen assortiment)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of a general range of clothing and clothing accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4771
* #47714 "Detailhandel in baby- en kinderkleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in baby- en kinderkleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of baby and children's clothing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4771
* #47715 "Detailhandel in onderkleding, lingerie en dergelijke"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in onderkleding, lingerie en dergelijke"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of underwear, lingerie and related products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4771
* #47716 "Detailhandel in kledingaccessoires"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in kledingaccessoires"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of clothing accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4771
* #4772 "Detailhandel in schoeisel en lederwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in schoeisel en lederwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of footwear and leather goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47721 "Detailhandel in schoenen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in schoenen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of footwear"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4772
* #47722 "Detailhandel in lederwaren en reisartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in lederwaren en reisartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of leather goods and travel accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4772
* #4773 "Detailhandel in farmaceutische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in farmaceutische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of pharmaceutical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47730 "Detailhandel in farmaceutische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in farmaceutische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of pharmaceutical products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4773
* #4774 "Detailhandel in medische, orthopedische en drogisterij artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in medische, orthopedische en drogisterij artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of medical and orthopaedic goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47741 "Detailhandel in drogisterij-artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in drogisterij-artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of drugstore articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4774
* #47742 "Detailhandel in medische en orthopedische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in medische en orthopedische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of medical and orthopaedic goods (no drugstore)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4774
* #47743 "Detailhandel in corrigerende brillen, lenzen en zonnebrillen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in corrigerende brillen, lenzen en zonnebrillen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of corrective glasses, lenses and sunglasses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4774
* #4775 "Detailhandel in parfums en cosmetica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in parfums en cosmetica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of cosmetic and toilet articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47750 "Detailhandel in parfums en cosmetica"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in parfums en cosmetica"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of cosmetic and toilet articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4775
* #4776 "Detailhandel in bloemen, planten, tuinbenodigdheden, huisdieren en dierbenodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in bloemen, planten, tuinbenodigdheden, huisdieren en dierbenodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of flowers, plants, fertilisers, pets and pet food"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47761 "Detailhandel in bloemen en planten, zaden en tuinbenodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in bloemen en planten, zaden en tuinbenodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of flowers and plants, seeds and garden accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4776
* #47762 "Detailhandel in dieren en dierbenodigdheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in dieren en dierbenodigdheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of pets and pet supplies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4776
* #4777 "Detailhandel in horloges en juwelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in horloges en juwelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of watches and jewellery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47770 "Detailhandel in horloges en juwelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in horloges en juwelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of watches and jewellery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4777
* #4778 "Detailhandel in overige nieuwe artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in overige nieuwe artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of other new goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47781 "Detailhandel in fotografische artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in fotografische artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of photographic articles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4778
* #47789 "Detailhandel gespecialiseerd in overige nieuwe artikelen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel gespecialiseerd in overige nieuwe artikelen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of other new goods (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4778
* #4779 "Detailhandel in tweedehands artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tweedehands artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of second-hand goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #477
* #47791 "Detailhandel in antiek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in antiek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of antiques"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4779
* #47792 "Detailhandel in tweedehands kleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tweedehands kleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of second-hand clothing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4779
* #47793 "Detailhandel in tweedehands goederen (geen kleding)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in tweedehands goederen (geen kleding)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of second-hand goods (not clothing)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4779
* #478 "Detailhandel in motorvoertuigen, motorfietsen en onderdelen en toebehoren daarvan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in motorvoertuigen, motorfietsen en onderdelen en toebehoren daarvan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of motor vehicles, motorcycles and related parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4781 "Detailhandel in motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #478
* #47810 "Detailhandel in motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4781
* #4782 "Detailhandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of motor vehicle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #478
* #47820 "Detailhandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in onderdelen en toebehoren van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of motor vehicle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4782
* #4783 "Detailhandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of motorcycles, motorcycle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #478
* #47830 "Detailhandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Detailhandel in motor- en bromfietsen, inclusief onderdelen en toebehoren hiervan"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Retail sale of motorcycles, motorcycle parts and accessories"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4783
* #479 "Bemiddelingsactiviteiten in verband met de detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met de detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #47
* #4791 "Bemiddelingsactiviteiten in verband met de niet-gespecialiseerde detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met de niet-gespecialiseerde detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for non-specialised retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #479
* #47910 "Bemiddelingsactiviteiten in verband met de niet-gespecialiseerde detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met de niet-gespecialiseerde detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for non-specialised retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4791
* #4792 "Bemiddelingsactiviteiten voor de gespecialiseerde detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten voor de gespecialiseerde detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for specialised retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #479
* #47920 "Bemiddelingsactiviteiten voor de gespecialiseerde detailhandel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten voor de gespecialiseerde detailhandel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for specialised retail sale"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4792
* #H "VERVOER EN OPSLAG"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "VERVOER EN OPSLAG"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "TRANSPORTATION AND STORAGE"
* #49 "Vervoer over land en via pijpleidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervoer over land en via pijpleidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Land transport and transport via pipelines"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #H
* #491 "Personenvervoer per spoor"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer per spoor"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #49
* #4911 "Personenvervoer per trein"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer per trein"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger heavy rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #491
* #49110 "Personenvervoer per trein"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer per trein"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger heavy rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4911
* #4912 "Overig personenvervoer per spoor"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overig personenvervoer per spoor"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other passenger rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #491
* #49120 "Overig personenvervoer per spoor"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overig personenvervoer per spoor"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other passenger rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4912
* #492 "Goederenvervoer per spoor"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer per spoor"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #49
* #4920 "Goederenvervoer per spoor"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer per spoor"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #492
* #49200 "Goederenvervoer per spoor"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer per spoor"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight rail transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4920
* #493 "Overig personenvervoer over land"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overig personenvervoer over land"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other passenger land transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #49
* #4931 "Personenvervoer over de weg met dienstregeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over de weg met dienstregeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Scheduled passenger transport by road"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #493
* #49310 "Personenvervoer over de weg met dienstregeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over de weg met dienstregeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Scheduled passenger transport by road"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4931
* #4932 "Personenvervoer over de weg zonder dienstregeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over de weg zonder dienstregeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-scheduled passenger transport by road"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #493
* #49320 "Personenvervoer over de weg zonder dienstregeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over de weg zonder dienstregeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-scheduled passenger transport by road"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4932
* #4933 "Personenvervoer op aanvraag per voertuig met chauffeur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer op aanvraag per voertuig met chauffeur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "On-demand passenger transport service activities by vehicle with driver"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #493
* #49330 "Personenvervoer op aanvraag per voertuig met chauffeur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer op aanvraag per voertuig met chauffeur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "On-demand passenger transport service activities by vehicle with driver"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4933
* #4934 "Personenvervoer met kabelbanen en skiliften"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer met kabelbanen en skiliften"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger transport by cableways and ski lifts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #493
* #49340 "Personenvervoer met kabelbanen en skiliften"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer met kabelbanen en skiliften"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger transport by cableways and ski lifts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4934
* #4939 "Overig personenvervoer over land, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overig personenvervoer over land, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other passenger land transport n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #493
* #49390 "Overig personenvervoer over land, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overig personenvervoer over land, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other passenger land transport n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4939
* #494 "Goederenvervoer over de weg en verhuisbedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over de weg en verhuisbedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight transport by road and removal services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #49
* #4941 "Goederenvervoer over de weg (met uitzondering van verhuisbedrijven)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over de weg (met uitzondering van verhuisbedrijven)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight transport by road"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #494
* #49410 "Goederenvervoer over de weg (met uitzondering van verhuisbedrijven)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over de weg (met uitzondering van verhuisbedrijven)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight transport by road"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4941
* #4942 "Activiteiten van verhuisbedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van verhuisbedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Removal services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #494
* #49420 "Activiteiten van verhuisbedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van verhuisbedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Removal services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4942
* #495 "Transport via pijpleidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Transport via pijpleidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Transport via pipeline"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #49
* #4950 "Transport via pijpleidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Transport via pijpleidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Transport via pipeline"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #495
* #49500 "Transport via pijpleidingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Transport via pijpleidingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Transport via pipeline"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #4950
* #50 "Vervoer over water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vervoer over water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #H
* #501 "Personenvervoer over zee- en kustwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over zee- en kustwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sea and coastal passenger water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #50
* #5010 "Personenvervoer over zee- en kustwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over zee- en kustwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sea and coastal passenger water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #501
* #50100 "Personenvervoer over zee- en kustwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over zee- en kustwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sea and coastal passenger water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5010
* #502 "Goederenvervoer over zee- en kustwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over zee- en kustwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sea and coastal freight water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #50
* #5020 "Goederenvervoer over zee- en kustwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over zee- en kustwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sea and coastal freight water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #502
* #50201 "Goederenvervoer over zee- en kustwateren door middel van vracht- en tankvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over zee- en kustwateren door middel van vracht- en tankvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sea and coastal freight and tanker water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5020
* #50202 "Goederenvervoer over zee- en kustwateren door middel van sleepvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over zee- en kustwateren door middel van sleepvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sea and coastal towing water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5020
* #503 "Personenvervoer over binnenwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over binnenwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland passenger water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #50
* #5030 "Personenvervoer over binnenwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over binnenwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland passenger water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #503
* #50300 "Personenvervoer over binnenwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer over binnenwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland passenger water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5030
* #504 "Goederenvervoer over binnenwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over binnenwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland freight water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #50
* #5040 "Goederenvervoer over binnenwateren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over binnenwateren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland freight water transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #504
* #50401 "Goederenvervoer over binnenwateren door middel van vrachtvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over binnenwateren door middel van vrachtvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland water freight shipping transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5040
* #50402 "Goederenvervoer over binnenwateren door middel van tankvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over binnenwateren door middel van tankvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland water tanker shipping transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5040
* #50403 "Goederenvervoer over binnenwateren door middel van sleep- en duwvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer over binnenwateren door middel van sleep- en duwvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Inland water towing and pushing transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5040
* #51 "Luchtvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Luchtvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Air transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #H
* #511 "Personenvervoer door de lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer door de lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger air transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #51
* #5110 "Personenvervoer door de lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer door de lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger air transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #511
* #51100 "Personenvervoer door de lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Personenvervoer door de lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Passenger air transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5110
* #512 "Goederenvervoer door de lucht en ruimtevaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer door de lucht en ruimtevaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight air transport and space transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #51
* #5121 "Goederenvervoer door de lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer door de lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight air transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #512
* #51210 "Goederenvervoer door de lucht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Goederenvervoer door de lucht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Freight air transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5121
* #5122 "Ruimtevaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ruimtevaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Space transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #512
* #51220 "Ruimtevaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ruimtevaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Space transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5122
* #52 "Opslag en dienstverlening voor vervoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag en dienstverlening voor vervoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Warehousing, storage and support activities for transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #H
* #521 "Opslag"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Warehousing and storage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #52
* #5210 "Opslag"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Warehousing and storage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #521
* #52101 "Opslag in tanks"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag in tanks"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Storage in tanks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5210
* #52102 "Opslag in koelhuizen e.d."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag in koelhuizen e.d."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Storage in cold stores and similar facilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5210
* #52109 "Opslag in distributiecentra en overige opslag (niet in tanks, koelhuizen e.d.)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opslag in distributiecentra en overige opslag (niet in tanks, koelhuizen e.d.)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Storage in distribution centres and other storage (not in tanks or cold stores)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5210
* #522 "Dienstverlening voor vervoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor vervoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities for transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #52
* #5221 "Dienstverlening voor vervoer over land"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor vervoer over land"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Service activities incidental to land transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #522
* #52210 "Dienstverlening voor vervoer over land"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor vervoer over land"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Service activities incidental to land transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5221
* #5222 "Dienstverlening voor vervoer over water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor vervoer over water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Service activities incidental to water transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #522
* #52220 "Dienstverlening voor vervoer over water"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor vervoer over water"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Service activities incidental to water transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5222
* #5223 "Dienstverlening voor de luchtvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de luchtvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Service activities incidental to air transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #522
* #52230 "Dienstverlening voor de luchtvaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening voor de luchtvaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Service activities incidental to air transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5223
* #5224 "Vrachtbehandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vrachtbehandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cargo handling"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #522
* #52241 "Laad-, los- en overslagactiviteiten voor zeevaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Laad-, los- en overslagactiviteiten voor zeevaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cargo handling for maritime transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5224
* #52242 "Laad-, los- en overslagactiviteiten niet voor zeevaart"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Laad-, los- en overslagactiviteiten niet voor zeevaart"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cargo handling not for maritime transport"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5224
* #5225 "Logistieke diensten: vrachtafhandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Logistieke diensten: vrachtafhandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Logistics service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #522
* #52250 "Logistieke diensten: vrachtafhandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Logistieke diensten: vrachtafhandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Logistics service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5225
* #5226 "Andere vervoerondersteunende activiteiten: documentenafhandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Andere vervoerondersteunende activiteiten: documentenafhandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other support activities for transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #522
* #52260 "Andere vervoerondersteunende activiteiten: documentenafhandeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Andere vervoerondersteunende activiteiten: documentenafhandeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other support activities for transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5226
* #523 "Bemiddelingsactiviteiten in verband met vervoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met vervoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #52
* #5231 "Bemiddelingsactiviteiten in verband met goederenvervoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met goederenvervoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for freight transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #523
* #52310 "Bemiddelingsactiviteiten in verband met goederenvervoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met goederenvervoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for freight transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5231
* #5232 "Bemiddelingsactiviteiten in verband met personenvervoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met personenvervoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for passenger transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #523
* #52320 "Bemiddelingsactiviteiten in verband met personenvervoer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met personenvervoer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for passenger transportation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5232
* #53 "Post- en koeriersdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Post- en koeriersdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Postal and courier activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #H
* #531 "Postdiensten met universele dienstverplichting"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Postdiensten met universele dienstverplichting"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Postal activities under universal service obligation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #53
* #5310 "Postdiensten met universele dienstverplichting"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Postdiensten met universele dienstverplichting"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Postal activities under universal service obligation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #531
* #53100 "Postdiensten met universele dienstverplichting"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Postdiensten met universele dienstverplichting"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Postal activities under universal service obligation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5310
* #532 "Overige postdiensten en koeriersdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige postdiensten en koeriersdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other postal and courier activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #53
* #5320 "Overige postdiensten en koeriersdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige postdiensten en koeriersdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other postal and courier activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #532
* #53201 "Post- en pakketbezorgdiensten zonder universele dienstverplichting"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Post- en pakketbezorgdiensten zonder universele dienstverplichting"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Postal services without universal service obligation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5320
* #53202 "Activiteiten van koeriers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van koeriers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Courier activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5320
* #533 "Bemiddelingsactiviteiten in verband met post- en koeriersdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met post- en koeriersdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for postal and courier activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #53
* #5330 "Bemiddelingsactiviteiten in verband met post- en koeriersdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met post- en koeriersdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for postal and courier activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #533
* #53300 "Bemiddelingsactiviteiten in verband met post- en koeriersdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met post- en koeriersdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for postal and courier activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5330
* #I "LOGIES-, MAALTIJD- EN DRANKVERSTREKKING"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "LOGIES-, MAALTIJD- EN DRANKVERSTREKKING"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "ACCOMMODATION AND FOOD SERVICE ACTIVITIES"
* #55 "Logiesverstrekking en -bemiddeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Logiesverstrekking en -bemiddeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #I
* #551 "Exploitatie van hotels en vergelijkbare accommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van hotels en vergelijkbare accommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hotels and similar accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #55
* #5510 "Exploitatie van hotels en vergelijkbare accommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van hotels en vergelijkbare accommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hotels and similar accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #551
* #55101 "Exploitatie van hotel-restaurants"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van hotel-restaurants"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of hotel restaurants"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5510
* #55102 "Exploitatie van hotels (geen hotel-restaurants), pensions en conferentie-oorden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van hotels (geen hotel-restaurants), pensions en conferentie-oorden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of hotels (excluding hotel restaurants), boarding houses and conference rooms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5510
* #552 "Verhuur van vakantieverblijven en overige accommodaties voor kort verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur van vakantieverblijven en overige accommodaties voor kort verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Holiday and other short-stay accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #55
* #5520 "Verhuur van vakantieverblijven en overige accommodaties voor kort verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur van vakantieverblijven en overige accommodaties voor kort verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Holiday and other short-stay accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #552
* #55201 "Verhuur van vakantiehuisjes en appartementen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur van vakantiehuisjes en appartementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental of holiday homes and apartments"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5520
* #55202 "Exploitatie van jeugdherbergen , vakantiekampen, groepsaccommodaties en overige korte-verblijfsaccommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van jeugdherbergen , vakantiekampen, groepsaccommodaties en overige korte-verblijfsaccommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of youth hostels , holiday camps, group accommodation and other short-stay accommodation n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5520
* #553 "Exploitatie van kampeerterreinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van kampeerterreinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Camping grounds and recreational vehicle parks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #55
* #5530 "Exploitatie van kampeerterreinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van kampeerterreinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Camping grounds and recreational vehicle parks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #553
* #55300 "Exploitatie van kampeerterreinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van kampeerterreinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Camping grounds and recreational vehicle parks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5530
* #554 "Bemiddelingsactiviteiten in verband met tijdelijke accommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met tijdelijke accommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #55
* #5540 "Bemiddelingsactiviteiten in verband met tijdelijke accommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met tijdelijke accommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #554
* #55400 "Bemiddelingsactiviteiten in verband met tijdelijke accommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met tijdelijke accommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5540
* #559 "Overige logiesverstrekking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige logiesverstrekking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #55
* #5590 "Overige logiesverstrekking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige logiesverstrekking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #559
* #55900 "Overige logiesverstrekking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige logiesverstrekking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5590
* #56 "Exploitatie van eet- en drinkgelegenheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van eet- en drinkgelegenheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Food and beverage service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #I
* #561 "Exploitatie van restaurants en dergelijke en van mobiele eetgelegenheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van restaurants en dergelijke en van mobiele eetgelegenheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Restaurants and mobile food service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #56
* #5611 "Exploitatie van restaurants, cafetaria’s, ijssalons en dergelijke"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van restaurants, cafetaria’s, ijssalons en dergelijke"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Restaurant activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #561
* #56111 "Exploitatie van restaurants"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van restaurants"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of restaurants"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5611
* #56112 "Exploitatie van fastfoodrestaurants, cafetaria's, ijssalons en dergelijke"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van fastfoodrestaurants, cafetaria's, ijssalons en dergelijke"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of fast food restaurants, cafetarias, ice cream parlours and similar facilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5611
* #5612 "Exploitatie van mobiele eetgelegenheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van mobiele eetgelegenheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mobile food service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #561
* #56120 "Exploitatie van mobiele eetgelegenheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van mobiele eetgelegenheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Mobile food service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5612
* #562 "Cateringdiensten op evenementen, op contractbasis en overige diensten in verband met drank en maaltijden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Cateringdiensten op evenementen, op contractbasis en overige diensten in verband met drank en maaltijden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Event catering, contract catering service activities and other food service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #56
* #5621 "Cateringdiensten op evenementen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Cateringdiensten op evenementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Event catering activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #562
* #56210 "Cateringdiensten op evenementen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Cateringdiensten op evenementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Event catering activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5621
* #5622 "Cateringdiensten op contractbasis en overige diensten in verband met drank en maaltijden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Cateringdiensten op contractbasis en overige diensten in verband met drank en maaltijden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Contract catering service activities and other food service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #562
* #56220 "Cateringdiensten op contractbasis en overige diensten in verband met drank en maaltijden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Cateringdiensten op contractbasis en overige diensten in verband met drank en maaltijden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Contract catering service activities and other food service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5622
* #563 "Exploitatie van drinkgelegenheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van drinkgelegenheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Beverage serving activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #56
* #5630 "Exploitatie van drinkgelegenheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van drinkgelegenheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Beverage serving activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #563
* #56300 "Exploitatie van drinkgelegenheden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van drinkgelegenheden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Beverage serving activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5630
* #564 "Bemiddelingsactiviteiten in verband met drank en maaltijden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met drank en maaltijden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for food and beverage services activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #56
* #5640 "Bemiddelingsactiviteiten in verband met drank en maaltijden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met drank en maaltijden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for food and beverage services activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #564
* #56400 "Bemiddelingsactiviteiten in verband met drank en maaltijden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met drank en maaltijden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for food and beverage services activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5640
* #J "ACTIVITEITEN VAN UITGEVERIJEN, OMROEPACTIVITEITEN, EN ACTIVITEITEN OP HET GEBIED VAN PRODUCTIE EN DISTRIBUTIE VAN INHOUD"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "ACTIVITEITEN VAN UITGEVERIJEN, OMROEPACTIVITEITEN, EN ACTIVITEITEN OP HET GEBIED VAN PRODUCTIE EN DISTRIBUTIE VAN INHOUD"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "PUBLISHING, BROADCASTING, AND CONTENT PRODUCTION AND DISTRIBUTION ACTIVITIES"
* #58 "Activiteiten van uitgeverijen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van uitgeverijen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #J
* #581 "Activiteiten van uitgeverijen van boeken en kranten en overige activiteiten van uitgeverijen, met uitzondering van het uitgeven van software"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van uitgeverijen van boeken en kranten en overige activiteiten van uitgeverijen, met uitzondering van het uitgeven van software"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of books, newspapers and other publishing activities, except software publishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #58
* #5811 "Uitgeven van boeken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van boeken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of books"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #581
* #58110 "Uitgeven van boeken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van boeken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of books"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5811
* #5812 "Uitgeven van kranten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van kranten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of newspapers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #581
* #58120 "Uitgeven van kranten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van kranten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of newspapers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5812
* #5813 "Uitgeven van tijdschriften"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van tijdschriften"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of journals and periodicals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #581
* #58130 "Uitgeven van tijdschriften"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van tijdschriften"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of journals and periodicals"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5813
* #5819 "Overige activiteiten van uitgeverijen, met uitzondering van het uitgeven van software"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten van uitgeverijen, met uitzondering van het uitgeven van software"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other publishing activities, except software publishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #581
* #58190 "Overige activiteiten van uitgeverijen, met uitzondering van het uitgeven van software"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten van uitgeverijen, met uitzondering van het uitgeven van software"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other publishing activities, except software publishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5819
* #582 "Uitgeven van software"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van software"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Software publishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #58
* #5821 "Uitgeven van computerspellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van computerspellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of video games"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #582
* #58210 "Uitgeven van computerspellen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van computerspellen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Publishing of video games"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5821
* #5829 "Uitgeven van overige software"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van overige software"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other software publishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #582
* #58290 "Uitgeven van overige software"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitgeven van overige software"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other software publishing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5829
* #59 "Productie en distributie van films en video- en televisieprogramma’s en audio, maken van geluidsopnamen en uitgeven van muziekopnamen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie en distributie van films en video- en televisieprogramma’s en audio, maken van geluidsopnamen en uitgeven van muziekopnamen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture, video and television programme production, sound recording and music publishing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #J
* #591 "Productie en distributie van films, video en televisieprogramma's"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie en distributie van films, video en televisieprogramma's"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture, video and television programme activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #59
* #5911 "Productie van films en video- en televisieprogramma’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van films en video- en televisieprogramma’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture, video and television programme production activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #591
* #59111 "Productie van films (geen televisiefilms)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van films (geen televisiefilms)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture production (not for television)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5911
* #59112 "Productie van televisieprogramma’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Productie van televisieprogramma’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Production of television programmes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5911
* #5912 "Activiteiten in verband met films en video- en televisieprogramma’s na de productie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten in verband met films en video- en televisieprogramma’s na de productie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture, video and television programme post-production activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #591
* #59120 "Activiteiten in verband met films en video- en televisieprogramma’s na de productie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten in verband met films en video- en televisieprogramma’s na de productie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture, video and television programme post-production activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5912
* #5913 "Distributie van films en televisie- en videoproducties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Distributie van films en televisie- en videoproducties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture and video distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #591
* #59130 "Distributie van films en televisie- en videoproducties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Distributie van films en televisie- en videoproducties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture and video distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5913
* #5914 "Vertoning van films"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vertoning van films"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture projection activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #591
* #59140 "Vertoning van films"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vertoning van films"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Motion picture projection activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5914
* #592 "Maken en uitgeven van geluids- en muziekopnamen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maken en uitgeven van geluids- en muziekopnamen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sound recording and music publishing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #59
* #5920 "Maken en uitgeven van geluids- en muziekopnamen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maken en uitgeven van geluids- en muziekopnamen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sound recording and music publishing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #592
* #59200 "Maken en uitgeven van geluids- en muziekopnamen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maken en uitgeven van geluids- en muziekopnamen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sound recording and music publishing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #5920
* #60 "Programmering, uitzending, perssagentschappen en overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Programmering, uitzending, perssagentschappen en overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Programming, broadcasting, news agency and other content distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #J
* #601 "Uitzenden van radioprogramma’s en distributie van audio"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitzenden van radioprogramma’s en distributie van audio"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Radio broadcasting and audio distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #60
* #6010 "Uitzenden van radioprogramma’s en distributie van audio"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitzenden van radioprogramma’s en distributie van audio"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Radio broadcasting and audio distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #601
* #60100 "Uitzenden van radioprogramma’s en distributie van audio"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitzenden van radioprogramma’s en distributie van audio"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Radio broadcasting and audio distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6010
* #602 "Samenstellen en uitzenden van televisieprogramma’s en distributie van video’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Samenstellen en uitzenden van televisieprogramma’s en distributie van video’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Television programming, broadcasting and video distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #60
* #6020 "Samenstellen en uitzenden van televisieprogramma’s en distributie van video’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Samenstellen en uitzenden van televisieprogramma’s en distributie van video’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Television programming, broadcasting and video distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #602
* #60200 "Samenstellen en uitzenden van televisieprogramma’s en distributie van video’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Samenstellen en uitzenden van televisieprogramma’s en distributie van video’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Television programming, broadcasting and video distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6020
* #603 "Activiteiten van persagentschappen en overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van persagentschappen en overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "News agency and other content distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #60
* #6031 "Activiteiten van persagentschappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van persagentschappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "News agency activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #603
* #60310 "Activiteiten van persagentschappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van persagentschappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "News agency activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6031
* #6039 "Overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other content distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #603
* #60390 "Overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van de verspreiding van inhoud"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other content distribution activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6039
* #K "TELECOMMUNICATIE, COMPUTERPROGRAMMERING EN CONSULTANCY, INFORMATICA-INFRASTRUCTUUR EN OVERIGE ACTIVITEITEN OP HET GEBIED VAN INFORMATIEDIENSTEN"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "TELECOMMUNICATIE, COMPUTERPROGRAMMERING EN CONSULTANCY, INFORMATICA-INFRASTRUCTUUR EN OVERIGE ACTIVITEITEN OP HET GEBIED VAN INFORMATIEDIENSTEN"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "TELECOMMUNICATION, COMPUTER PROGRAMMING, CONSULTING, COMPUTING INFRASTRUCTURE AND OTHER INFORMATION SERVICE ACTIVITIES"
* #61 "Telecommunicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Telecommunicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Telecommunication"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #K
* #611 "Activiteiten op het gebied van draadgebonden en draadloze telecommunicatie en telecommunicatie via satelliet"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van draadgebonden en draadloze telecommunicatie en telecommunicatie via satelliet"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wired, wireless, and satellite telecommunication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #61
* #6110 "Activiteiten op het gebied van draadgebonden en draadloze telecommunicatie en telecommunicatie via satelliet"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van draadgebonden en draadloze telecommunicatie en telecommunicatie via satelliet"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wired, wireless, and satellite telecommunication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #611
* #61100 "Activiteiten op het gebied van draadgebonden en draadloze telecommunicatie en telecommunicatie via satelliet"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van draadgebonden en draadloze telecommunicatie en telecommunicatie via satelliet"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Wired, wireless, and satellite telecommunication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6110
* #612 "Wederverkoop van telecommunicatie en bemiddelingsactiviteiten in verband met telecommunicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wederverkoop van telecommunicatie en bemiddelingsactiviteiten in verband met telecommunicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Telecommunication reselling activities and intermediation service activities for telecommunication"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #61
* #6120 "Wederverkoop van telecommunicatie en bemiddelingsactiviteiten in verband met telecommunicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wederverkoop van telecommunicatie en bemiddelingsactiviteiten in verband met telecommunicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Telecommunication reselling activities and intermediation service activities for telecommunication"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #612
* #61200 "Wederverkoop van telecommunicatie en bemiddelingsactiviteiten in verband met telecommunicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wederverkoop van telecommunicatie en bemiddelingsactiviteiten in verband met telecommunicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Telecommunication reselling activities and intermediation service activities for telecommunication"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6120
* #619 "Overige activiteiten op het gebied van telecommunicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van telecommunicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other telecommunication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #61
* #6190 "Overige activiteiten op het gebied van telecommunicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van telecommunicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other telecommunication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #619
* #61900 "Overige activiteiten op het gebied van telecommunicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van telecommunicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other telecommunication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6190
* #62 "Computerprogrammering, consultancy en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Computerprogrammering, consultancy en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computer programming, consultancy and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #K
* #621 "Ontwerpen van computerprogramma’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ontwerpen van computerprogramma’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computer programming activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #62
* #6210 "Ontwerpen van computerprogramma’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ontwerpen van computerprogramma’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computer programming activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #621
* #62100 "Ontwerpen van computerprogramma’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ontwerpen van computerprogramma’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computer programming activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6210
* #622 "Activiteiten op het gebied van computerconsultancy en beheer van computerfaciliteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van computerconsultancy en beheer van computerfaciliteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computer consultancy and computer facilities management activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #62
* #6220 "Activiteiten op het gebied van computerconsultancy en beheer van computerfaciliteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van computerconsultancy en beheer van computerfaciliteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computer consultancy and computer facilities management activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #622
* #62200 "Activiteiten op het gebied van computerconsultancy en beheer van computerfaciliteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van computerconsultancy en beheer van computerfaciliteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computer consultancy and computer facilities management activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6220
* #629 "Overige diensten op het gebied van informatietechnologie en computer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige diensten op het gebied van informatietechnologie en computer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other information technology and computer service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #62
* #6290 "Overige diensten op het gebied van informatietechnologie en computer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige diensten op het gebied van informatietechnologie en computer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other information technology and computer service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #629
* #62900 "Overige diensten op het gebied van informatietechnologie en computer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige diensten op het gebied van informatietechnologie en computer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other information technology and computer service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6290
* #63 "Dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computing infrastructure, data processing, hosting and other information service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #K
* #631 "Inrichten van computerinfrastructuur, gegevensverwerking, hosting en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inrichten van computerinfrastructuur, gegevensverwerking, hosting en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computing infrastructure, data processing, hosting and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #63
* #6310 "Inrichten van computerinfrastructuur, gegevensverwerking, hosting en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inrichten van computerinfrastructuur, gegevensverwerking, hosting en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computing infrastructure, data processing, hosting and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #631
* #63100 "Inrichten van computerinfrastructuur, gegevensverwerking, hosting en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Inrichten van computerinfrastructuur, gegevensverwerking, hosting en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Computing infrastructure, data processing, hosting and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6310
* #639 "Activiteiten van webportalen en overige dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van webportalen en overige dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Web search portal activities and other information service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #63
* #6391 "Activiteiten van webportalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van webportalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Web search portal activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #639
* #63910 "Activiteiten van webportalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van webportalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Web search portal activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6391
* #6392 "Overige dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other information service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #639
* #63920 "Overige dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige dienstverlenende activiteiten op het gebied van informatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other information service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6392
* #L "ACTIVITEITEN OP HET GEBIED VAN FINANCIËLE DIENSTVERLENING EN VERZEKERINGEN"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "ACTIVITEITEN OP HET GEBIED VAN FINANCIËLE DIENSTVERLENING EN VERZEKERINGEN"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "FINANCIAL AND INSURANCE ACTIVITIES"
* #64 "Financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Financial service activities, except insurance and pension funding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #L
* #641 "Activiteiten van monetaire financiële instellingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van monetaire financiële instellingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Monetary intermediation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #64
* #6411 "Activiteiten van centrale banken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van centrale banken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Central banking"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #641
* #64110 "Activiteiten van centrale banken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van centrale banken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Central banking"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6411
* #6419 "Activiteiten van overige monetaire financiële instellingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige monetaire financiële instellingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other monetary intermediation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #641
* #64191 "Activiteiten van coöperatief georganiseerde banken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van coöperatief georganiseerde banken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of cooperative banks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6419
* #64192 "Activiteiten van effectenkredietinstellingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van effectenkredietinstellingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of stock credit institutions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6419
* #64193 "Activiteiten van spaarbanken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van spaarbanken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of savings banks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6419
* #64194 "Activiteiten van algemene banken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van algemene banken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of general banks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6419
* #642 "Activiteiten van financiële holdings en financieringsentiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van financiële holdings en financieringsentiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of holding companies and financing conduits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #64
* #6421 "Activiteiten van financiële holdings"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van financiële holdings"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of holding companies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #642
* #64210 "Activiteiten van financiële holdings"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van financiële holdings"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of holding companies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6421
* #6422 "Activiteiten van financieringsentiteiten binnen concernverband"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van financieringsentiteiten binnen concernverband"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of financing conduits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #642
* #64220 "Activiteiten van financieringsentiteiten binnen concernverband"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van financieringsentiteiten binnen concernverband"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of financing conduits"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6422
* #643 "Activiteiten van beleggingstrusts en -fondsen en overige financiële entiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van beleggingstrusts en -fondsen en overige financiële entiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of trusts, funds and similar financial entities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #64
* #6431 "Activiteiten van geldmarkt- en niet-geldmarktbeleggingsfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van geldmarkt- en niet-geldmarktbeleggingsfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of money market and non-money market investments funds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #643
* #64310 "Activiteiten van geldmarkt- en niet-geldmarktbeleggingsfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van geldmarkt- en niet-geldmarktbeleggingsfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of money market and non-money market investments funds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6431
* #6432 "Activiteiten van trust-, vastgoed- en agentschaprekeningen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van trust-, vastgoed- en agentschaprekeningen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of trust, estate and agency accounts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #643
* #64320 "Activiteiten van trust-, vastgoed- en agentschaprekeningen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van trust-, vastgoed- en agentschaprekeningen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of trust, estate and agency accounts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6432
* #649 "Financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other financial service activities, except insurance and pension funding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #64
* #6491 "Financiële lease"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Financiële lease"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Financial leasing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #649
* #64910 "Financiële lease"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Financiële lease"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Financial leasing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6491
* #6492 "Overige kredietverstrekking"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige kredietverstrekking"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other credit granting"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #649
* #64921 "Activiteiten van hypotheekbanken en bouwfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van hypotheekbanken en bouwfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of mortgage banks and building funds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6492
* #64922 "Activiteiten van volkskredietbanken en commerciële financieringsmaatschappijen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van volkskredietbanken en commerciële financieringsmaatschappijen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of municipal credit banks and commercial finance companies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6492
* #64923 "Activiteiten van participatiemaatschappijen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van participatiemaatschappijen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of participation companies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6492
* #64929 "Activiteiten van wisselmakelaars en overige kredietverstrekking (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van wisselmakelaars en overige kredietverstrekking (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of bill-brokers and other credit granting (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6492
* #6499 "Overige financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other financial service activities, except insurance and pension funding n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #649
* #64991 "Activiteiten van marketmakers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van marketmakers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of market makers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6499
* #64999 "Overige financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen, n.e.g. (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige financiële dienstverlening, met uitzondering van verzekeringen en pensioenfondsen, n.e.g. (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other financial service activities, except insurance and pension funding n.e.c. (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6499
* #65 "Activiteiten op het gebied van verzekeringen en pensioenfondsen, met uitzondering van verplichte sociale verzekeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van verzekeringen en pensioenfondsen, met uitzondering van verplichte sociale verzekeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Insurance, reinsurance and pension funding, except compulsory social security"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #L
* #651 "Activiteiten op het gebied van verzekeringen (geen herverzekeringen)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van verzekeringen (geen herverzekeringen)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Insurance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #65
* #6511 "Activiteiten op het gebied van levensverzekeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van levensverzekeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Life insurance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #651
* #65111 "Activiteiten van levensverzekeraars (geen herverzekeringen)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van levensverzekeraars (geen herverzekeringen)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of life insurance companies (not reinsurance)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6511
* #65112 "Activiteiten van natura-uitvaartverzekeraars"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van natura-uitvaartverzekeraars"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of in-kind funeral insurance companies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6511
* #6512 "Activiteiten op het gebied van overige verzekeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van overige verzekeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Non-life insurance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #651
* #65121 "Activiteiten van schadeverzekeraars, met uitzondering van zorgverzekeraars"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van schadeverzekeraars, met uitzondering van zorgverzekeraars"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of non-life insurance companies (not health insurance)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6512
* #65122 "Activiteiten van zorgverzekeraars"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van zorgverzekeraars"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of health insurance companies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6512
* #65123 "Activiteiten van spaarkassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van spaarkassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of slate clubs for insurance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6512
* #652 "Activiteiten van herverzekeraars"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van herverzekeraars"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Reinsurance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #65
* #6520 "Activiteiten van herverzekeraars"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van herverzekeraars"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Reinsurance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #652
* #65200 "Activiteiten van herverzekeraars"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van herverzekeraars"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Reinsurance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6520
* #653 "Activiteiten van pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Pension funding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #65
* #6530 "Activiteiten van pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Pension funding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #653
* #65301 "Activiteiten van bedrijfspensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bedrijfspensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of company pension funds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6530
* #65302 "Activiteiten van ondernemingspensioenfondsen en -spaarfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van ondernemingspensioenfondsen en -spaarfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of corporate pension funds and savings funds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6530
* #65303 "Activiteiten van beroepspensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van beroepspensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of pension funds for specific professional groups"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6530
* #65309 "Activiteiten van overige pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other pension funds"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6530
* #66 "Ondersteunende activiteiten voor financiële diensten, verzekeringen en pensioenen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteunende activiteiten voor financiële diensten, verzekeringen en pensioenen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities auxiliary to financial services and insurance activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #L
* #661 "Ondersteunende activiteiten voor financiële diensten, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteunende activiteiten voor financiële diensten, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities auxiliary to financial services, except insurance and pension funding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #66
* #6611 "Beheer van financiële markten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beheer van financiële markten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Administration of financial markets"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #661
* #66110 "Beheer van financiële markten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beheer van financiële markten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Administration of financial markets"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6611
* #6612 "Bemiddeling in effecten- en goederencontracten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in effecten- en goederencontracten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Security and commodity contracts brokerage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #661
* #66120 "Bemiddeling in effecten- en goederencontracten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in effecten- en goederencontracten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Security and commodity contracts brokerage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6612
* #6619 "Overige ondersteunende activiteiten voor financiële diensten, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ondersteunende activiteiten voor financiële diensten, met uitzondering van verzekeringen en pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other activities auxiliary to financial services, except insurance and pension funding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #661
* #66191 "Activiteiten van administratiekantoren voor aandelen en obligaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van administratiekantoren voor aandelen en obligaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of trust offices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6619
* #66199 "Overige ondersteunende activiteiten voor financiële diensten, met uitzondering van verzekeringen en pensioenfondsen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ondersteunende activiteiten voor financiële diensten, met uitzondering van verzekeringen en pensioenfondsen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other activities auxiliary to financial services, except insurance and pension funding (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6619
* #662 "Dienstverlening op het gebied van verzekeringen en pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Dienstverlening op het gebied van verzekeringen en pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities auxiliary to insurance and pension funding"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #66
* #6621 "Activiteiten van risicoanalisten en schadetaxateurs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van risicoanalisten en schadetaxateurs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Risk and damage evaluation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #662
* #66210 "Activiteiten van risicoanalisten en schadetaxateurs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van risicoanalisten en schadetaxateurs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Risk and damage evaluation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6621
* #6622 "Activiteiten van verzekeringsagenten, makelaars en assurantietussenpersonen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van verzekeringsagenten, makelaars en assurantietussenpersonen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of insurance agents and brokers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #662
* #66220 "Activiteiten van verzekeringsagenten, makelaars en assurantietussenpersonen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van verzekeringsagenten, makelaars en assurantietussenpersonen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of insurance agents and brokers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6622
* #6629 "Overige ondersteunende activiteiten in verband met verzekeringen en pensioenfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ondersteunende activiteiten in verband met verzekeringen en pensioenfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities auxiliary to insurance and pension funding n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #662
* #66291 "Activiteiten van verzekeringsbeurzen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van verzekeringsbeurzen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of insurance markets"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6629
* #66292 "Activiteiten van actuariële en pensioenadviesbureaus; beheer en administratie van pensioenvermogens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van actuariële en pensioenadviesbureaus; beheer en administratie van pensioenvermogens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of actuaries and pension consultancy firms; pension fund management and administration"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6629
* #66293 "Activiteiten van waarborgfondsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van waarborgfondsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of guarantee institutions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6629
* #66299 "Overige ondersteunende activiteiten in verband met verzekeringen en pensioenfondsen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ondersteunende activiteiten in verband met verzekeringen en pensioenfondsen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other activities auxiliary to insurance and pension funding (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6629
* #663 "Vermogensbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vermogensbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Fund management activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #66
* #6630 "Vermogensbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vermogensbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Fund management activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #663
* #66300 "Vermogensbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Vermogensbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Fund management activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6630
* #M "EXPLOITATIE VAN EN HANDEL IN ONROEREND GOED"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "EXPLOITATIE VAN EN HANDEL IN ONROEREND GOED"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "REAL ESTATE ACTIVITIES"
* #68 "Exploitatie van en handel in onroerend goed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van en handel in onroerend goed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Real estate activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #M
* #681 "Verhuur van en handel in eigen onroerend goed en projectontwikkeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur van en handel in eigen onroerend goed en projectontwikkeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Real estate activities with own property and development of building projects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #68
* #6811 "Handel in eigen onroerend goed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in eigen onroerend goed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Buying and selling of own real estate"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #681
* #68110 "Handel in eigen onroerend goed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in eigen onroerend goed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Buying and selling of own real estate"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6811
* #6812 "Projectontwikkeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Projectontwikkeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Development of building projects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #681
* #68120 "Projectontwikkeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Projectontwikkeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Development of building projects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6812
* #682 "Verhuur en exploitatie van eigen of geleased onroerend goed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en exploitatie van eigen of geleased onroerend goed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and operating of own or leased real estate"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #68
* #6820 "Verhuur en exploitatie van eigen of geleased onroerend goed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en exploitatie van eigen of geleased onroerend goed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and operating of own or leased real estate"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #682
* #68201 "Activiteiten van woningbouwverenigingen en -stichtingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van woningbouwverenigingen en -stichtingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of housing associations and foundations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6820
* #68202 "Verhuur en exploitatie van overige woonruimte"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en exploitatie van overige woonruimte"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Renting and operating of other residential accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6820
* #68203 "Verhuur en exploitatie van onroerend goed (niet van woonruimte)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en exploitatie van onroerend goed (niet van woonruimte)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and operating of real estate (not residential accommodation)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6820
* #683 "Bemiddeling in en beheer van onroerend goed voor een vast bedrag of op contractbasis"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in en beheer van onroerend goed voor een vast bedrag of op contractbasis"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Real estate activities on a fee or contract basis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #68
* #6831 "Bemiddeling in verband met exploitatie van en handel in onroerend goed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in verband met exploitatie van en handel in onroerend goed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for real estate activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #683
* #68310 "Bemiddeling in verband met exploitatie van en handel in onroerend goed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in verband met exploitatie van en handel in onroerend goed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for real estate activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6831
* #6832 "Overige bemiddeling in en beheer van onroerend goed voor een vast bedrag of op contractbasis"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige bemiddeling in en beheer van onroerend goed voor een vast bedrag of op contractbasis"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other real estate activities on a fee or contract basis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #683
* #68320 "Overige bemiddeling in en beheer van onroerend goed voor een vast bedrag of op contractbasis"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige bemiddeling in en beheer van onroerend goed voor een vast bedrag of op contractbasis"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other real estate activities on a fee or contract basis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6832
* #N "WETENSCHAPPELIJKE EN TECHNISCHE ACTIVITEITEN EN SPECIALISTISCHE ZAKELIJKE DIENSTVERLENING"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "WETENSCHAPPELIJKE EN TECHNISCHE ACTIVITEITEN EN SPECIALISTISCHE ZAKELIJKE DIENSTVERLENING"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "PROFESSIONAL, SCIENTIFIC AND TECHNICAL ACTIVITIES"
* #69 "Rechtskundige en boekhoudkundige dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Rechtskundige en boekhoudkundige dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Legal and accounting activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #N
* #691 "Rechtskundige dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Rechtskundige dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Legal activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #69
* #6910 "Rechtskundige dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Rechtskundige dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Legal activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #691
* #69101 "Activiteiten van advocaten, bewindvoerders en curatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van advocaten, bewindvoerders en curatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of lawyers, administrators and curators"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6910
* #69102 "Rechtskundig advies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Rechtskundig advies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Legal consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6910
* #69103 "Activiteiten van notarissen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van notarissen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of notaries"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6910
* #69104 "Activiteiten van deurwaarders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van deurwaarders"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of bailiffs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6910
* #69105 "Activiteiten van octrooibureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van octrooibureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of patent offices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6910
* #692 "Accountancy, belastingadvisering en boekhoudadministratie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Accountancy, belastingadvisering en boekhoudadministratie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Accounting, bookkeeping and auditing activities; tax consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #69
* #6920 "Accountancy, belastingadvisering en boekhoudadministratie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Accountancy, belastingadvisering en boekhoudadministratie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Accounting, bookkeeping and auditing activities; tax consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #692
* #69201 "Activiteiten van registeraccountants"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van registeraccountants"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of chartered accountants"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6920
* #69202 "Activiteiten van accountants-administratieconsulenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van accountants-administratieconsulenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of accounting consultants"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6920
* #69203 "Activiteiten van boekhouders"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van boekhouders"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other accountants"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6920
* #69204 "Belastingadvisering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Belastingadvisering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tax consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6920
* #69209 "Overige diensten op het gebied van administratie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige diensten op het gebied van administratie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other bookkeeping services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #6920
* #70 "Activiteiten van hoofdkantoren, interne concerndiensten en managementadvisering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van hoofdkantoren, interne concerndiensten en managementadvisering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of head offices and management consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #N
* #701 "Activiteiten van hoofdkantoren en interne concerndiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van hoofdkantoren en interne concerndiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of head offices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #70
* #7010 "Activiteiten van hoofdkantoren en interne concerndiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van hoofdkantoren en interne concerndiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of head offices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #701
* #70101 "Concerndiensten binnen eigen concern"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Concerndiensten binnen eigen concern"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Corporate services within own enterprise group"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7010
* #70102 "Overige activiteiten van hoofdkantoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten van hoofdkantoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other activities of head offices"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7010
* #702 "Activiteiten van adviesbureaus op het gebied van bedrijfsvoering en overig managementadvies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van adviesbureaus op het gebied van bedrijfsvoering en overig managementadvies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Business and other management consultancy activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #70
* #7020 "Activiteiten van adviesbureaus op het gebied van bedrijfsvoering en overig managementadvies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van adviesbureaus op het gebied van bedrijfsvoering en overig managementadvies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Business and other management consultancy activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #702
* #70201 "Activiteiten van organisatie-adviesbureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van organisatie-adviesbureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of organisational consultancy firms"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7020
* #70202 "Advisering op het gebied van management en bedrijfsvoering (geen public relations en organisatie-adviesbureaus)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Advisering op het gebied van management en bedrijfsvoering (geen public relations en organisatie-adviesbureaus)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Management and business consultancy activities (not public relations or organisational consultancy)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7020
* #71 "Activiteiten van architecten en ingenieurs; technisch ontwerp en advies, keuring en controle"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van architecten en ingenieurs; technisch ontwerp en advies, keuring en controle"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Architectural and engineering activities; technical testing and analysis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #N
* #711 "Activiteiten van architecten en ingenieurs; technisch ontwerp en advies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van architecten en ingenieurs; technisch ontwerp en advies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Architectural and engineering activities and related technical consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #71
* #7111 "Activiteiten van architecten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van architecten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Architectural activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #711
* #71111 "Activiteiten van architecten (geen interieurarchitecten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van architecten (geen interieurarchitecten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of architects (not interior architects)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7111
* #71112 "Activiteiten van interieurarchitecten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van interieurarchitecten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of interior architects"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7111
* #7112 "Activiteiten van ingenieurs en overig technisch ontwerp en advies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van ingenieurs en overig technisch ontwerp en advies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Engineering activities and related technical consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #711
* #71120 "Activiteiten van ingenieurs en overig technisch ontwerp en advies"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van ingenieurs en overig technisch ontwerp en advies"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Engineering activities and related technical consultancy"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7112
* #712 "Technische keuring en controle"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Technische keuring en controle"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Technical testing and analysis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #71
* #7120 "Technische keuring en controle"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Technische keuring en controle"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Technical testing and analysis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #712
* #71201 "Keuring en controle van agrarische producten en voedingsmiddelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Keuring en controle van agrarische producten en voedingsmiddelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Testing and analysis of agricultural products and foodstuffs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7120
* #71202 "Keuring en controle van machines, apparaten en materialen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Keuring en controle van machines, apparaten en materialen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Technical testing and analysis of machinery, equipment and materials"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7120
* #71203 "Overige keuring en controle"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige keuring en controle"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other technical testing and analysis"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7120
* #72 "Wetenschappelijk onderzoek en ontwikkeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wetenschappelijk onderzoek en ontwikkeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Scientific research and development"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #N
* #721 "Natuurwetenschappelijk onderzoek en experimentele ontwikkeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Natuurwetenschappelijk onderzoek en experimentele ontwikkeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Research and experimental development on natural sciences and engineering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #72
* #7210 "Natuurwetenschappelijk onderzoek en experimentele ontwikkeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Natuurwetenschappelijk onderzoek en experimentele ontwikkeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Research and experimental development on natural sciences and engineering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #721
* #72100 "Natuurwetenschappelijk onderzoek en experimentele ontwikkeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Natuurwetenschappelijk onderzoek en experimentele ontwikkeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Research and experimental development on natural sciences and engineering"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7210
* #722 "Onderzoek en experimentele ontwikkeling op het gebied van de maatschappij- en geesteswetenschappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderzoek en experimentele ontwikkeling op het gebied van de maatschappij- en geesteswetenschappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Research and experimental development on social sciences and humanities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #72
* #7220 "Onderzoek en experimentele ontwikkeling op het gebied van de maatschappij- en geesteswetenschappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderzoek en experimentele ontwikkeling op het gebied van de maatschappij- en geesteswetenschappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Research and experimental development on social sciences and humanities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #722
* #72200 "Onderzoek en experimentele ontwikkeling op het gebied van de maatschappij- en geesteswetenschappen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderzoek en experimentele ontwikkeling op het gebied van de maatschappij- en geesteswetenschappen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Research and experimental development on social sciences and humanities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7220
* #73 "Reclameactiviteiten, marktonderzoek en public relations"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reclameactiviteiten, marktonderzoek en public relations"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of advertising, market research and public relations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #N
* #731 "Activiteiten van reclamebureaus en handel in advertentieruimte en -tijd"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reclamebureaus en handel in advertentieruimte en -tijd"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Advertising"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #73
* #7311 "Activiteiten van reclamebureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reclamebureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of advertising agencies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #731
* #73110 "Activiteiten van reclamebureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reclamebureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of advertising agencies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7311
* #7312 "Handel in advertentieruimte en -tijd"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in advertentieruimte en -tijd"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Media representation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #731
* #73120 "Handel in advertentieruimte en -tijd"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Handel in advertentieruimte en -tijd"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Media representation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7312
* #732 "Markt- en opinieonderzoek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Markt- en opinieonderzoek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Market research and public opinion polling"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #73
* #7320 "Markt- en opinieonderzoek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Markt- en opinieonderzoek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Market research and public opinion polling"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #732
* #73200 "Markt- en opinieonderzoek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Markt- en opinieonderzoek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Market research and public opinion polling"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7320
* #733 "Activiteiten van adviesbureaus op het gebied van public relations en communicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van adviesbureaus op het gebied van public relations en communicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Public relations and communication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #73
* #7330 "Activiteiten van adviesbureaus op het gebied van public relations en communicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van adviesbureaus op het gebied van public relations en communicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Public relations and communication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #733
* #73300 "Activiteiten van adviesbureaus op het gebied van public relations en communicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van adviesbureaus op het gebied van public relations en communicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Public relations and communication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7330
* #74 "Overige wetenschappelijke en technische activiteiten en overige specialistische zakelijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige wetenschappelijke en technische activiteiten en overige specialistische zakelijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other professional, scientific and technical activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #N
* #741 "Activiteiten van gespecialiseerde ontwerpers"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van gespecialiseerde ontwerpers"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised design activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #74
* #7411 "Ontwerpen van industriële producten en mode"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ontwerpen van industriële producten en mode"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Industrial product and fashion design activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #741
* #74110 "Ontwerpen van industriële producten en mode"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ontwerpen van industriële producten en mode"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Industrial product and fashion design activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7411
* #7412 "Grafisch ontwerp en visuele communicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Grafisch ontwerp en visuele communicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Graphic design and visual communication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #741
* #74120 "Grafisch ontwerp en visuele communicatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Grafisch ontwerp en visuele communicatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Graphic design and visual communication activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7412
* #7413 "Interieurontwerp"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Interieurontwerp"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Interior design activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #741
* #74130 "Interieurontwerp"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Interieurontwerp"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Interior design activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7413
* #7414 "Overige gespecialiseerde ontwerpactiviteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde ontwerpactiviteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised design activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #741
* #74140 "Overige gespecialiseerde ontwerpactiviteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde ontwerpactiviteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised design activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7414
* #742 "Activiteiten op het gebied van fotografie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van fotografie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Photographic activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #74
* #7420 "Activiteiten op het gebied van fotografie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van fotografie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Photographic activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #742
* #74200 "Activiteiten op het gebied van fotografie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van fotografie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Photographic activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7420
* #743 "Activiteiten van vertalers en tolken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van vertalers en tolken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Translation and interpretation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #74
* #7430 "Activiteiten van vertalers en tolken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van vertalers en tolken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Translation and interpretation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #743
* #74300 "Activiteiten van vertalers en tolken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van vertalers en tolken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Translation and interpretation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7430
* #749 "Overige specialistische zakelijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige specialistische zakelijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other professional, scientific and technical activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #74
* #7491 "Bemiddeling in en het in de handel brengen van octrooien"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in en het in de handel brengen van octrooien"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patent brokering and marketing service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #749
* #74910 "Bemiddeling in en het in de handel brengen van octrooien"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in en het in de handel brengen van octrooien"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patent brokering and marketing service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7491
* #7499 "Overige specialistische zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige specialistische zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "All other professional, scientific and technical activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #749
* #74990 "Overige specialistische zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige specialistische zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "All other professional, scientific and technical activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7499
* #75 "Veterinaire dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Veterinaire dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Veterinary activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #N
* #750 "Veterinaire dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Veterinaire dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Veterinary activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #75
* #7500 "Veterinaire dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Veterinaire dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Veterinary activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #750
* #75000 "Veterinaire dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Veterinaire dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Veterinary activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7500
* #O "VERHUUR VAN ROERENDE GOEDEREN EN OVERIGE ZAKELIJKE DIENSTVERLENING"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "VERHUUR VAN ROERENDE GOEDEREN EN OVERIGE ZAKELIJKE DIENSTVERLENING"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "ADMINISTRATIVE AND SUPPORT SERVICE ACTIVITIES"
* #77 "Verhuur en lease"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #O
* #771 "Verhuur en lease van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #77
* #7711 "Verhuur en lease van personenauto’s en overige lichte motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van personenauto’s en overige lichte motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of cars and light motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #771
* #77111 "Verhuur en lease van personenauto’s en andere lichte motorvoertuigen (geen operational lease)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van personenauto’s en andere lichte motorvoertuigen (geen operational lease)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of cars and other light motor vehicles (not operational lease)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7711
* #77112 "Operational lease van personenauto’s en andere lichte motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Operational lease van personenauto’s en andere lichte motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operational leasing of cars and other light motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7711
* #7712 "Verhuur en lease van vrachtwagens, autobussen, campers en aanhangwagens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van vrachtwagens, autobussen, campers en aanhangwagens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of trucks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #771
* #77120 "Verhuur en lease van vrachtwagens, autobussen, campers en aanhangwagens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van vrachtwagens, autobussen, campers en aanhangwagens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of trucks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7712
* #772 "Verhuur en lease van consumentenartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van consumentenartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of personal and household goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #77
* #7721 "Verhuur en lease van recreatie- en sportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van recreatie- en sportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of recreational and sports goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #772
* #77210 "Verhuur en lease van recreatie- en sportartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van recreatie- en sportartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of recreational and sports goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7721
* #7722 "Verhuur en lease van overige consumentenartikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van overige consumentenartikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of other personal and household goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #772
* #77221 "Verhuur van kleding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur van kleding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental of clothing"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7722
* #77222 "Verhuur van  huishoudelijke artikelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur van  huishoudelijke artikelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental of household goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7722
* #77229 "Verhuur van overige consumentenartikelen (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur van overige consumentenartikelen (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental of other consumer goods (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7722
* #773 "Verhuur en lease van overige machines, werktuigen en van overige goederen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van overige machines, werktuigen en van overige goederen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of other machinery, equipment and tangible goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #77
* #7731 "Verhuur en lease van landbouwmachines en -werktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van landbouwmachines en -werktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of agricultural machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #773
* #77310 "Verhuur en lease van landbouwmachines en -werktuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van landbouwmachines en -werktuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of agricultural machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7731
* #7732 "Verhuur en lease van machines en installaties voor de bouwnijverheid en de weg- en waterbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van machines en installaties voor de bouwnijverheid en de weg- en waterbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of construction and civil engineering machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #773
* #77320 "Verhuur en lease van machines en installaties voor de bouwnijverheid en de weg- en waterbouw"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van machines en installaties voor de bouwnijverheid en de weg- en waterbouw"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of construction and civil engineering machinery and equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7732
* #7733 "Verhuur en lease van computers en kantoorapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van computers en kantoorapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of office machinery, equipment and computers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #773
* #77330 "Verhuur en lease van computers en kantoorapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van computers en kantoorapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of office machinery, equipment and computers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7733
* #7734 "Verhuur en lease van schepen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van schepen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of water transport equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #773
* #77340 "Verhuur en lease van schepen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van schepen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of water transport equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7734
* #7735 "Verhuur en lease van luchtvaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van luchtvaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of air transport equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #773
* #77350 "Verhuur en lease van luchtvaartuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van luchtvaartuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of air transport equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7735
* #7739 "Verhuur en lease van overige machines en werktuigen en van overige goederen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van overige machines en werktuigen en van overige goederen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of other machinery, equipment and tangible goods n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #773
* #77390 "Verhuur en lease van overige machines en werktuigen en van overige goederen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verhuur en lease van overige machines en werktuigen en van overige goederen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Rental and leasing of other machinery, equipment and tangible goods n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7739
* #774 "Lease van intellectuele eigendom en vergelijkbare producten, met uitzondering van werken onder auteursrecht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Lease van intellectuele eigendom en vergelijkbare producten, met uitzondering van werken onder auteursrecht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Leasing of intellectual property and similar products, except copyrighted works"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #77
* #7740 "Lease van intellectuele eigendom en vergelijkbare producten, met uitzondering van werken onder auteursrecht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Lease van intellectuele eigendom en vergelijkbare producten, met uitzondering van werken onder auteursrecht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Leasing of intellectual property and similar products, except copyrighted works"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #774
* #77400 "Lease van intellectuele eigendom en vergelijkbare producten, met uitzondering van werken onder auteursrecht"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Lease van intellectuele eigendom en vergelijkbare producten, met uitzondering van werken onder auteursrecht"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Leasing of intellectual property and similar products, except copyrighted works"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7740
* #775 "Bemiddeling in verband met verhuur en lease van materiële goederen en niet-financiële immateriële activa"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in verband met verhuur en lease van materiële goederen en niet-financiële immateriële activa"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for rental and leasing of tangible goods and non-financial intangible assets"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #77
* #7751 "Bemiddeling in verband met verhuur en lease van auto’s, campers en aanhangwagens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in verband met verhuur en lease van auto’s, campers en aanhangwagens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for rental and leasing of cars, motorhomes and trailers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #775
* #77510 "Bemiddeling in verband met verhuur en lease van auto’s, campers en aanhangwagens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in verband met verhuur en lease van auto’s, campers en aanhangwagens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for rental and leasing of cars, motorhomes and trailers"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7751
* #7752 "Bemiddeling in verband met verhuur en lease van overige materiële goederen en niet-financiële immateriële activa"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in verband met verhuur en lease van overige materiële goederen en niet-financiële immateriële activa"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for rental and leasing of other tangible goods and non-financial intangible assets"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #775
* #77520 "Bemiddeling in verband met verhuur en lease van overige materiële goederen en niet-financiële immateriële activa"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in verband met verhuur en lease van overige materiële goederen en niet-financiële immateriële activa"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for rental and leasing of other tangible goods and non-financial intangible assets"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7752
* #78 "Arbeidsbemiddeling, activiteiten van uitzendbureaus en personeelsbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Arbeidsbemiddeling, activiteiten van uitzendbureaus en personeelsbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Employment activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #O
* #781 "Arbeidsbemiddeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Arbeidsbemiddeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of employment placement agencies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #78
* #7810 "Arbeidsbemiddeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Arbeidsbemiddeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of employment placement agencies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #781
* #78100 "Arbeidsbemiddeling"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Arbeidsbemiddeling"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of employment placement agencies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7810
* #782 "Activiteiten van uitzendbureaus en overige diensten in verband met personeelsvoorziening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van uitzendbureaus en overige diensten in verband met personeelsvoorziening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Temporary employment agency activities and other human resource provisions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #78
* #7820 "Activiteiten van uitzendbureaus en overige diensten in verband met personeelsvoorziening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van uitzendbureaus en overige diensten in verband met personeelsvoorziening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Temporary employment agency activities and other human resource provisions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #782
* #78201 "Activiteiten van uitzendbureaus; personeelsbeheer voor derden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van uitzendbureaus; personeelsbeheer voor derden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of temporary employment agencies; third-party personnel management"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7820
* #78202 "Activiteiten van uitleenbureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van uitleenbureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of temporary secondment agencies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7820
* #79 "Activiteiten van reisbureaus, reisorganisatoren, reserveringsbureaus en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reisbureaus, reisorganisatoren, reserveringsbureaus en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Travel agency, tour operator and other reservation service and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #O
* #791 "Activiteiten van reisbureaus en reisorganisatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reisbureaus en reisorganisatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Travel agency and tour operator activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #79
* #7911 "Activiteiten van reisbureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reisbureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Travel agency activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #791
* #79110 "Activiteiten van reisbureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reisbureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Travel agency activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7911
* #7912 "Activiteiten van reisorganisatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reisorganisatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tour operator activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #791
* #79120 "Activiteiten van reisorganisatoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van reisorganisatoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tour operator activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7912
* #799 "Overige activiteiten van reserveringsbureaus en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten van reserveringsbureaus en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other reservation service and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #79
* #7990 "Overige activiteiten van reserveringsbureaus en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten van reserveringsbureaus en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other reservation service and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #799
* #79900 "Overige activiteiten van reserveringsbureaus en aanverwante activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten van reserveringsbureaus en aanverwante activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other reservation service and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #7990
* #80 "Opsporings- en beveiligingsdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opsporings- en beveiligingsdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Investigation and security activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #O
* #800 "Opsporings- en beveiligingsdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opsporings- en beveiligingsdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Investigation and security activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #80
* #8001 "Opsporings- en beveiligingsdiensten ter plaatse"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opsporings- en beveiligingsdiensten ter plaatse"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Investigation and private security activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #800
* #80010 "Opsporings- en beveiligingsdiensten ter plaatse"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Opsporings- en beveiligingsdiensten ter plaatse"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Investigation and private security activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8001
* #8009 "Beveiligingsactiviteiten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beveiligingsactiviteiten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Security activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #800
* #80090 "Beveiligingsactiviteiten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beveiligingsactiviteiten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Security activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8009
* #81 "Diensten in verband met gebouwen; landschapsverzorging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten in verband met gebouwen; landschapsverzorging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Services to buildings and landscape activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #O
* #811 "Facility management"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Facility management"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Combined facilities support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #81
* #8110 "Facility management"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Facility management"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Combined facilities support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #811
* #81100 "Facility management"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Facility management"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Combined facilities support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8110
* #812 "Reiniging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reiniging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cleaning activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #81
* #8121 "Interieurreiniging van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Interieurreiniging van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General cleaning of buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #812
* #81210 "Interieurreiniging van gebouwen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Interieurreiniging van gebouwen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General cleaning of buildings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8121
* #8122 "Overige reiniging van gebouwen en industriële reiniging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige reiniging van gebouwen en industriële reiniging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other building and industrial cleaning activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #812
* #81221 "Glazenwassen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Glazenwassen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Window cleaning"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8122
* #81222 "Schoorsteenvegen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Schoorsteenvegen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Chimney sweeping"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8122
* #81229 "Overige gespecialiseerde reiniging van gebouwen en industriële reiniging (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde reiniging van gebouwen en industriële reiniging (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised building and industrial cleaning activities (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8122
* #8123 "Overige reiniging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige reiniging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other cleaning activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #812
* #81230 "Overige reiniging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige reiniging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other cleaning activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8123
* #813 "Landschapsverzorging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Landschapsverzorging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Landscape service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #81
* #8130 "Landschapsverzorging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Landschapsverzorging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Landscape service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #813
* #81301 "Onderhoud van tuinen, parken en plantsoenen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderhoud van tuinen, parken en plantsoenen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Maintenance of gardens, parks and public gardens"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8130
* #81302 "Natuurbeheer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Natuurbeheer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nature conservation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8130
* #82 "Administratieve en ondersteunende activiteiten ten behoeve van kantoren en overige zakelijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Administratieve en ondersteunende activiteiten ten behoeve van kantoren en overige zakelijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Office administrative, office support and other business support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #O
* #821 "Administratieve en ondersteunende activiteiten ten behoeve van kantoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Administratieve en ondersteunende activiteiten ten behoeve van kantoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Office administrative and support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #82
* #8210 "Administratieve en ondersteunende activiteiten ten behoeve van kantoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Administratieve en ondersteunende activiteiten ten behoeve van kantoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Office administrative and support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #821
* #82100 "Administratieve en ondersteunende activiteiten ten behoeve van kantoren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Administratieve en ondersteunende activiteiten ten behoeve van kantoren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Office administrative and support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8210
* #822 "Activiteiten van callcenters"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van callcenters"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of call centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #82
* #8220 "Activiteiten van callcenters"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van callcenters"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of call centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #822
* #82200 "Activiteiten van callcenters"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van callcenters"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of call centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8220
* #823 "Organisatie van congressen en beurzen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Organisatie van congressen en beurzen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Organisation of conventions and trade shows"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #82
* #8230 "Organisatie van congressen en beurzen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Organisatie van congressen en beurzen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Organisation of conventions and trade shows"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #823
* #82300 "Organisatie van congressen en beurzen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Organisatie van congressen en beurzen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Organisation of conventions and trade shows"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8230
* #824 "Bemiddelingsactiviteiten in verband met zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for business support service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #82
* #8240 "Bemiddelingsactiviteiten in verband met zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for business support service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #824
* #82400 "Bemiddelingsactiviteiten in verband met zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for business support service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8240
* #829 "Zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Business support service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #82
* #8291 "Activiteiten van incasso- en kredietbureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van incasso- en kredietbureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of collection agencies and credit bureaus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #829
* #82910 "Activiteiten van incasso- en kredietbureaus"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van incasso- en kredietbureaus"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of collection agencies and credit bureaus"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8291
* #8292 "Activiteiten van verpakkingsbedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van verpakkingsbedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Packaging activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #829
* #82920 "Activiteiten van verpakkingsbedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van verpakkingsbedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Packaging activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8292
* #8299 "Overige zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other business support service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #829
* #82990 "Overige zakelijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige zakelijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other business support service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8299
* #P "OPENBAAR BESTUUR, OVERHEIDSDIENSTEN EN VERPLICHTE SOCIALE VERZEKERINGEN"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "OPENBAAR BESTUUR, OVERHEIDSDIENSTEN EN VERPLICHTE SOCIALE VERZEKERINGEN"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "PUBLIC ADMINISTRATION AND DEFENCE; COMPULSORY SOCIAL SECURITY"
* #84 "Openbaar bestuur, overheidsdiensten en verplichte sociale verzekeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Openbaar bestuur, overheidsdiensten en verplichte sociale verzekeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Public administration and defence; compulsory social security"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #P
* #841 "Openbaar bestuur en het economische, sociale en milieubeleid van de gemeenschap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Openbaar bestuur en het economische, sociale en milieubeleid van de gemeenschap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Administration of the State and the economic, social and environmental policies of the community"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #84
* #8411 "Algemeen overheidsbestuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Algemeen overheidsbestuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General public administration activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #841
* #84110 "Algemeen overheidsbestuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Algemeen overheidsbestuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General public administration activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8411
* #8412 "Openbaar bestuur op het gebied van gezondheidszorg, onderwijs, culturele diensten en overige sociale diensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Openbaar bestuur op het gebied van gezondheidszorg, onderwijs, culturele diensten en overige sociale diensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Regulation of health care, education, cultural services and other social services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #841
* #84121 "Openbaar bestuur van de zorg, onderwijs, cultuur en andere sociale diensten (met uitzondering van sociale werkplaatsen en banenpools sector overheid)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Openbaar bestuur van de zorg, onderwijs, cultuur en andere sociale diensten (met uitzondering van sociale werkplaatsen en banenpools sector overheid)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Public administration of health care, education, cultural and other social services (not sheltered workshops and public sector job pools)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8412
* #84122 "Beheer van sociale werkplaatsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beheer van sociale werkplaatsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Administration of schemes for sheltered workshops"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8412
* #84123 "Beheer van werkgelegenheidsprojecten (banenpools)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Beheer van werkgelegenheidsprojecten (banenpools)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Administration of schemes for employment projects (job pools)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8412
* #8413 "Openbaar bestuur op het gebied van het bedrijfsleven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Openbaar bestuur op het gebied van het bedrijfsleven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Regulation of and contribution to more efficient operation of businesses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #841
* #84130 "Openbaar bestuur op het gebied van het bedrijfsleven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Openbaar bestuur op het gebied van het bedrijfsleven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Regulation of and contribution to more efficient operation of businesses"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8413
* #842 "Overheidsdiensten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overheidsdiensten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Provision of services to the community as a whole"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #84
* #8421 "Diensten van Buitenlandse zaken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Buitenlandse zaken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Foreign affairs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #842
* #84210 "Diensten van Buitenlandse zaken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Buitenlandse zaken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Foreign affairs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8421
* #8422 "Diensten van Defensie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Defensie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Defence activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #842
* #84220 "Diensten van Defensie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Defensie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Defence activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8422
* #8423 "Diensten van Justitie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Justitie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Justice and judicial activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #842
* #84231 "Rechtspraak"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Rechtspraak"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Justice activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8423
* #84232 "Diensten van het Ministerie van Justitie en gevangeniswezen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van het Ministerie van Justitie en gevangeniswezen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Ministry of Justice and prison services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8423
* #8424 "Diensten van Openbare orde en veiligheid"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Openbare orde en veiligheid"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Public order and safety activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #842
* #84240 "Diensten van Openbare orde en veiligheid"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Openbare orde en veiligheid"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Public order and safety activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8424
* #8425 "Diensten van de Brandweer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van de Brandweer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Fire service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #842
* #84250 "Diensten van de Brandweer"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van de Brandweer"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Fire service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8425
* #843 "Diensten van Verplichte sociale verzekeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Verplichte sociale verzekeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Compulsory social security activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #84
* #8430 "Diensten van Verplichte sociale verzekeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Verplichte sociale verzekeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Compulsory social security activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #843
* #84300 "Diensten van Verplichte sociale verzekeringen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Diensten van Verplichte sociale verzekeringen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Compulsory social security activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8430
* #Q "ONDERWIJS"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "ONDERWIJS"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "EDUCATION"
* #85 "Onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #Q
* #851 "Kleuteronderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kleuteronderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Pre-primary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #85
* #8510 "Kleuteronderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kleuteronderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Pre-primary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #851
* #85100 "Kleuteronderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kleuteronderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Pre-primary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8510
* #852 "Basisonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Basisonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Primary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #85
* #8520 "Basisonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Basisonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Primary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #852
* #85201 "Regulier basisonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Regulier basisonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Regular primary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8520
* #85202 "Speciaal basisonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Speciaal basisonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Primary special needs education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8520
* #85203 "Speciaal onderwijs en voortgezet speciaal onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Speciaal onderwijs en voortgezet speciaal onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Special needs education and secondary special needs education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8520
* #853 "Voortgezet onderwijs en middelbaar beroepsonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Voortgezet onderwijs en middelbaar beroepsonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Secondary and post-secondary non-tertiary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #85
* #8531 "Voortgezet onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Voortgezet onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General secondary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #853
* #85311 "Havo, vwo en vmbo"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Havo, vwo en vmbo"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Senior general secondary education (Havo), pre-university education (Vwo) and pre-vocational secondary education (Vmbo)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8531
* #85312 "Praktijkonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Praktijkonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Practical training education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8531
* #8532 "Middelbaar beroepsonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Middelbaar beroepsonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Vocational secondary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #853
* #85320 "Middelbaar beroepsonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Middelbaar beroepsonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Vocational secondary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8532
* #8533 "Postsecundair niet-tertiair onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Postsecundair niet-tertiair onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Post-secondary non-tertiary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #853
* #85330 "Postsecundair niet-tertiair onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Postsecundair niet-tertiair onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Post-secondary non-tertiary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8533
* #854 "Tertiair onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Tertiair onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tertiary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #85
* #8540 "Tertiair onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Tertiair onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tertiary education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #854
* #85401 "Hoger beroepsonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Hoger beroepsonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "University of applied sciences education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8540
* #85402 "Universitair onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Universitair onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "University education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8540
* #855 "Overig onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overig onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #85
* #8551 "Sport- en recreatieonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sport- en recreatieonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sports and recreation education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #855
* #85510 "Sport- en recreatieonderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sport- en recreatieonderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sports and recreation education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8551
* #8552 "Cultureel onderwijs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Cultureel onderwijs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Cultural education"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #855
* #85521 "Activiteiten van dansscholen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van dansscholen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of dance schools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8552
* #85522 "Kunstzinnige vorming van amateurs (geen dansscholen)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kunstzinnige vorming van amateurs (geen dansscholen)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Artistic and cultural education of amateurs (not dance schools)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8552
* #8553 "Activiteiten van auto- en motorrijscholen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van auto- en motorrijscholen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Driving school activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #855
* #85530 "Activiteiten van auto- en motorrijscholen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van auto- en motorrijscholen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Driving school activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8553
* #8559 "Overig onderwijs (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overig onderwijs (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other education n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #855
* #85591 "Bedrijfsopleiding en -training"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bedrijfsopleiding en -training"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Business education and training"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8559
* #85599 "Studiebegeleiding en overig onderwijs n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Studiebegeleiding en overig onderwijs n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Tutoring and other education n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8559
* #856 "Onderwijsondersteunende activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderwijsondersteunende activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Educational support activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #85
* #8561 "Bemiddeling op het gebied van educatieve diensten en studiebegeleiding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling op het gebied van educatieve diensten en studiebegeleiding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for courses and tutors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #856
* #85610 "Bemiddeling op het gebied van educatieve diensten en studiebegeleiding"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling op het gebied van educatieve diensten en studiebegeleiding"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for courses and tutors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8561
* #8569 "Onderwijsondersteunende activiteiten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderwijsondersteunende activiteiten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Educational support activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #856
* #85690 "Onderwijsondersteunende activiteiten, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Onderwijsondersteunende activiteiten, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Educational support activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8569
* #R "GEZONDHEIDS- EN WELZIJNSZORG"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "GEZONDHEIDS- EN WELZIJNSZORG"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "HUMAN HEALTH AND SOCIAL WORK ACTIVITIES"
* #86 "Gezondheidszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Gezondheidszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Human health activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #R
* #861 "Activiteiten van ziekenhuizen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van ziekenhuizen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hospital activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #86
* #8610 "Activiteiten van ziekenhuizen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van ziekenhuizen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hospital activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #861
* #86101 "Exploitatie van Universitair Medische Centra"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van Universitair Medische Centra"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of University Medical Centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8610
* #86102 "Algemene ziekenhuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Algemene ziekenhuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General hospital care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8610
* #86103 "Overige ziekenhuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ziekenhuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other hospital care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8610
* #86104 "Curatieve Geestelijke gezondheidszorg met verblijf (met uitzondering van activiteiten van verslavingsklinieken)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Curatieve Geestelijke gezondheidszorg met verblijf (met uitzondering van activiteiten van verslavingsklinieken)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Curative mental health care with overnight stay (not activities of addiction clinics)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8610
* #862 "Activiteiten van artsen en tandartsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van artsen en tandartsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medical and dental practice activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #86
* #8621 "Huisartsenzorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Huisartsenzorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General medical practice activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #862
* #86210 "Huisartsenzorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Huisartsenzorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General medical practice activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8621
* #8622 "Activiteiten van medisch specialisten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van medisch specialisten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Medical specialists activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #862
* #86221 "Medisch specialistische zorg zonder verblijf (met uitzondering van psychiatrische zorg)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Medisch specialistische zorg zonder verblijf (met uitzondering van psychiatrische zorg)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Specialised medical care without overnight stay (not psychiatric care)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8622
* #86222 "Psychiatrische zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Psychiatrische zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Psychiatric care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8622
* #8623 "Tandheelkundige zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Tandheelkundige zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Dental practice care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #862
* #86230 "Tandheelkundige zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Tandheelkundige zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Dental practice care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8623
* #869 "Paramedische zorg en overige gezondheidszorg zonder verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Paramedische zorg en overige gezondheidszorg zonder verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other human health activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #86
* #8691 "Activiteiten van medische beeldvorming en medische laboratoria"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van medische beeldvorming en medische laboratoria"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Diagnostic imaging services and medical laboratory activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86910 "Activiteiten van medische beeldvorming en medische laboratoria"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van medische beeldvorming en medische laboratoria"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Diagnostic imaging services and medical laboratory activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8691
* #8692 "Ambulancezorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ambulancezorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patient transportation by ambulance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86920 "Ambulancezorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ambulancezorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Patient transportation by ambulance"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8692
* #8693 "Psychologische zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Psychologische zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of psychologists and psychotherapists, except medical doctors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86930 "Psychologische zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Psychologische zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of psychologists and psychotherapists, except medical doctors"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8693
* #8694 "Verpleging, verzorging en verloskundige zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleging, verzorging en verloskundige zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nursing and midwifery activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86941 "Verloskundige zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verloskundige zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of midwifes"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8694
* #86942 "Verpleging en verzorging thuis en kraamzorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleging en verzorging thuis en kraamzorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nursing and personal care at home and maternity care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8694
* #86943 "Overige verpleging en verzorging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige verpleging en verzorging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other Nursing and personal care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8694
* #8695 "Fysiotherapie en ergotherapie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fysiotherapie en ergotherapie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Physiotherapy activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86950 "Fysiotherapie en ergotherapie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Fysiotherapie en ergotherapie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Physiotherapy activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8695
* #8696 "Alternatieve geneeskunde en oefentherapie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Alternatieve geneeskunde en oefentherapie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Traditional, complementary and alternative medicine activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86960 "Alternatieve geneeskunde en oefentherapie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Alternatieve geneeskunde en oefentherapie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Traditional, complementary and alternative medicine activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8696
* #8697 "Bemiddeling in de gezondheidszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in de gezondheidszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for medical, dental and other human health services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86970 "Bemiddeling in de gezondheidszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in de gezondheidszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for medical, dental and other human health services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8697
* #8699 "Overige gezondheidszorg zonder verblijf (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gezondheidszorg zonder verblijf (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other human health activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #869
* #86991 "Arbozorg (inclusief activiteiten van zelfstandige bedrijfsartsen)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Arbozorg (inclusief activiteiten van zelfstandige bedrijfsartsen)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Occupational health and safety service (including activities of independent occupational physicians)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8699
* #86992 "Preventieve zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Preventieve zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Preventive care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8699
* #86993 "Overige mondzorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige mondzorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other oral health care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8699
* #86994 "Overige paramedische zorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige paramedische zorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other paramedical care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8699
* #86999 "Overige gezondheidszorg zonder verblijf, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gezondheidszorg zonder verblijf, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other health care without overnight stay n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8699
* #87 "Verpleging, verzorging en begeleiding met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleging, verzorging en begeleiding met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #R
* #871 "Verpleeghuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleeghuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential nursing care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #87
* #8710 "Verpleeghuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleeghuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential nursing care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #871
* #87100 "Verpleeghuiszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verpleeghuiszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential nursing care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8710
* #872 "Verblijfszorg voor mensen met psychische aandoeningen en voor mensen met een middelenverslaving"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg voor mensen met psychische aandoeningen en voor mensen met een middelenverslaving"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care activities for persons living with or having a diagnosis of a mental illness or substance abuse"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #87
* #8720 "Verblijfszorg voor mensen met psychische aandoeningen en voor mensen met een middelenverslaving"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg voor mensen met psychische aandoeningen en voor mensen met een middelenverslaving"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care activities for persons living with or having a diagnosis of a mental illness or substance abuse"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #872
* #87201 "Verstandelijke gehandicaptenzorg met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verstandelijke gehandicaptenzorg met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care for persons with intellectual disabilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8720
* #87202 "Verblijfszorg voor mensen met een langdurige geestelijke gezondheidszorgvraag of een middelenverslaving"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg voor mensen met een langdurige geestelijke gezondheidszorgvraag of een middelenverslaving"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care for persons with non-intellectual mental illness or substance abuse"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8720
* #873 "Verblijfszorg voor ouderen of personen met een lichamelijke handicap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg voor ouderen of personen met een lichamelijke handicap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care activities for older persons or persons with physical disabilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #87
* #8730 "Verblijfszorg voor ouderen of personen met een lichamelijke handicap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg voor ouderen of personen met een lichamelijke handicap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care activities for older persons or persons with physical disabilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #873
* #87301 "Lichamelijke en zintuiglijke gehandicaptenzorg met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Lichamelijke en zintuiglijke gehandicaptenzorg met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential physical and sensory disability care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8730
* #87302 "Verblijfszorg met persoonlijke verzorging en begeleiding voor ouderen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Verblijfszorg met persoonlijke verzorging en begeleiding voor ouderen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential care with personal care and assistance for the elderly"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8730
* #879 "Overige activiteiten op het gebied van verpleging, verzorging en begeleiding met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van verpleging, verzorging en begeleiding met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other residential care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #87
* #8791 "Bemiddeling in de verblijfszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in de verblijfszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for residential care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #879
* #87910 "Bemiddeling in de verblijfszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddeling in de verblijfszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for residential care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8791
* #8799 "Overige activiteiten op het gebied van verpleging, verzorging en begeleiding met verblijf (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van verpleging, verzorging en begeleiding met verblijf (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other residential care activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #879
* #87991 "Jeugdzorg met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Jeugdzorg met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential youth care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8799
* #87992 "Maatschappelijke opvang met verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maatschappelijke opvang met verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Residential social care"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8799
* #88 "Maatschappelijke dienstverlening zonder verblijf"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maatschappelijke dienstverlening zonder verblijf"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Social work activities without accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #R
* #881 "Maatschappelijke dienstverlening zonder verblijf gericht op ouderen en mensen met een handicap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maatschappelijke dienstverlening zonder verblijf gericht op ouderen en mensen met een handicap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Social work activities without accommodation for older persons or persons with disabilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #88
* #8810 "Maatschappelijke dienstverlening zonder verblijf gericht op ouderen en mensen met een handicap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maatschappelijke dienstverlening zonder verblijf gericht op ouderen en mensen met een handicap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Social work activities without accommodation for older persons or persons with disabilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #881
* #88101 "Huishoudelijke hulp voor ouderen en mensen met een handicap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Huishoudelijke hulp voor ouderen en mensen met een handicap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Home assistance services for elderly and persons with disabilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8810
* #88102 "Ondersteuning en begeleiding ouderen (inclusief dagactiviteiten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteuning en begeleiding ouderen (inclusief dagactiviteiten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support and assistance for elderly people (including day time activities)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8810
* #88103 "Ondersteuning en begeleiding mensen met een handicap (inclusief dagactiviteiten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteuning en begeleiding mensen met een handicap (inclusief dagactiviteiten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support and assistance for people with disabilities (including day time activities)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8810
* #889 "Maatschappelijke dienstverlening zonder verblijf niet specifiek gericht op ouderen en mensen met een handicap"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Maatschappelijke dienstverlening zonder verblijf niet specifiek gericht op ouderen en mensen met een handicap"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other social work activities without accommodation"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #88
* #8891 "Kinderopvang"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kinderopvang"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Child day-care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #889
* #88910 "Kinderopvang"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kinderopvang"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Child day-care activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8891
* #8899 "Overige maatschappelijke dienstverlening waarbij geen onderdak wordt verschaft, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige maatschappelijke dienstverlening waarbij geen onderdak wordt verschaft, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other social work activities without accommodation n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #889
* #88991 "Ondersteuning en begeleiding jeugdigen zonder verblijf (inclusief dagactiviteiten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteuning en begeleiding jeugdigen zonder verblijf (inclusief dagactiviteiten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support and asistance for young people without overnight stay (including day time activities)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8899
* #88992 "Sociaal-maatschappelijk welzijnswerk"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sociaal-maatschappelijk welzijnswerk"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Social welfare work"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8899
* #88999 "Overige welzijnszorg"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige welzijnszorg"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other social work activities without accommodation n.e.c. (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #8899
* #S "KUNST, CULTUUR, SPORT EN RECREATIE ACTIVITEITEN"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "KUNST, CULTUUR, SPORT EN RECREATIE ACTIVITEITEN"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "ARTS, SPORTS AND RECREATION"
* #90 "Activiteiten op het gebied van scheppende en uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van scheppende en uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Arts creation and performing arts activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #S
* #901 "Activiteiten op het gebied van scheppende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van scheppende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Arts creation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #90
* #9011 "Literaire creatie en compositie van muziek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Literaire creatie en compositie van muziek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Literary creation and musical composition activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #901
* #90110 "Literaire creatie en compositie van muziek"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Literaire creatie en compositie van muziek"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Literary creation and musical composition activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9011
* #9012 "Creatie van beeldende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Creatie van beeldende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Visual arts creation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #901
* #90120 "Creatie van beeldende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Creatie van beeldende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Visual arts creation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9012
* #9013 "Overige vormen van scheppende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige vormen van scheppende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other arts creation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #901
* #90130 "Overige vormen van scheppende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige vormen van scheppende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other arts creation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9013
* #902 "Activiteiten op het gebied van uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of performing arts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #90
* #9020 "Activiteiten op het gebied van uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of performing arts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #902
* #90200 "Activiteiten op het gebied van uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of performing arts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9020
* #903 "Ondersteunende activiteiten voor scheppende en uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Ondersteunende activiteiten voor scheppende en uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Support activities to arts creation and performing arts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #90
* #9031 "Exploitatie van theaters, schouwburgen en poppodia"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van theaters, schouwburgen en poppodia"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of arts facilities and sites"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #903
* #90310 "Exploitatie van theaters, schouwburgen en poppodia"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van theaters, schouwburgen en poppodia"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of arts facilities and sites"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9031
* #9039 "Overige ondersteunende activiteiten voor scheppende en uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ondersteunende activiteiten voor scheppende en uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other support activities to arts and performing arts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #903
* #90391 "Uitvoerende en ondersteunende productie van scheppende en uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitvoerende en ondersteunende productie van scheppende en uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Performing and supporting production activites in creative and performing arts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9039
* #90392 "Organisatie van festivals op het gebied van scheppende en uitvoerende kunst"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Organisatie van festivals op het gebied van scheppende en uitvoerende kunst"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Organisation of festivals related to creative and performing arts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9039
* #90399 "Overige ondersteunende activiteiten voor scheppende en uitvoerende kunst (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige ondersteunende activiteiten voor scheppende en uitvoerende kunst (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other support activities to arts and performing arts (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9039
* #91 "Activiteiten van bibliotheken, archieven, musea en overige culturele activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bibliotheken, archieven, musea en overige culturele activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Libraries, archives, museums and other cultural activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #S
* #911 "Activiteiten van bibliotheken en archieven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bibliotheken en archieven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Library and archive activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #91
* #9111 "Activiteiten van bibliotheken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bibliotheken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Library activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #911
* #91111 "Activiteiten van openbare bibliotheken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van openbare bibliotheken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of public libraries"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9111
* #91119 "Activiteiten van overige culturele uitleencentra en bibliotheken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige culturele uitleencentra en bibliotheken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other cultural lending centres and libraries"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9111
* #9112 "Activiteiten van archieven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van archieven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Archive activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #911
* #91120 "Activiteiten van archieven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van archieven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Archive activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9112
* #912 "Activiteiten van musea en activiteiten met betrekking tot collecties, historische locaties en monumenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van musea en activiteiten met betrekking tot collecties, historische locaties en monumenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Museum, collection, historical site and monument activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #91
* #9121 "Activiteiten van musea en activiteiten met betrekking tot collecties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van musea en activiteiten met betrekking tot collecties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Museum and collection activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #912
* #91211 "Activiteiten van musea"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van musea"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of museums"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9121
* #91219 "Activiteiten van overige presentatie- en expositieruimten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige presentatie- en expositieruimten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other presentation and exhibition centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9121
* #9122 "Activiteiten met betrekking tot historische locaties en monumenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten met betrekking tot historische locaties en monumenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Historical site and monument activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #912
* #91220 "Activiteiten met betrekking tot historische locaties en monumenten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten met betrekking tot historische locaties en monumenten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Historical site and monument activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9122
* #913 "Instandhouding, restauratie en overige ondersteunende activiteiten voor cultureel erfgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Instandhouding, restauratie en overige ondersteunende activiteiten voor cultureel erfgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Conservation, restoration and other support activities for cultural heritage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #91
* #9130 "Instandhouding, restauratie en overige ondersteunende activiteiten voor cultureel erfgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Instandhouding, restauratie en overige ondersteunende activiteiten voor cultureel erfgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Conservation, restoration and other support activities for cultural heritage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #913
* #91300 "Instandhouding, restauratie en overige ondersteunende activiteiten voor cultureel erfgoed"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Instandhouding, restauratie en overige ondersteunende activiteiten voor cultureel erfgoed"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Conservation, restoration and other support activities for cultural heritage"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9130
* #914 "Activiteiten van botanische tuinen, dierentuinen en natuurreservaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van botanische tuinen, dierentuinen en natuurreservaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Botanical and zoological garden and nature reserve activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #91
* #9141 "Activiteiten van botanische tuinen en dierentuinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van botanische tuinen en dierentuinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Botanical and zoological garden activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #914
* #91410 "Activiteiten van botanische tuinen en dierentuinen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van botanische tuinen en dierentuinen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Botanical and zoological garden activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9141
* #9142 "Activiteiten op het gebied van beheer en instandhouding van natuurreservaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van beheer en instandhouding van natuurreservaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nature reserve activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #914
* #91420 "Activiteiten op het gebied van beheer en instandhouding van natuurreservaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van beheer en instandhouding van natuurreservaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Nature reserve activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9142
* #92 "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Gambling and betting activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #S
* #920 "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Gambling and betting activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #92
* #9200 "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Gambling and betting activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #920
* #92000 "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van loterijen, kansspelen en kansspelautomaten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Gambling and betting activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9200
* #93 "Sport, ontspanning en recreatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Sport, ontspanning en recreatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sports activities and amusement and recreation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #S
* #931 "Activiteiten op het gebied van sport"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van sport"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sports activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #93
* #9311 "Exploitatie van sportaccommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van sportaccommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of sports facilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #931
* #93111 "Exploitatie van zwembaden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van zwembaden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of swimming pools"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9311
* #93112 "Exploitatie van sporthallen, sportzalen en gymzalen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van sporthallen, sportzalen en gymzalen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of sports halls and gymnasiums"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9311
* #93113 "Exploitatie van sportvelden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van sportvelden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of spors fields"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9311
* #93114 "Exploitatie van maneges"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van maneges"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of equestrian centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9311
* #93119 "Exploitatie van overige sportaccommodaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van overige sportaccommodaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of other sports facilities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9311
* #9312 "Activiteiten van sportclubs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van sportclubs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of sports clubs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #931
* #93121 "Activiteiten van veldvoetbalclubs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van veldvoetbalclubs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of football clubs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9312
* #93122 "Activiteiten van tennisclubs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van tennisclubs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of tennis clubs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9312
* #93123 "Activiteiten van zaalsportclubs, zowel individueel als in teamverband"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van zaalsportclubs, zowel individueel als in teamverband"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of indoor sports clubs, both individual and team-based"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9312
* #93124 "Activiteiten van zwemclubs en onderwatersportclubs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van zwemclubs en onderwatersportclubs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of swimming clubs and underwater sports clubs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9312
* #93129 "Activiteiten van overige sportclubs en omnisportclubs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige sportclubs en omnisportclubs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other sports clubs and omnisports clubs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9312
* #9313 "Activiteiten van fitnesscentra"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van fitnesscentra"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of fitness centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #931
* #93130 "Activiteiten van fitnesscentra"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van fitnesscentra"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of fitness centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9313
* #9319 "Overige sportactiviteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige sportactiviteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Sports activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #931
* #93191 "Activiteiten van beroepssportlieden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van beroepssportlieden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of professional sportsmen and women"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9319
* #93192 "Activiteiten van supportersverenigingen op het gebied van sport"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van supportersverenigingen op het gebied van sport"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of supporters' associations in the field of sports"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9319
* #93193 "Organiseren van sportevenementen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Organiseren van sportevenementen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Organisation of sports events"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9319
* #93194 "Activiteiten van overkoepelende organen en samenwerkings- en adviesorganen op het gebied van sport"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overkoepelende organen en samenwerkings- en adviesorganen op het gebied van sport"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of umbrella, collaborative and advisory bodies in the field of sports"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9319
* #93199 "Overige sportactiviteiten (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige sportactiviteiten (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other sports activities (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9319
* #932 "Activiteiten op het gebied van ontspanning en recreatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten op het gebied van ontspanning en recreatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Amusement and recreation activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #93
* #9321 "Exploitatie van pret- en themaparken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van pret- en themaparken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of amusement parks and theme parks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #932
* #93210 "Exploitatie van pret- en themaparken"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van pret- en themaparken"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of amusement parks and theme parks"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9321
* #9329 "Overige activiteiten op het gebied van ontspanning en recreatie"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van ontspanning en recreatie"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Amusement and recreation activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #932
* #93291 "Exploitatie van jachthavens"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van jachthavens"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of marinas"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9329
* #93292 "Exploitatie van kermisattracties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van kermisattracties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of fairground attractions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9329
* #93293 "Exploitatie van speelautomaten (met uitzondering van kansspelautomaten)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Exploitatie van speelautomaten (met uitzondering van kansspelautomaten)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Operation of gaming machines (not gambling machines)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9329
* #93299 "Overige activiteiten op het gebied van ontspanning en recreatie (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige activiteiten op het gebied van ontspanning en recreatie (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other amusement and recreational activities (rest)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9329
* #T "OVERIGE DIENSTVERLENING"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "OVERIGE DIENSTVERLENING"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "OTHER SERVICE ACTIVITIES"
* #94 "Activiteiten van ledenorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van ledenorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of membership organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #941 "Activiteiten van bedrijfs-, werkgevers- en beroepsorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bedrijfs-, werkgevers- en beroepsorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of business, employers and professional membership organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #94
* #9411 "Activiteiten van bedrijfs- en werkgeversorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bedrijfs- en werkgeversorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of business and employers membership organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #941
* #94110 "Activiteiten van bedrijfs- en werkgeversorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bedrijfs- en werkgeversorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of business and employers membership organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9411
* #9412 "Activiteiten van beroepsorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van beroepsorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of professional membership organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #941
* #94120 "Activiteiten van beroepsorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van beroepsorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of professional membership organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9412
* #942 "Activiteiten van werknemersorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van werknemersorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of trade unions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #94
* #9420 "Activiteiten van werknemersorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van werknemersorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of trade unions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #942
* #94200 "Activiteiten van werknemersorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van werknemersorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of trade unions"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9420
* #949 "Activiteiten van overige ledenorganisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige ledenorganisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other membership organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #94
* #9491 "Activiteiten van levensbeschouwelijke organisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van levensbeschouwelijke organisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of religious organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #949
* #94910 "Activiteiten van levensbeschouwelijke organisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van levensbeschouwelijke organisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of religious organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9491
* #9492 "Activiteiten van politieke organisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van politieke organisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of political organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #949
* #94920 "Activiteiten van politieke organisaties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van politieke organisaties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of political organisations"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9492
* #9499 "Activiteiten van overige ledenorganisaties (rest)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige ledenorganisaties (rest)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other membership organisations n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #949
* #94991 "Activiteiten van gezelligheidsverenigingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van gezelligheidsverenigingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of social clubs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9499
* #94992 "Activiteiten van hobbyclubs"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van hobbyclubs"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of hobby clubs"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9499
* #94993 "Activiteiten van steunfondsen (niet op het gebied van welzijnszorg)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van steunfondsen (niet op het gebied van welzijnszorg)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of aid funds (not in the field of welfare)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9499
* #94994 "Activiteiten van vriendenkringen op het gebied van cultuur, fanclubs en overige kunstbevordering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van vriendenkringen op het gebied van cultuur, fanclubs en overige kunstbevordering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of circles of friends in the field of culture, fan clubs and other art promotion"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9499
* #94995 "Activiteiten van overkoepelende organen en samenwerkings- en adviesorganen (niet op het gebied van sport en recreatie)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overkoepelende organen en samenwerkings- en adviesorganen (niet op het gebied van sport en recreatie)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of umbrella organisations, collaborative and advisory bodies (not for sports and recreation)"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9499
* #94996 "Activiteiten van overige ideële organisaties n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van overige ideële organisaties n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of other non-commercial organisations n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9499
* #94997 "Overige belangenbehartiging n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige belangenbehartiging n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other advocacy activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9499
* #95 "Reparatie en onderhoud van computers, consumentenartikelen, auto’s en motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van computers, consumentenartikelen, auto’s en motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of computers, personal and household goods, and motor vehicles and motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #951 "Reparatie en onderhoud van computers en communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van computers en communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of computers and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #95
* #9510 "Reparatie en onderhoud van computers en communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van computers en communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of computers and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #951
* #95100 "Reparatie en onderhoud van computers en communicatieapparatuur"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van computers en communicatieapparatuur"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of computers and communication equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9510
* #952 "Reparatie en onderhoud van consumentenartikelen (met uitzondering van computers, communicatieapparatuur, auto's en motorfietsen)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van consumentenartikelen (met uitzondering van computers, communicatieapparatuur, auto's en motorfietsen)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of personal and household goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #95
* #9521 "Reparatie en onderhoud van consumentenelektronica (met uitzondering van computers)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van consumentenelektronica (met uitzondering van computers)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of consumer electronics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #952
* #95210 "Reparatie en onderhoud van consumentenelektronica (met uitzondering van computers)"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van consumentenelektronica (met uitzondering van computers)"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of consumer electronics"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9521
* #9522 "Reparatie en onderhoud van huishoudelijke apparaten en van werktuigen voor gebruik in huis en tuin"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van huishoudelijke apparaten en van werktuigen voor gebruik in huis en tuin"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of household appliances and home and garden equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #952
* #95220 "Reparatie en onderhoud van huishoudelijke apparaten en van werktuigen voor gebruik in huis en tuin"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van huishoudelijke apparaten en van werktuigen voor gebruik in huis en tuin"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of household appliances and home and garden equipment"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9522
* #9523 "Reparatie en onderhoud van schoenen en lederwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van schoenen en lederwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of footwear and leather goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #952
* #95230 "Reparatie en onderhoud van schoenen en lederwaren"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van schoenen en lederwaren"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of footwear and leather goods"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9523
* #9524 "Reparatie en onderhoud van meubelen en stoffering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van meubelen en stoffering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of furniture and home furnishings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #952
* #95240 "Reparatie en onderhoud van meubelen en stoffering"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van meubelen en stoffering"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of furniture and home furnishings"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9524
* #9525 "Reparatie en onderhoud van uurwerken en sieraden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van uurwerken en sieraden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of watches, clocks and jewellery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #952
* #95250 "Reparatie en onderhoud van uurwerken en sieraden"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van uurwerken en sieraden"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of watches, clocks and jewellery"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9525
* #9529 "Reparatie en onderhoud van consumentenartikelen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van consumentenartikelen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of personal and household goods n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #952
* #95290 "Reparatie en onderhoud van consumentenartikelen, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van consumentenartikelen, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of personal and household goods n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9529
* #953 "Reparatie en onderhoud van motorvoertuigen en motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van motorvoertuigen en motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of motor vehicles and motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #95
* #9531 "Reparatie en onderhoud van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #953
* #95311 "Algemene reparatie en onderhoud van motorvoertuigen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Algemene reparatie en onderhoud van motorvoertuigen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "General repair and maintenance of motor vehicles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9531
* #95312 "Activiteiten van auto-onderdelenservicebedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van auto-onderdelenservicebedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of motor vehicle parts service centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9531
* #95313 "Activiteiten van bandenservicebedrijven"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van bandenservicebedrijven"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of tyre service centres"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9531
* #95314 "Reparatie van specifieke auto-onderdelen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie van specifieke auto-onderdelen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair of specific car parts"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9531
* #95315 "Carrosserieherstel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Carrosserieherstel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Bodywork repair"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9531
* #95316 "Overige gespecialiseerde reparatie en slepen van auto's"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige gespecialiseerde reparatie en slepen van auto's"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other specialised car repair and towing activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9531
* #9532 "Reparatie en onderhoud van motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #953
* #95320 "Reparatie en onderhoud van motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Reparatie en onderhoud van motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Repair and maintenance of motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9532
* #954 "Bemiddelingsactiviteiten in verband met reparatie en onderhoud van computers, consumentenartikelen, motorvoertuigen en motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met reparatie en onderhoud van computers, consumentenartikelen, motorvoertuigen en motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for repair and maintenance of computers, personal and household goods, and motor vehicles and motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #95
* #9540 "Bemiddelingsactiviteiten in verband met reparatie en onderhoud van computers, consumentenartikelen, motorvoertuigen en motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met reparatie en onderhoud van computers, consumentenartikelen, motorvoertuigen en motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for repair and maintenance of computers, personal and household goods, and motor vehicles and motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #954
* #95400 "Bemiddelingsactiviteiten in verband met reparatie en onderhoud van computers, consumentenartikelen, motorvoertuigen en motorfietsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten in verband met reparatie en onderhoud van computers, consumentenartikelen, motorvoertuigen en motorfietsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for repair and maintenance of computers, personal and household goods, and motor vehicles and motorcycles"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9540
* #96 "Persoonlijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Persoonlijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Personal service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #T
* #961 "Wassen en chemisch reinigen van textiel en bontproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wassen en chemisch reinigen van textiel en bontproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Washing and cleaning of textile and fur products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #96
* #9610 "Wassen en chemisch reinigen van textiel en bontproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wassen en chemisch reinigen van textiel en bontproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Washing and cleaning of textile and fur products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #961
* #96100 "Wassen en chemisch reinigen van textiel en bontproducten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Wassen en chemisch reinigen van textiel en bontproducten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Washing and cleaning of textile and fur products"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9610
* #962 "Haarverzorging, schoonheidsverzorging, activiteiten van wellnesscentra en dergelijke"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Haarverzorging, schoonheidsverzorging, activiteiten van wellnesscentra en dergelijke"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hairdressing, beauty treatment, day spa and similar activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #96
* #9621 "Kappers- en barbiersactiviteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kappers- en barbiersactiviteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hairdressing and barber activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #962
* #96210 "Kappers- en barbiersactiviteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Kappers- en barbiersactiviteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Hairdressing and barber activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9621
* #9622 "Schoonheidsverzorging en overige schoonheidsbehandelingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Schoonheidsverzorging en overige schoonheidsbehandelingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Beauty care and other beauty treatment activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #962
* #96220 "Schoonheidsverzorging en overige schoonheidsbehandelingen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Schoonheidsverzorging en overige schoonheidsbehandelingen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Beauty care and other beauty treatment activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9622
* #9623 "Activiteiten van wellnesscentra en sauna’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van wellnesscentra en sauna’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Day spa, sauna and steam bath activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #962
* #96230 "Activiteiten van wellnesscentra en sauna’s"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van wellnesscentra en sauna’s"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Day spa, sauna and steam bath activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9623
* #963 "Uitvaartverzorging en aanverwachte activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitvaartverzorging en aanverwachte activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Funeral and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #96
* #9630 "Uitvaartverzorging en aanverwachte activiteiten"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitvaartverzorging en aanverwachte activiteiten"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Funeral and related activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #963
* #96301 "Uitvaartverzorging"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Uitvaartverzorging"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Funeral services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9630
* #96302 "Activiteiten van crematoria, mortuaria en begraafplaatsen"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van crematoria, mortuaria en begraafplaatsen"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of crematoria, mortuaries and cemeteries"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9630
* #964 "Bemiddelingsactiviteiten op het gebied van persoonlijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten op het gebied van persoonlijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for personal services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #96
* #9640 "Bemiddelingsactiviteiten op het gebied van persoonlijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten op het gebied van persoonlijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for personal services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #964
* #96400 "Bemiddelingsactiviteiten op het gebied van persoonlijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Bemiddelingsactiviteiten op het gebied van persoonlijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Intermediation service activities for personal services"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9640
* #969 "Overige persoonlijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige persoonlijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other personal service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #96
* #9691 "Huishoudelijke persoonlijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Huishoudelijke persoonlijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Provision of domestic personal service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #969
* #96910 "Huishoudelijke persoonlijke dienstverlening"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Huishoudelijke persoonlijke dienstverlening"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Provision of domestic personal service activities"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9691
* #9699 "Overige persoonlijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige persoonlijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other personal service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #969
* #96990 "Overige persoonlijke dienstverlening, n.e.g."
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Overige persoonlijke dienstverlening, n.e.g."
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Other personal service activities n.e.c."
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9699
* #U "ACTIVITEITEN VAN HUISHOUDENS ALS WERKGEVER EN NIET-GEDIFFERENTIEERDE PRODUCTIE VAN GOEDEREN EN DIENSTEN DOOR HUISHOUDENS VOOR EIGEN GEBRUIK"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "ACTIVITEITEN VAN HUISHOUDENS ALS WERKGEVER EN NIET-GEDIFFERENTIEERDE PRODUCTIE VAN GOEDEREN EN DIENSTEN DOOR HUISHOUDENS VOOR EIGEN GEBRUIK"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "ACTIVITIES OF HOUSEHOLDS AS EMPLOYERS AND UNDIFFERENTIATED GOODS- AND SERVICE-PRODUCING ACTIVITIES OF HOUSEHOLDS FOR OWN USE"
* #97 "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of households as employers of domestic personnel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #U
* #970 "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of households as employers of domestic personnel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #97
* #9700 "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of households as employers of domestic personnel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #970
* #97000 "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van huishoudens als werkgever van huishoudelijk personeel"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of households as employers of domestic personnel"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9700
* #98 "Niet-gedifferentieerde productie van goederen en diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gedifferentieerde productie van goederen en diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Undifferentiated goods- and service-producing activities of private households for own use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #U
* #981 "Niet-gedifferentieerde productie van goederen door particuliere huishoudens voor eigen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gedifferentieerde productie van goederen door particuliere huishoudens voor eigen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Undifferentiated goods-producing activities of private households for own use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #98
* #9810 "Niet-gedifferentieerde productie van goederen door particuliere huishoudens voor eigen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gedifferentieerde productie van goederen door particuliere huishoudens voor eigen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Undifferentiated goods-producing activities of private households for own use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #981
* #98100 "Niet-gedifferentieerde productie van goederen door particuliere huishoudens voor eigen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gedifferentieerde productie van goederen door particuliere huishoudens voor eigen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Undifferentiated goods-producing activities of private households for own use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9810
* #982 "Niet-gedifferentieerde productie van diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gedifferentieerde productie van diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Undifferentiated service-producing activities of private households for own use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #98
* #9820 "Niet-gedifferentieerde productie van diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gedifferentieerde productie van diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Undifferentiated service-producing activities of private households for own use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #982
* #98200 "Niet-gedifferentieerde productie van diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Niet-gedifferentieerde productie van diensten door particuliere huishoudens voor eigen gebruik"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Undifferentiated service-producing activities of private households for own use"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9820
* #V "ACTIVITEITEN VAN EXTRATERRITORIALE ORGANISATIES EN INSTANTIES"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "ACTIVITEITEN VAN EXTRATERRITORIALE ORGANISATIES EN INSTANTIES"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "ACTIVITIES OF EXTRATERRITORIAL ORGANISATIONS AND BODIES"
* #99 "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of extraterritorial organisations and bodies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #V
* #990 "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of extraterritorial organisations and bodies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #99
* #9900 "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of extraterritorial organisations and bodies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #990
* #99000 "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[0].language = #nl-NL
  * ^designation[=].value = "Activiteiten van extraterritoriale organisaties en instanties"
  * ^designation[+].language = #en-US
  * ^designation[=].value = "Activities of extraterritorial organisations and bodies"
  * ^property[+].code = #parent
  * ^property[=].valueCode = #9900
