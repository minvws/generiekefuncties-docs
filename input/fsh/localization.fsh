Profile: NviIdentifier
Parent: Identifier
Id: nl-gf-nvi-identifier
Title: "NVI Identifier"
Description: """Identifier for a patient pseudonym created by the national Pseudonymization Service."""
* system 1..1
* system = "http://generiekefuncties.nl/nvi/identifier" (exactly)
* value 1..1

Profile: NlGfLocalizationPatient
Parent: Patient
Id: nl-gf-localization-patient
Title: "NL Generic Functions Localization Patient Profile"
Description: """A Patient resource used to register a patient at one custodian for localization.
It contains the NVI patient pseudonym, the custodian-assigned patient identifier,
the custodian Organization identifier, and the registering OAuth client in meta.source.
Demographic and clinical Patient data is not part of this profile."""
* ^experimental = true
* implicitRules ..0
* contained ..0
* extension ..0
* modifierExtension ..0
* identifier 2..2
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #closed
* identifier contains
    nvi 1..1 and
    custodian 1..1
* identifier[nvi] only NviIdentifier
* identifier[custodian] only CustodianAssignedIdentifier
* active ..0
* name ..0
* telecom ..0
* gender ..0
* birthDate ..0
* deceased[x] ..0
* address ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner ..0
* managingOrganization 1..1
* managingOrganization only Reference(Organization)
* managingOrganization.reference ..0
* managingOrganization.identifier 1..1
* managingOrganization.identifier.system 1..1
* managingOrganization.identifier.system = "urn:oid:2.16.528.1.1007.3.3" (exactly)
* managingOrganization.identifier.value 1..1
* link ..0
* meta.source 1..1
* meta.source ^short = "URI identifying the OAuth client that registered this localization Patient."
