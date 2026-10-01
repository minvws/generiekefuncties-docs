Profile: NviIdentifier
Parent: Identifier
Id: nl-gf-nvi-identifier
Title: "NVI Identifier"
Description: """Identifier used at the NVI for pseudonymized Dutch citizen service numbers (BSN)."""
* system 1..
* system = "http://generiekefuncties.nl/nvi/identifier" (exactly)
* value 1..
* use = #temp

Profile: NlGfLocalizationList
Parent: List
Id: nl-gf-localization-list
Title: "NL Generic Functions Localization List Profile"
Description: """A List profile for registering the availability of patient data
at healthcare organizations for localization services. This profile is used to
indicate that certain patient data is available at a specific organization and
can be accessed for localization purposes."""
* ^experimental = true
* implicitRules ..0
* meta ..0
* language ..0
* contained ..0
* identifier ..0
* title ..0
* status 1..1
* status ^comment = "All records are always current"
* status = #current
* mode 1..1
* mode = #working
* code 1..1
* code from NlGfZorgcontextVS (required)
* subject 1..1
* subject only Reference(Patient)
* subject.identifier 1..1
* subject.identifier only NviIdentifier
* subject.reference ..0
* extension contains NlGfLocalizationCustodian named custodian 1..1
* extension[custodian] ^short = "The Organization which published the data"
* source 1..1
* source ^short = "The OAuth client (application/system) that registered this record, identified by its OAuth client_id."
* source.identifier 1..1
* source.identifier.system 1..1
* source.identifier.system = "http://generiekefuncties.nl/nvi/client-id"
* source.identifier.value 1..1
* source.reference ..0
* entry ..0
* note ..0
* emptyReason 1..1
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld


Extension: NlGfLocalizationCustodian
Id: nl-gf-localization-custodian
Title: "NL Generic Functions Localization Custodian"
Description: "The organization responsible for the localization record, identified by URA number."
Context: List
* value[x] only Reference(Organization)
* valueReference.identifier 1..1
* valueReference.identifier.system = "urn:oid:2.16.528.1.1007.3.3"
* valueReference.identifier.value 1..1
* valueReference.reference 0..0