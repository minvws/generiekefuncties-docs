Profile: NlGfEndpoint
Parent: Endpoint
Id: nl-gf-endpoint
Title: "NL Generic Functions Endpoint Profile"
Description: "Endpoint profile for electronic services, aligned with IHE mCSD Endpoint constraints and extended with a value set constraint on payloadType and connectionType."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = "https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint"
* ^experimental = true
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* managingOrganization 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* connectionType from http://hl7.org/fhir/ValueSet/endpoint-connection-type (extensible)
* connectionType ^binding.extension[+].url = "http://hl7.org/fhir/tools/StructureDefinition/additional-binding"
* connectionType ^binding.extension[=].extension[+].url = "key"
* connectionType ^binding.extension[=].extension[=].valueId = "nl-gf-connection-types"
* connectionType ^binding.extension[=].extension[+].url = "purpose"
* connectionType ^binding.extension[=].extension[=].valueCode = #extensible
* connectionType ^binding.extension[=].extension[+].url = "valueSet"
* connectionType ^binding.extension[=].extension[=].valueCanonical = "http://minvws.github.io/generiekefuncties-docs/ValueSet/nl-gf-connection-types-vs"
* payloadType from NlGfPayloadTypeVS (extensible)

Extension: SupportedActivityDefinitions
Id:        supported-activity-definitions
Title:    "Supported ActivityDefinitions and PlanDefinitions by HealthcareServices"
Description: "ActivityDefinitions or PlanDefinitions to specify the codeable concepts in HealthcareService.type."
Context: HealthcareService
* value[x] only Canonical(ActivityDefinition or PlanDefinition)

Profile: NlGfHealthcareService
Parent: HealthcareService
Id: nl-gf-healthcareservice
Title: "NL Generic Functions HealthcareService Profile"
Description: "HealthcareService profile aligned with IHE mCSD HealthcareService constraints, with required value set bindings on type and specialty, support for ActivityDefinition/PlanDefinition references on type, and a required custodian-assigned identifier."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = "https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService"
* ^experimental = true
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only CustodianAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* providedBy 1.. 
* providedBy only Reference(NlGfOrganization)
* specialty from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.22--20200901000000 (required)
* specialty ^comment = "The referenced Nictiz/DECOR value set does not currently resolve reliably in all tooling. When needed, inspect the underlying artifact manually via Simplifier, for example through https://simplifier.net/nictiz-r4-zib2020."
* type from NlGfServiceTypeVS (required)
* type.extension contains SupportedActivityDefinitions named supportedActivityDefinitions 0..*


Profile: NlGfLocation
Parent: $NlLocation
Id: nl-gf-location
Title: "NL Generic Functions Location Profile"
Description: "Location profile based on NL Core Location and aligned with IHE mCSD Location constraints, with a required custodian-assigned identifier. The parent Nictiz NL Core profile does not currently resolve reliably in all tooling; when needed, inspect it manually via Simplifier, for example through https://simplifier.net/nictiz-r4-zib2020."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = "https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location"
* ^experimental = true
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only CustodianAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* status 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* managingOrganization 1..
// * managingOrganization only Reference(NlGfOrganization)

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
* source.identifier.system = "urn:ietf:rfc:3986"
* source.identifier.value 1..1
* source.identifier.value obeys identifier-is-a-urn
* source only Reference(Device)
* source.reference ..0
* source.type = $resource-types#Device
* entry ..0
* note ..0
* emptyReason 1..1
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld


Invariant:   ura-identifier-or-partof
Description: "an Organization instance must either have an URA-identifier or must be 'partOf' some other instance that is an nl-gf-organization instance."
Expression:  "identifier.where(system='http://fhir.nl/fhir/NamingSystem/ura').exists() or identifier.where(system='http://fhir.nl/fhir/NamingSystem/kvk').exists() or partOf.exists()"
Severity:    #error

Invariant:   assigner-identifier-system
Description: "The assigner identifier system must be either URA or KVK."
Expression:  "system = 'http://fhir.nl/fhir/NamingSystem/ura' or system = 'http://fhir.nl/fhir/NamingSystem/kvk'"
Severity:    #error

Profile: NlGfOrganization
// Parent: $NlOrganization
Parent: $EuOrganization
Id: nl-gf-organization
Title: "NL Generic Functions Organization Profile"
Description: "Organization profile based on NL Core Healthcare Provider Organization and aligned with IHE mCSD Organization constraints, extended with CBS Standaard Bedrijfsindeling (SBI) typing."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = "https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization"
* ^experimental = true
* obeys ura-identifier-or-partof
// * identifier ^slicing.discriminator[0].type = #value
// * identifier ^slicing.discriminator[=].path = "$this"
* identifier ^slicing.discriminator[+].type = #profile
* identifier ^slicing.discriminator[=].path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only CustodianAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* type from NlGfOrgTypesVS (extensible)
// * type ^slicing.discriminator[+].type = #value
// * type ^slicing.discriminator[=].path = "$this"
// * type ^slicing.rules = #open
// * type contains
//     SBI 0..*
// * type[SBI] from NlGfOrgTypesVS (extensible)
// * type[SBI] ^patternCodeableConcept.coding.system = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-sbi-cs"
// * type[SBI] ^short = "SBI"
// * type[SBI] ^definition = "CBS Standaard Bedrijfsindeling code representing the primary activity of the organization."
// * type[SBI] ^alias = "Standaard Bedrijfsindeling"
// * partOf only Reference(NlGfOrganization)
// * endpoint only Reference(NlGfEndpoint)


Profile: NlGfOrganizationAffiliation
Parent: OrganizationAffiliation
Id: nl-gf-organizationaffiliation
Title: "NL Generic Functions OrganizationAffiliation Profile"
Description: "OrganizationAffiliation profile aligned with IHE mCSD OrganizationAffiliation constraints, with a required custodian-assigned identifier and extended with a value set constraint on code and support for device identifiers in extensions."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = "https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation"
* ^experimental = true
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only CustodianAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* active 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* organization 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* participatingOrganization 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* network 0..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* code 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* code from NlGfAuthorizationTypeVS (required)
* extension contains NlGfDeviceIdentifier named device 0..*
* extension[device] ^short = "An identifier for a device, such as a software application, that is used in the context of an affiliation between two organizations."

Profile: NlGfDevice
Parent: Device
Id: nl-gf-device
Title: "NL Generic Functions Device Profile"
Description: "The details of a device, such as a software application, used in the context of healthcare data exchange."
* ^experimental = true
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only CustodianAssignedUrnIdentifier
* extension contains NlGfDeviceEndpoint named endpoint 0..*
// * extension[endpoint].value[x] only Reference(NlGfEndpoint)

Extension: NlGfDeviceEndpoint
Id: nl-gf-device-endpoint
Title: "NL Generic Functions Device Endpoint"
Description: "A reference to an endpoint associated with this device."
Context: Device
* value[x] only Reference(NlGfEndpoint)


Profile: NlGfPractitionerRole
Parent: $NlPractitionerRole
Id: nl-gf-practitionerrole
Title: "NL Generic Functions PractitionerRole Profile"
Description: "PractitionerRole profile based on NL Core HealthProfessional PractitionerRole and aligned with IHE mCSD PractitionerRole constraints, with a required custodian-assigned identifier. The parent Nictiz NL Core profile does not currently resolve reliably in all tooling; when needed, inspect it manually via Simplifier, for example through https://simplifier.net/nictiz-r4-zib2020."
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = "https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.PractitionerRole"
* ^experimental = true
* identifier ^slicing.discriminator.type = #profile
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only CustodianAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.PractitionerRole
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.PractitionerRole
* practitioner 1..
* organization 1..
// * organization only Reference(NlGfOrganization)
* code 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.PractitionerRole

Profile: NlGfPractitioner
Parent: $NlPractitioner
Id: nl-gf-practitioner
Title: "NL Generic Functions Practitioner Profile"
Description: "Practitioner profile based on NL Core HealthProfessional Practitioner and aligned with IHE mCSD Practitioner constraints. The parent Nictiz NL Core profile does not currently resolve reliably in all tooling; when needed, inspect it manually via Simplifier, for example through https://simplifier.net/nictiz-r4-zib2020."
* ^experimental = true
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[=].path = "$this"
* identifier ^slicing.discriminator[+].type = #profile
* identifier ^slicing.discriminator[=].path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only CustodianAssignedIdentifier
* ^extension[http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile].valueCanonical = "https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Practitioner"
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Practitioner
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Practitioner
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Practitioner


Extension: TaskSTU3Location
Id:        task-stu3-location
Title:    "Location for Task in STU3"
Description: "The location where the task is performed."
* value[x] only Reference(NlGfLocation)

Extension: TaskSTU3HealthcareService
Id:        task-stu3-healthcareservice
Title:    "HealthcareService for Task in STU3"
Description: "The healthcare service where the task is performed."
* value[x] only Reference(NlGfHealthcareService)

Profile: NlGfTaskSTU3
Parent: Task
Id: nl-gf-task-stu3
Title: "NL Generic Functions Task Profile for FHIR STU3"
Description: "A task to be performed, such as a referral or order, with additional details specific to FHIR STU3."
* extension contains TaskSTU3Location named taskLocation 0..1
* extension contains TaskSTU3HealthcareService named healthcareservice 0..1

Profile: CustodianAssignedIdentifier
Parent: Identifier
Id: nl-gf-custodianassignedidentifier
Title: "Custodian Assigned Identifier"
Description: """An (unique) identifier ***that was assigned by the original custodian***. The custodian is 'The entity that is accountable for maintaining a true an accurate copy of the ***original*** record'. I.e. this custodian is responsible for the 'single source of truth' for this data object. The 'custodian-assigned-identifier' is the unambiguous and persistent identifier for both the data object and the custodian."""
* use 1..
* use = #official
* system 1..
* value 1..
* assigner 1..1
* assigner.identifier 1..1
* assigner.identifier obeys assigner-identifier-system
* assigner.identifier.system 1..1
* assigner.identifier.value 1..1
* assigner.identifier.type 1..1
* assigner.identifier.type.coding 1..1
* assigner.identifier.type.coding.system = $provenance-participant-type
* assigner.identifier.type.coding.code = #custodian

Profile: CustodianAssignedUrnIdentifier
Parent: Identifier
Id: nl-gf-custodianassignedurnidentifier
Title: "Custodian Assigned URN Identifier"
Description: """An (unique) ***OID or UUID*** identifier ***that was assigned by the original custodian***. The custodian is 'The entity that is accountable for maintaining a true an accurate copy of the ***original*** record'. I.e. this custodian is responsible for the 'single source of truth' for this data object. The 'custodian-assigned-identifier' is the unambiguous and persistent identifier for both the data object and the custodian."""
* use 1..
* use = #official
* system 1..
* system = "urn:ietf:rfc:3986"
* value 1..
* value obeys identifier-is-a-urn
* assigner 1..1
* assigner.identifier 1..1
* assigner.identifier obeys assigner-identifier-system
* assigner.identifier.system 1..1
* assigner.identifier.value 1..1
* assigner.identifier.type 1..1
* assigner.identifier.type.coding 1..1
* assigner.identifier.type.coding.system = $provenance-participant-type
* assigner.identifier.type.coding.code = #custodian

Profile: NviIdentifier
Parent: Identifier
Id: nl-gf-nvi-identifier
Title: "NVI Identifier"
Description: """Identifier used at the NVI for pseudonymized Dutch citizen service numbers (BSN)."""
* system 1..
* system = "http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier" (exactly)
* value 1..
* use = #temp


Extension: NlGfLocalizationCustodian
Id: nl-gf-localization-custodian
Title: "NL Generic Functions Localization Custodian"
Description: "The organization responsible for the localization record, identified by URA number."
Context: List
* value[x] only Reference(Organization)
* valueReference.identifier 1..1
* valueReference.identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* valueReference.identifier.value 1..1
* valueReference.reference 0..0

Extension: NlGfDeviceIdentifier
Id: nl-gf-device-identifier
Title: "NL Generic Functions Device Identifier"
Description: "An identifier for a device, such as a software application."
Context: OrganizationAffiliation
* value[x] only Reference(NlGfDevice)
* valueReference.identifier 1..1
* valueReference.identifier.system = "urn:ietf:rfc:3986"
* valueReference.identifier.value 1..1
* valueReference.identifier.value obeys identifier-is-a-urn

Invariant:   identifier-is-a-urn
Description: "The identifier must be a URN with a valid UUID or OID."
Expression:  "startsWith('urn:uuid:') or startsWith('urn:oid:')"
Severity:    #error

