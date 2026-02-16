Profile: NlGfEndpoint
Parent: Endpoint
Id: nl-gf-endpoint
Title: "NL Generic Functions Endpoint Profile"
Description: "The technical details of an endpoint that can be used for electronic services, such as for web services providing access to FHIR resources."
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* managingOrganization 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Endpoint
* payloadType from NlGfDataExchangeCapabilitiesVS (extensible)

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
Description: "The technical details of a healthcare service that can be used in referrals, requests and orders"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only AuthorAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.HealthcareService
* providedBy 1.. 
* providedBy only Reference(NlGfOrganization)
* specialty from http://decor.nictiz.nl/fhir/ValueSet/2.16.840.1.113883.2.4.3.11.60.121.11.22--20200901000000 (required)
* type from NlGfWlzZorgprofielenVS (required)
* type.extension contains SupportedActivityDefinitions named supportedActivityDefinitions 0..*


Profile: NlGfLocation
Parent: $NlLocation
Id: nl-gf-location
Title: "NL Generic Functions Location Profile"
Description: "Physical location details for healthcare services, organizations, and practitioners."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only AuthorAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* status 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Location
* managingOrganization 1..
* managingOrganization only Reference(NlGfOrganization)

Profile: NlGfLocalizationList
Parent: List
Id: nl-gf-localization-list
Title: "NL Generic Functions Localization List Profile"
Description: """A List profile for registering the availability of patient data
at healthcare organizations for localization services. This profile is used to
indicate that certain patient data is available at a specific organization and
can be accessed for localization purposes."""
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only AuthorAssignedIdentifier
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
* subject.identifier only PseudoBsnIdentifier
* subject.reference 0..0
* source 1..1
* source only Reference(Device)
* source.reference ..0
* source.type = $resource-types#Device
* entry 0..0
* emptyReason 1..1
* emptyReason = http://terminology.hl7.org/CodeSystem/list-empty-reason#withheld


Invariant:   ura-identifier-or-partof
Description: "an Organization instance must either have an URA-identifier or must be 'partOf' some other instance that is an nl-gf-organization instance."
Expression:  "identifier.where(system='http://fhir.nl/fhir/NamingSystem/ura').exists() or partOf.exists()"
Severity:    #error

Profile: NlGfOrganization
Parent: $NlOrganization
Id: nl-gf-organization
Title: "NL Generic Functions Organization Profile"
Description: "The organizational hierarchy and details for healthcare organizations."
* obeys ura-identifier-or-partof
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only AuthorAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* type 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Organization
* type ^slicing.discriminator.type = #value
* type ^slicing.discriminator.path = "$this"
* type ^slicing.rules = #open
* type contains
    SBI 0..1
* type[SBI] from NlGfOrgTypesVS (extensible)
* type[SBI] ^short = "SBI"
* type[SBI] ^definition = "CBS Standaard Bedrijfsindeling code representing the primary activity of the organization."
* type[SBI] ^alias = "Standaard Bedrijfsindeling"
* partOf only Reference(NlGfOrganization)
* endpoint only Reference(NlGfEndpoint)


Profile: NlGfOrganizationAffiliation
Parent: OrganizationAffiliation
Id: nl-gf-organizationaffiliation
Title: "NL Generic Functions OrganizationAffiliation Profile"
Description: "The details of an affiliation/relationship between two organizations, such as a healthcare provider and a software vendor."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only AuthorAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* active 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* organization 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* participatingOrganization 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* network 0.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation
* code 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.OrganizationAffiliation

Profile: NlGfPractitioner
Parent: $NlPractitioner
Id: nl-gf-practitioner
Title: "NL Generic Functions Practitioner Profile"
Description: "The details of a healthcare practitioner, such as a doctor or nurse, who is directly or indirectly involved in the provisioning of healthcare."
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Practitioner
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Practitioner
* name 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.Practitioner


Profile: NlGfPractitionerRole
Parent: $NlPractitionerRole
Id: nl-gf-practitionerrole
Title: "NL Generic Functions PractitionerRole Profile"
Description: "The details of a healthcare practitioner's role within an organization."
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    AssignedId 1..1
* identifier[AssignedId] only AuthorAssignedIdentifier
* implicitRules ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.PractitionerRole
* modifierExtension ..0 //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.PractitionerRole
* practitioner 1..
* organization 1..
* organization only Reference(NlGfOrganization)
* code 1.. //compliance to https://profiles.ihe.net/ITI/mCSD/StructureDefinition/IHE.mCSD.PractitionerRole


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

Profile: AuthorAssignedIdentifier
Parent: Identifier
Id: nl-gf-authorassignedidentifier
Title: " Author Assigned Identifier"
Description: """Identifier assigned by the author of a resource, such as a healthcare service or organization, to uniquely identify that resource AND locate the original authoring organization when copies are stored at other locations """
* use 1..
* use = #official
* system 1..
* system = "urn:ietf:rfc:3986" (exactly)
* value 1..
* value obeys nl-gf-startswithuuid
* value 1..
* assigner 1..1
* assigner.identifier 1..1
* assigner.identifier.system = "http://fhir.nl/fhir/NamingSystem/ura"
* assigner.identifier.value 1..1
* assigner.identifier.type 1..1
* assigner.identifier.type.coding 1..1
* assigner.identifier.type.coding.system = $provenance-participant-type
* assigner.identifier.type.coding.code = #author

Profile: PseudoBsnIdentifier
Parent: Identifier
Id: nl-gf-pseudo-bsn-identifier
Title: "Pseudo-BSN Identifier"
Description: """Identifier for pseudonymized Dutch citizen service numbers (BSN)."""
* system 1..
* system = "http://fhir.nl/fhir/NamingSystem/pseudo-bsn" (exactly)
* value 1..
* use = #temp


Invariant: nl-gf-startswithuuid
Description: "value must start with urn:uuid:"
* severity = #error
* expression = "startsWith('urn:uuid:')"