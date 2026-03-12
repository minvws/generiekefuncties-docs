// ============================================================================
// Logical Model: KVK Basisprofiel (source structure for StructureMap)
// ============================================================================

Logical: KvkBasisprofiel
Title: "KVK Basisprofiel"
Description: "Logical model representing the KVK (Kamer van Koophandel) Basisprofiel API response structure as defined in the KVK API v1.4.0."
* kvkNummer 0..1 string "Nederlands Kamer van Koophandel nummer: bestaat uit 8 cijfers"
* uraNummer 0..* string "URA nummer uit het LRZa"
* indNonMailing 0..1 string "Indicatie geen ongevraagde reclame per post of verkoop aan de deur"
* naam 0..1 string "Naam onder Maatschappelijke Activiteit"
* formeleRegistratiedatum 0..1 string "Registratiedatum onderneming in het Handelsregister"
* materieleRegistratie 0..1 BackboneElement "Materiële registratie datums"
  * datumAanvang 0..1 string "Startdatum onderneming"
  * datumEinde 0..1 string "Einddatum onderneming"
* totaalWerkzamePersonen 0..1 integer "Totaal aantal werkzame personen"
* statutaireNaam 0..1 string "De naam van de onderneming wanneer er statuten geregistreerd zijn"
* handelsnamen 0..* BackboneElement "Alle namen waaronder een onderneming of vestiging handelt (op volgorde van registreren)"
  * naam 0..1 string "Handelsnaam"
  * volgorde 0..1 integer "Volgorde van registreren"
* sbiActiviteiten 0..* BackboneElement "SBI activiteiten conform SBI 2008 (Standard Industrial Classification)"
  * sbiCode 0..1 string "SBI code"
  * sbiOmschrijving 0..1 string "SBI omschrijving"
  * indHoofdactiviteit 0..1 string "Indicatie hoofdactiviteit"
* embedded 0..1 BackboneElement "Embedded resources (_embedded)"
  * hoofdvestiging 0..1 BackboneElement "Hoofdvestiging informatie"
    * vestigingsnummer 0..1 string "Vestigingsnummer: uniek nummer van 12 cijfers"
    * kvkNummer 0..1 string "KVK nummer"
    * rsin 0..1 string "Rechtspersonen Samenwerkingsverbanden Informatie Nummer"
    * eersteHandelsnaam 0..1 string "De naam waaronder een onderneming of vestiging handelt"
    * formeleRegistratiedatum 0..1 string "Registratiedatum onderneming in HR"
    * statutaireNaam 0..1 string "Statutaire naam"
    * indHoofdvestiging 0..1 string "Indicatie hoofdvestiging (Ja/Nee)"
    * indCommercieleVestiging 0..1 string "Indicatie commerciële vestiging (Ja/Nee)"
    * voltijdWerkzamePersonen 0..1 integer "Voltijd werkzame personen"
    * totaalWerkzamePersonen 0..1 integer "Totaal werkzame personen"
    * deeltijdWerkzamePersonen 0..1 integer "Deeltijd werkzame personen"
    * adressen 0..* BackboneElement "Adressen van de vestiging"
      * type 0..1 string "Correspondentieadres en/of bezoekadres"
      * indAfgeschermd 0..1 string "Indicatie of het adres is afgeschermd"
      * volledigAdres 0..1 string "Volledig adres"
      * straatnaam 0..1 string "Straatnaam"
      * huisnummer 0..1 integer "Huisnummer"
      * huisletter 0..1 string "Huisletter"
      * huisnummerToevoeging 0..1 string "Huisnummer toevoeging"
      * postcode 0..1 string "Postcode"
      * plaats 0..1 string "Plaats"
      * land 0..1 string "Land"
    * websites 0..* string "Websites"
  * eigenaar 0..1 BackboneElement "Eigenaar informatie"
    * rsin 0..1 string "Rechtspersonen Samenwerkingsverbanden Informatie Nummer"
    * rechtsvorm 0..1 string "Rechtsvorm"
    * uitgebreideRechtsvorm 0..1 string "Uitgebreide rechtsvorm"
    * adressen 0..* BackboneElement "Adressen van de eigenaar"
      * type 0..1 string "Type adres"
      * indAfgeschermd 0..1 string "Indicatie of het adres is afgeschermd"
      * volledigAdres 0..1 string "Volledig adres"
      * straatnaam 0..1 string "Straatnaam"
      * huisnummer 0..1 integer "Huisnummer"
      * huisletter 0..1 string "Huisletter"
      * huisnummerToevoeging 0..1 string "Huisnummer toevoeging"
      * postcode 0..1 string "Postcode"
      * plaats 0..1 string "Plaats"
      * land 0..1 string "Land"
    * websites 0..* string "Websites van de eigenaar"

// ============================================================================
// StructureMap: KVK Basisprofiel → FHIR Organization
//
// Mapping summary:
//   kvkNummer                          → Organization.identifier (system: kvk)
//   naam                               → Organization.name
//   statutaireNaam                      → Organization.alias
//   handelsnamen[].naam                 → Organization.alias
//   sbiActiviteiten[]                   → Organization.type (SBI CodeSystem)
//   embedded.hoofdvestiging.adressen[]  → Organization.address
//   embedded.hoofdvestiging.websites[]  → Organization.telecom (system: url)
//   active                             → true (default)
// ============================================================================

Instance: KvkBasisprofielToOrganization
InstanceOf: StructureMap
Usage: #definition
Title: "KVK Basisprofiel naar FHIR Organization"
Description: "StructureMap die een KVK Basisprofiel API response transformeert naar een FHIR Organization resource."
* id = "KvkBasisprofielToOrganization"
* url = "http://minvws.github.io/generiekefuncties-docs/StructureMap/KvkBasisprofielToOrganization"
* name = "KvkBasisprofielToOrganization"
* status = #draft
* structure[+].url = "http://minvws.github.io/generiekefuncties-docs/StructureDefinition/KvkBasisprofiel"
* structure[=].mode = #source
* structure[=].alias = "KvkBasisprofiel"
* structure[+].url = Canonical(NlGfOrganization)
* structure[=].mode = #target
* structure[=].alias = "NlGfOrganization"

// ── Group 0: Main mapping KvkBasisprofiel → Organization ────────────────────
* group[+].name = "KvkBasisprofielToOrganization"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].type = "KvkBasisprofiel"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "Organization"
* group[=].input[=].mode = #target

// Rule: set meta.profile to NlGfOrganization
* group[=].rule[+].name = "setProfile"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "meta"
* group[=].rule[=].target[=].variable = "meta"
* group[=].rule[=].rule[+].name = "setProfileUrl"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].target[+].context = "meta"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "profile"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://minvws.github.io/generiekefuncties-docs/StructureDefinition/nl-gf-organization"

// Rule: kvkNummer → identifier (system: http://fhir.nl/fhir/NamingSystem/kvk)
* group[=].rule[+].name = "kvkNummer"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "kvkNummer"
* group[=].rule[=].source[=].variable = "kvkNum"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].target[=].variable = "kvkId"
* group[=].rule[=].rule[+].name = "kvkUse"
* group[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].target[+].context = "kvkId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "use"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "official"
* group[=].rule[=].rule[+].name = "kvkSystem"
* group[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].target[+].context = "kvkId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://fhir.nl/fhir/NamingSystem/kvk"
* group[=].rule[=].rule[+].name = "kvkValue"
* group[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].target[+].context = "kvkId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "kvkNum"


// Rule: uraNummer → identifier (system: http://fhir.nl/fhir/NamingSystem/ura)
* group[=].rule[+].name = "uraNummer"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "uraNummer"
* group[=].rule[=].source[=].variable = "uraNum"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].target[=].variable = "uraId"
* group[=].rule[=].rule[+].name = "uraUse"
* group[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].target[+].context = "uraId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "use"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "official"
* group[=].rule[=].rule[+].name = "uraSystem"
* group[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].target[+].context = "uraId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://fhir.nl/fhir/NamingSystem/ura"
* group[=].rule[=].rule[+].name = "uraValue"
* group[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].target[+].context = "uraId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "uraNum"
* group[=].rule[=].rule[+].name = "uraAssigner"
* group[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].target[+].context = "uraId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "assigner"
* group[=].rule[=].rule[=].target[=].variable = "assignerRef"
* group[=].rule[=].rule[=].rule[+].name = "assignerIdentifier"
* group[=].rule[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].rule[=].target[+].context = "assignerRef"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].rule[=].rule[=].target[=].variable = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdSystem"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://fhir.nl/fhir/NamingSystem/kvk"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdValue"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "50000535"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdType"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "type"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].variable = "assignerIdType"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerIdType"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "coding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].variable = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdTypeCodingSystem"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdTypeCodingCode"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "uraNum"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "code"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "custodian"

// Rule: naam → name
* group[=].rule[+].name = "naam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "naam"
* group[=].rule[=].source[=].variable = "naam"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "name"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "naam"

// Rule: active = true
* group[=].rule[+].name = "setActive"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "active"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueBoolean = true

// Rule: statutaireNaam → alias
* group[=].rule[+].name = "statutaireNaam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "statutaireNaam"
* group[=].rule[=].source[=].variable = "statNaam"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "alias"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "statNaam"

// Rule: handelsnamen → alias (via dependent group)
* group[=].rule[+].name = "handelsnamen"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "handelsnamen"
* group[=].rule[=].source[=].variable = "hn"
* group[=].rule[=].dependent[+].name = "KvkHandelsnaamToAlias"
* group[=].rule[=].dependent[=].variable[+] = "hn"
* group[=].rule[=].dependent[=].variable[+] = "tgt"

// Rule: sbiActiviteiten → type (via dependent group)
* group[=].rule[+].name = "sbiActiviteiten"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "sbiActiviteiten"
* group[=].rule[=].source[=].variable = "sbi"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "type"
* group[=].rule[=].target[=].variable = "cc"
* group[=].rule[=].dependent[+].name = "KvkSBIToCodeableConcept"
* group[=].rule[=].dependent[=].variable[+] = "sbi"
* group[=].rule[=].dependent[=].variable[+] = "cc"

// Rule: embedded → eigenaar + hoofdvestiging (nested rules)
* group[=].rule[+].name = "embedded"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "embedded"
* group[=].rule[=].source[=].variable = "emb"

// Nested: eigenaar.rsin → identifier (system: rsin)
* group[=].rule[=].rule[+].name = "eigenaar"
* group[=].rule[=].rule[=].source[+].context = "emb"
* group[=].rule[=].rule[=].source[=].element = "eigenaar"
* group[=].rule[=].rule[=].source[=].variable = "eig"
* group[=].rule[=].rule[=].rule[+].name = "rsin"
* group[=].rule[=].rule[=].rule[=].source[+].context = "eig"
* group[=].rule[=].rule[=].rule[=].source[=].element = "rsin"
* group[=].rule[=].rule[=].rule[=].source[=].variable = "rsin"
* group[=].rule[=].rule[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].rule[=].rule[=].target[=].variable = "rsinId"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "rsinSystem"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "rsin"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "rsinId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://fhir.nl/fhir/NamingSystem/rsin"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "rsinValue"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "rsin"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "rsinId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "rsin"

// Nested: hoofdvestiging → address + telecom
* group[=].rule[=].rule[+].name = "hoofdvestiging"
* group[=].rule[=].rule[=].source[+].context = "emb"
* group[=].rule[=].rule[=].source[=].element = "hoofdvestiging"
* group[=].rule[=].rule[=].source[=].variable = "hv"
// hoofdvestiging.adressen → address (via dependent group)
* group[=].rule[=].rule[=].rule[+].name = "adressen"
* group[=].rule[=].rule[=].rule[=].source[+].context = "hv"
* group[=].rule[=].rule[=].rule[=].source[=].element = "adressen"
* group[=].rule[=].rule[=].rule[=].source[=].variable = "adres"
* group[=].rule[=].rule[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "address"
* group[=].rule[=].rule[=].rule[=].target[=].variable = "addr"
* group[=].rule[=].rule[=].rule[=].dependent[+].name = "KvkAdresToAddress"
* group[=].rule[=].rule[=].rule[=].dependent[=].variable[+] = "adres"
* group[=].rule[=].rule[=].rule[=].dependent[=].variable[+] = "addr"
// hoofdvestiging.websites → telecom (via dependent group)
* group[=].rule[=].rule[=].rule[+].name = "websites"
* group[=].rule[=].rule[=].rule[=].source[+].context = "hv"
* group[=].rule[=].rule[=].rule[=].source[=].element = "websites"
* group[=].rule[=].rule[=].rule[=].source[=].variable = "web"
* group[=].rule[=].rule[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "telecom"
* group[=].rule[=].rule[=].rule[=].target[=].variable = "tel"
* group[=].rule[=].rule[=].rule[=].dependent[+].name = "KvkWebsiteToContactPoint"
* group[=].rule[=].rule[=].rule[=].dependent[=].variable[+] = "web"
* group[=].rule[=].rule[=].rule[=].dependent[=].variable[+] = "tel"

// ── Group 1: Handelsnaam → Organization.alias ───────────────────────────────
* group[+].name = "KvkHandelsnaamToAlias"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "Organization"
* group[=].input[=].mode = #target

* group[=].rule[+].name = "naam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "naam"
* group[=].rule[=].source[=].variable = "naam"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "alias"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "naam"

// ── Group 2: SBI Activiteit → CodeableConcept ───────────────────────────────
* group[+].name = "KvkSBIToCodeableConcept"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "CodeableConcept"
* group[=].input[=].mode = #target

// Create coding element and populate it
* group[=].rule[+].name = "sbiCoding"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "coding"
* group[=].rule[=].target[=].variable = "coding"
// Set system
* group[=].rule[=].rule[+].name = "sbiSystem"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].target[+].context = "coding"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-sbi-cs"
// Map sbiCode → coding.code
* group[=].rule[=].rule[+].name = "sbiCode"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].source[=].element = "sbiCode"
* group[=].rule[=].rule[=].source[=].variable = "code"
* group[=].rule[=].rule[=].target[+].context = "coding"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "code"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "code"
// Map sbiOmschrijving → coding.display
* group[=].rule[=].rule[+].name = "sbiDisplay"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].source[=].element = "sbiOmschrijving"
* group[=].rule[=].rule[=].source[=].variable = "omschr"
* group[=].rule[=].rule[=].target[+].context = "coding"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "display"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "omschr"

// ── Group 3: KVK Adres → FHIR Address ──────────────────────────────────────
* group[+].name = "KvkAdresToAddress"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "Address"
* group[=].input[=].mode = #target

// volledigAdres → text
* group[=].rule[+].name = "volledigAdres"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "volledigAdres"
* group[=].rule[=].source[=].variable = "volledigAdres"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "text"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "volledigAdres"

// straatnaam → line + iso21090-ADXP-streetName extension
* group[=].rule[+].name = "straatnaam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "straatnaam"
* group[=].rule[=].source[=].variable = "straat"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "straat"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-streetName extension
* group[=].rule[=].rule[+].name = "streetNameExt"
* group[=].rule[=].rule[=].source[+].context = "straat"
* group[=].rule[=].rule[=].target[+].context = "addrLine"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "streetNameExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "straat"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* group[=].rule[=].rule[=].rule[+].name = "streetNameExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "straat"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "straat"

// huisnummer → line + iso21090-ADXP-houseNumber extension
* group[=].rule[+].name = "huisnummer"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "huisnummer"
* group[=].rule[=].source[=].variable = "huisnr"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine2"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "huisnr"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-houseNumber extension
* group[=].rule[=].rule[+].name = "houseNumberExt"
* group[=].rule[=].rule[=].source[+].context = "huisnr"
* group[=].rule[=].rule[=].target[+].context = "addrLine2"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #cast
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "huisnr"
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "string"

// huisletter → line + iso21090-ADXP-buildingNumberSuffix extension
* group[=].rule[+].name = "huisletter"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "huisletter"
* group[=].rule[=].source[=].variable = "huisltr"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine3"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "huisltr"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-buildingNumberSuffix extension
* group[=].rule[=].rule[+].name = "houseLetterExt"
* group[=].rule[=].rule[=].source[+].context = "huisltr"
* group[=].rule[=].rule[=].target[+].context = "addrLine3"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "houseLetterExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisltr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix"
* group[=].rule[=].rule[=].rule[+].name = "houseLetterExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisltr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "huisltr"

// huisnummerToevoeging → line + iso21090-ADXP-additionalLocator extension
* group[=].rule[+].name = "huisnummerToevoeging"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "huisnummerToevoeging"
* group[=].rule[=].source[=].variable = "huisnrToev"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine4"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "huisnrToev"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-additionalLocator extension
* group[=].rule[=].rule[+].name = "houseNumberAdditionExt"
* group[=].rule[=].rule[=].source[+].context = "huisnrToev"
* group[=].rule[=].rule[=].target[+].context = "addrLine4"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberAdditionExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnrToev"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberAdditionExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnrToev"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "huisnrToev"

// postcode → postalCode
* group[=].rule[+].name = "postcode"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "postcode"
* group[=].rule[=].source[=].variable = "pc"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "postalCode"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "pc"

// plaats → city
* group[=].rule[+].name = "plaats"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "plaats"
* group[=].rule[=].source[=].variable = "plaats"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "city"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "plaats"

// land → country
* group[=].rule[+].name = "land"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "land"
* group[=].rule[=].source[=].variable = "land"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "country"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "land"

// use = "work" (organization addresses are always work addresses)
* group[=].rule[+].name = "setUse"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "use"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "work"

// ── Group 4: Website string → FHIR ContactPoint ────────────────────────────
* group[+].name = "KvkWebsiteToContactPoint"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "ContactPoint"
* group[=].input[=].mode = #target

// system = url
* group[=].rule[+].name = "setSystem"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "system"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "url"

// value = website URL
* group[=].rule[+].name = "setValue"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].variable = "url"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "value"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "url"

// use = work
* group[=].rule[+].name = "setUse"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "use"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "work"

// ============================================================================
// Logical Model: KVK Vestigingsprofiel (source structure for StructureMap)
// ============================================================================

Logical: KvkVestigingsprofiel
Title: "KVK Vestigingsprofiel"
Description: "Logical model representing the KVK (Kamer van Koophandel) Vestigingsprofiel API response structure as defined in the KVK API v1.4.0."
* vestigingsnummer 0..1 string "Vestigingsnummer: uniek nummer dat bestaat uit 12 cijfers"
* kvkNummer 0..1 string "Nederlands Kamer van Koophandel nummer: bestaat uit 8 cijfers"
* rsin 0..1 string "Rechtspersonen Samenwerkingsverbanden Informatie Nummer"
* indNonMailing 0..1 string "Indicatie geen ongevraagde reclame per post of verkoop aan de deur"
* formeleRegistratiedatum 0..1 string "Registratiedatum onderneming in HR"
* materieleRegistratie 0..1 BackboneElement "Materiële registratie datums"
  * datumAanvang 0..1 string "Startdatum vestiging"
  * datumEinde 0..1 string "Einddatum vestiging"
* statutaireNaam 0..1 string "De naam van de vestiging wanneer er statuten geregistreerd zijn"
* eersteHandelsnaam 0..1 string "De naam waaronder een onderneming of vestiging handelt"
* indHoofdvestiging 0..1 string "Hoofdvestiging (Ja/Nee)"
* indCommercieleVestiging 0..1 string "Commerciële vestiging (Ja/Nee)"
* voltijdWerkzamePersonen 0..1 integer "Aantal voltijd werkzame personen"
* totaalWerkzamePersonen 0..1 integer "Totaal aantal werkzame personen"
* deeltijdWerkzamePersonen 0..1 integer "Aantal deeltijd werkzame personen"
* handelsnamen 0..* BackboneElement "Alle namen waaronder een vestiging handelt (op volgorde van registreren)"
  * naam 0..1 string "Handelsnaam"
  * volgorde 0..1 integer "Volgorde van registreren"
* adressen 0..* BackboneElement "Adressen van de vestiging"
  * type 0..1 string "Correspondentieadres en/of bezoekadres"
  * indAfgeschermd 0..1 string "Indicatie of het adres is afgeschermd"
  * volledigAdres 0..1 string "Volledig adres"
  * straatnaam 0..1 string "Straatnaam"
  * huisnummer 0..1 integer "Huisnummer"
  * huisletter 0..1 string "Huisletter"
  * huisnummerToevoeging 0..1 string "Huisnummer toevoeging"
  * toevoegingAdres 0..1 string "Toevoeging adres"
  * postcode 0..1 string "Postcode"
  * postbusnummer 0..1 integer "Postbusnummer"
  * plaats 0..1 string "Plaats"
  * straatHuisnummer 0..1 string "Straat en huisnummer"
  * postcodeWoonplaats 0..1 string "Postcode en woonplaats"
  * regio 0..1 string "Regio"
  * land 0..1 string "Land"
  * geoData 0..1 BackboneElement "BAG geoData"
    * addresseerbaarObjectId 0..1 string "Unieke BAG id"
    * nummerAanduidingId 0..1 string "Unieke BAG nummeraanduiding id"
    * gpsLatitude 0..1 decimal "Lengtegraad"
    * gpsLongitude 0..1 decimal "Breedtegraad"
    * rijksdriehoekX 0..1 decimal "Rijksdriehoek X-coördinaat"
    * rijksdriehoekY 0..1 decimal "Rijksdriehoek Y-coördinaat"
    * rijksdriehoekZ 0..1 decimal "Rijksdriehoek Z-coördinaat"
* websites 0..* string "Websites"
* sbiActiviteiten 0..* BackboneElement "SBI activiteiten conform SBI 2008"
  * sbiCode 0..1 string "SBI code"
  * sbiOmschrijving 0..1 string "SBI omschrijving"
  * indHoofdactiviteit 0..1 string "Indicatie hoofdactiviteit"

// ============================================================================
// StructureMap: KVK Vestigingsprofiel → FHIR Location
//
// Mapping summary:
//   vestigingsnummer                → Location.identifier (system: kvk-vestigingsnummer)
//   kvkNummer                       → Location.identifier (system: kvk)
//   eersteHandelsnaam               → Location.name
//   statutaireNaam                  → Location.alias
//   handelsnamen[].naam             → Location.alias
//   adressen[]                      → Location.address
//   adressen[].geoData              → Location.position (latitude/longitude)
//   websites[]                      → Location.telecom (system: url)
//   sbiActiviteiten[]               → Location.type (SBI CodeSystem)
//   indHoofdvestiging/materieleReg  → Location.status (active/inactive)
// ============================================================================

Instance: KvkVestigingsprofielToLocation
InstanceOf: StructureMap
Usage: #definition
Title: "KVK Vestigingsprofiel naar FHIR Location"
Description: "StructureMap die een KVK Vestigingsprofiel API response transformeert naar een FHIR Location resource."
* id = "KvkVestigingsprofielToLocation"
* url = "http://minvws.github.io/generiekefuncties-docs/StructureMap/KvkVestigingsprofielToLocation"
* name = "KvkVestigingsprofielToLocation"
* status = #draft
* structure[+].url = "http://minvws.github.io/generiekefuncties-docs/StructureDefinition/KvkVestigingsprofiel"
* structure[=].mode = #source
* structure[=].alias = "KvkVestigingsprofiel"
* structure[+].url = Canonical(NlGfLocation)
* structure[=].mode = #target
* structure[=].alias = "NlGfLocation"

// ── Group 0: Main mapping KvkVestigingsprofiel → Location ───────────────────
* group[+].name = "KvkVestigingsprofielToLocation"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].type = "KvkVestigingsprofiel"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "Location"
* group[=].input[=].mode = #target

// Rule: set meta.profile to NlGfLocation
* group[=].rule[+].name = "setProfile"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "meta"
* group[=].rule[=].target[=].variable = "meta"
* group[=].rule[=].rule[+].name = "setProfileUrl"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].target[+].context = "meta"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "profile"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://minvws.github.io/generiekefuncties-docs/StructureDefinition/nl-gf-location"

// Rule: vestigingsnummer → identifier (system: http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer)
* group[=].rule[+].name = "vestigingsnummer"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "vestigingsnummer"
* group[=].rule[=].source[=].variable = "vestNr"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].target[=].variable = "vestId"
* group[=].rule[=].rule[+].name = "vestUse"
* group[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].target[+].context = "vestId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "use"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "official"
* group[=].rule[=].rule[+].name = "vestSystem"
* group[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].target[+].context = "vestId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer"
* group[=].rule[=].rule[+].name = "vestValue"
* group[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].target[+].context = "vestId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "vestNr"
* group[=].rule[=].rule[+].name = "vestAssigner"
* group[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].target[+].context = "vestId"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "assigner"
* group[=].rule[=].rule[=].target[=].variable = "assignerRef"
* group[=].rule[=].rule[=].rule[+].name = "assignerIdentifier"
* group[=].rule[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "assignerRef"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].rule[=].rule[=].target[=].variable = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdSystem"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://fhir.nl/fhir/NamingSystem/kvk"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdValue"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "50000535"
* group[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdType"
* group[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerId"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "type"
* group[=].rule[=].rule[=].rule[=].rule[=].target[=].variable = "assignerIdType"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerIdType"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "coding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].variable = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdTypeCodingSystem"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[+].name = "assignerIdTypeCodingCode"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].source[+].context = "vestNr"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[+].context = "assignerIdTypeCoding"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].element = "code"
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "custodian"

// Rule: kvkNummer → managingOrganization (Reference by identifier, system: kvk)
* group[=].rule[+].name = "kvkNummer"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "kvkNummer"
* group[=].rule[=].source[=].variable = "kvkNum"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "managingOrganization"
* group[=].rule[=].target[=].variable = "orgRef"
* group[=].rule[=].rule[+].name = "orgRefIdentifier"
* group[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].target[+].context = "orgRef"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "identifier"
* group[=].rule[=].rule[=].target[=].variable = "orgId"
* group[=].rule[=].rule[=].rule[+].name = "orgIdSystem"
* group[=].rule[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].rule[=].target[+].context = "orgId"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://fhir.nl/fhir/NamingSystem/kvk"
* group[=].rule[=].rule[=].rule[+].name = "orgIdValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].rule[=].target[+].context = "orgId"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "kvkNum"
* group[=].rule[=].rule[+].name = "orgRefType"
* group[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].target[+].context = "orgRef"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "type"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "Organization"
* group[=].rule[=].rule[+].name = "orgRefReference"
* group[=].rule[=].rule[=].source[+].context = "kvkNum"
* group[=].rule[=].rule[=].target[+].context = "orgRef"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "reference"
* group[=].rule[=].rule[=].target[=].transform = #append
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "Organization/"
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "kvkNum"

// Rule: eersteHandelsnaam → name
* group[=].rule[+].name = "eersteHandelsnaam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "eersteHandelsnaam"
* group[=].rule[=].source[=].variable = "naam"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "name"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "naam"

// Rule: status = active
* group[=].rule[+].name = "setStatus"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "status"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "active"

// Rule: mode = instance (this is a specific physical location)
* group[=].rule[+].name = "setMode"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "mode"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "instance"

// Rule: statutaireNaam → alias
* group[=].rule[+].name = "statutaireNaam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "statutaireNaam"
* group[=].rule[=].source[=].variable = "statNaam"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "alias"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "statNaam"

// Rule: handelsnamen → alias (via dependent group)
* group[=].rule[+].name = "handelsnamen"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "handelsnamen"
* group[=].rule[=].source[=].variable = "hn"
* group[=].rule[=].dependent[+].name = "KvkVestHandelsnaamToAlias"
* group[=].rule[=].dependent[=].variable[+] = "hn"
* group[=].rule[=].dependent[=].variable[+] = "tgt"

// Rule: adressen → address + position (via dependent group)
* group[=].rule[+].name = "adressen"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "adressen"
* group[=].rule[=].source[=].variable = "adres"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "address"
* group[=].rule[=].target[=].variable = "addr"
* group[=].rule[=].dependent[+].name = "KvkVestAdresToAddress"
* group[=].rule[=].dependent[=].variable[+] = "adres"
* group[=].rule[=].dependent[=].variable[+] = "addr"

// Rule: adressen.geoData → position (first address with geoData wins)
* group[=].rule[+].name = "geoData"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "adressen"
* group[=].rule[=].source[=].variable = "adres"
* group[=].rule[=].rule[+].name = "geoDataToPosition"
* group[=].rule[=].rule[=].source[+].context = "adres"
* group[=].rule[=].rule[=].source[=].element = "geoData"
* group[=].rule[=].rule[=].source[=].variable = "geo"
* group[=].rule[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "position"
* group[=].rule[=].rule[=].target[=].variable = "pos"
* group[=].rule[=].rule[=].dependent[+].name = "KvkGeoDataToPosition"
* group[=].rule[=].rule[=].dependent[=].variable[+] = "geo"
* group[=].rule[=].rule[=].dependent[=].variable[+] = "pos"

// Rule: websites → telecom (via dependent group)
* group[=].rule[+].name = "websites"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "websites"
* group[=].rule[=].source[=].variable = "web"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "telecom"
* group[=].rule[=].target[=].variable = "tel"
* group[=].rule[=].dependent[+].name = "KvkVestWebsiteToContactPoint"
* group[=].rule[=].dependent[=].variable[+] = "web"
* group[=].rule[=].dependent[=].variable[+] = "tel"

// Rule: sbiActiviteiten → type (via dependent group)
* group[=].rule[+].name = "sbiActiviteiten"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "sbiActiviteiten"
* group[=].rule[=].source[=].variable = "sbi"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "type"
* group[=].rule[=].target[=].variable = "cc"
* group[=].rule[=].dependent[+].name = "KvkVestSBIToCodeableConcept"
* group[=].rule[=].dependent[=].variable[+] = "sbi"
* group[=].rule[=].dependent[=].variable[+] = "cc"

// ── Group 1: Handelsnaam → Location.alias ───────────────────────────────────
* group[+].name = "KvkVestHandelsnaamToAlias"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "Location"
* group[=].input[=].mode = #target

* group[=].rule[+].name = "naam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "naam"
* group[=].rule[=].source[=].variable = "naam"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "alias"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "naam"

// ── Group 2: KVK Adres → FHIR Address (vestigingsprofiel variant with full fields) ─
* group[+].name = "KvkVestAdresToAddress"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "Address"
* group[=].input[=].mode = #target

// volledigAdres → text
* group[=].rule[+].name = "volledigAdres"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "volledigAdres"
* group[=].rule[=].source[=].variable = "volledigAdres"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "text"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "volledigAdres"

// straatnaam → line + iso21090-ADXP-streetName extension
* group[=].rule[+].name = "straatnaam"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "straatnaam"
* group[=].rule[=].source[=].variable = "straat"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "straat"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-streetName extension
* group[=].rule[=].rule[+].name = "streetNameExt"
* group[=].rule[=].rule[=].source[+].context = "straat"
* group[=].rule[=].rule[=].target[+].context = "addrLine"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "streetNameExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "straat"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* group[=].rule[=].rule[=].rule[+].name = "streetNameExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "straat"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "straat"

// huisnummer → line + iso21090-ADXP-houseNumber extension
* group[=].rule[+].name = "huisnummer"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "huisnummer"
* group[=].rule[=].source[=].variable = "huisnr"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine2"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "huisnr"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-houseNumber extension
* group[=].rule[=].rule[+].name = "houseNumberExt"
* group[=].rule[=].rule[=].source[+].context = "huisnr"
* group[=].rule[=].rule[=].target[+].context = "addrLine2"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #cast
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "huisnr"
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "string"

// huisletter → line + iso21090-ADXP-buildingNumberSuffix extension
* group[=].rule[+].name = "huisletter"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "huisletter"
* group[=].rule[=].source[=].variable = "huisltr"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine3"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "huisltr"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-buildingNumberSuffix extension
* group[=].rule[=].rule[+].name = "houseLetterExt"
* group[=].rule[=].rule[=].source[+].context = "huisltr"
* group[=].rule[=].rule[=].target[+].context = "addrLine3"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "houseLetterExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisltr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-buildingNumberSuffix"
* group[=].rule[=].rule[=].rule[+].name = "houseLetterExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisltr"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "huisltr"

// huisnummerToevoeging → line + iso21090-ADXP-additionalLocator extension
* group[=].rule[+].name = "huisnummerToevoeging"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "huisnummerToevoeging"
* group[=].rule[=].source[=].variable = "huisnrToev"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "line"
* group[=].rule[=].target[=].variable = "addrLine4"
* group[=].rule[=].target[=].transform = #cast
* group[=].rule[=].target[=].parameter[+].valueId = "huisnrToev"
* group[=].rule[=].target[=].parameter[+].valueString = "string"
// nested: iso21090-ADXP-additionalLocator extension
* group[=].rule[=].rule[+].name = "houseNumberAdditionExt"
* group[=].rule[=].rule[=].source[+].context = "huisnrToev"
* group[=].rule[=].rule[=].target[+].context = "addrLine4"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "extension"
* group[=].rule[=].rule[=].target[=].variable = "ext"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberAdditionExtUrl"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnrToev"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "url"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* group[=].rule[=].rule[=].rule[+].name = "houseNumberAdditionExtValue"
* group[=].rule[=].rule[=].rule[=].source[+].context = "huisnrToev"
* group[=].rule[=].rule[=].rule[=].target[+].context = "ext"
* group[=].rule[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].rule[=].target[=].element = "value"
* group[=].rule[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].rule[=].target[=].parameter[+].valueId = "huisnrToev"

// postcode → postalCode
* group[=].rule[+].name = "postcode"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "postcode"
* group[=].rule[=].source[=].variable = "pc"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "postalCode"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "pc"

// plaats → city
* group[=].rule[+].name = "plaats"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "plaats"
* group[=].rule[=].source[=].variable = "plaats"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "city"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "plaats"

// regio → district
* group[=].rule[+].name = "regio"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "regio"
* group[=].rule[=].source[=].variable = "regio"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "district"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "regio"

// land → country
* group[=].rule[+].name = "land"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "land"
* group[=].rule[=].source[=].variable = "land"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "country"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "land"

// use = work
* group[=].rule[+].name = "setUse"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "use"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "work"

// ── Group 3: GeoData → Location.position ────────────────────────────────────
* group[+].name = "KvkGeoDataToPosition"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].mode = #target

// gpsLatitude → latitude
* group[=].rule[+].name = "latitude"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "gpsLatitude"
* group[=].rule[=].source[=].variable = "lat"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "latitude"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "lat"

// gpsLongitude → longitude
* group[=].rule[+].name = "longitude"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].element = "gpsLongitude"
* group[=].rule[=].source[=].variable = "lon"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "longitude"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "lon"

// ── Group 4: Website string → FHIR ContactPoint (vestigingsprofiel) ─────────
* group[+].name = "KvkVestWebsiteToContactPoint"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "ContactPoint"
* group[=].input[=].mode = #target

// system = url
* group[=].rule[+].name = "setSystem"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "system"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "url"

// value = website URL
* group[=].rule[+].name = "setValue"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].source[=].variable = "url"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "value"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueId = "url"

// use = work
* group[=].rule[+].name = "setUse"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "use"
* group[=].rule[=].target[=].transform = #copy
* group[=].rule[=].target[=].parameter[+].valueString = "work"

// ── Group 5: SBI Activiteit → CodeableConcept (vestigingsprofiel) ────────────
* group[+].name = "KvkVestSBIToCodeableConcept"
* group[=].typeMode = #none
* group[=].input[+].name = "src"
* group[=].input[=].mode = #source
* group[=].input[+].name = "tgt"
* group[=].input[=].type = "CodeableConcept"
* group[=].input[=].mode = #target

// Create coding element and populate it
* group[=].rule[+].name = "sbiCoding"
* group[=].rule[=].source[+].context = "src"
* group[=].rule[=].target[+].context = "tgt"
* group[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].target[=].element = "coding"
* group[=].rule[=].target[=].variable = "coding"
// Set system
* group[=].rule[=].rule[+].name = "sbiSystem"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].target[+].context = "coding"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "system"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueString = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-sbi-cs"
// Map sbiCode → coding.code
* group[=].rule[=].rule[+].name = "sbiCode"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].source[=].element = "sbiCode"
* group[=].rule[=].rule[=].source[=].variable = "code"
* group[=].rule[=].rule[=].target[+].context = "coding"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "code"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "code"
// Map sbiOmschrijving → coding.display
* group[=].rule[=].rule[+].name = "sbiDisplay"
* group[=].rule[=].rule[=].source[+].context = "src"
* group[=].rule[=].rule[=].source[=].element = "sbiOmschrijving"
* group[=].rule[=].rule[=].source[=].variable = "omschr"
* group[=].rule[=].rule[=].target[+].context = "coding"
* group[=].rule[=].rule[=].target[=].contextType = #variable
* group[=].rule[=].rule[=].target[=].element = "display"
* group[=].rule[=].rule[=].target[=].transform = #copy
* group[=].rule[=].rule[=].target[=].parameter[+].valueId = "omschr"


// Instance: kvk-logicals-and-struturemaps
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of FHIR Logical Models and StructureMaps for KVK Basisprofiel and Vestigingsprofiel"
// Description: "This bundle contains FHIR Logical Models and StructureMaps that define the mapping from KVK Basisprofiel and Vestigingsprofiel to FHIR Organization and Location resources, respectively. The Bundle is of type 'transaction' and includes PUT entries for each resource and mapping."
// * type = #transaction
// * insert BundleEntryPUT(http://minvws.github.io/generiekefuncties-docs/StructureDefinition/,StructureDefinition, KvkBasisprofiel)
// * insert BundleEntryPUT(http://minvws.github.io/generiekefuncties-docs/StructureMap/,StructureMap, KvkBasisprofielToOrganization)
// * insert BundleEntryPUT(http://minvws.github.io/generiekefuncties-docs/StructureDefinition/,StructureDefinition, KvkVestigingsprofiel)
// * insert BundleEntryPUT(http://minvws.github.io/generiekefuncties-docs/StructureMap/,StructureMap, KvkVestigingsprofielToLocation)
