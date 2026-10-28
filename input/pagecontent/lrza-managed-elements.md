This page lists the elements and codes of `Organization` and `Location` resources that are **managed by the LRZa**. The [LRZa Directory](csd.html#lrza-directory) copies these elements from the authoritative source registers, the KvK Handelsregister (Chamber of Commerce) and the Dezi-register, and they can only be changed in those registers. A [Data Source](csd.html#data-source) (a service provider acting on behalf of a care provider) SHALL NOT add, modify or remove LRZa-managed elements, and the LRZa Directory SHALL refuse any mutation that attempts to do so.
{: .ig-lead}

### Source registers

| Source register | Copied into |
|---|---|
| KvK Handelsregister: Basisprofiel | `Organization` |
| KvK Handelsregister: Vestigingsprofiel | `Location`, and an `Organization` when a URA number is linked to the vestiging |
| Dezi-register | The URA number → `Organization.identifier`, and `Location.identifier` when the URA number is linked to a vestiging |

The Dezi-register only adds URA numbers; all other LRZa-managed elements are copied from the KvK. Only the elements listed on this page are copied; other register data (e.g. number of employees) is not part of the directory. The StructureMaps [KvkBasisprofielToOrganization](StructureMap-KvkBasisprofielToOrganization.html) and [KvkVestigingsprofielToLocation](StructureMap-KvkVestigingsprofielToLocation.html) are informative examples of these transformations; they are not normative and do not cover a URA number that is linked to a vestiging.

Changes to LRZa-managed elements SHALL be made in the source register. The LRZa Directory propagates these changes to the directory with its next periodic import.

#### URA number linked to a vestiging

In the Dezi-register, a URA number may be linked to a KvK vestiging (Vestigingsprofiel). In that case, the LRZa Directory transforms the KvK vestiging into:

- an `Organization`, carrying the URA number and the vestigingsnummer. This Organization is `partOf` the Organization that was created from the KvK Basisprofiel;
- a `Location`, carrying the URA number and the vestigingsnummer, whose `managingOrganization` is the Organization that was created from the same KvK vestiging.

A vestiging without a linked URA number is only transformed into a `Location`, whose `managingOrganization` is the Organization that was created from the KvK Basisprofiel.

### managed identifier systems and code systems

The following identifier systems and code systems are managed by the LRZa in **every** `Organization` and `Location` resource, including resources created by a Data Source:

| System | Kind | Used in | Source register | Content |
|---|---|---|---|---|
| `http://kvk.nl` | NamingSystem | `Organization.identifier` | KvK | KvK-nummer (8 digits) of the organization, or the vestigingsnummer (12 digits) for an Organization created from a vestiging with a linked URA number. |
| `http://kvk.nl` | NamingSystem | `Location.identifier` | KvK | Vestigingsnummer (12 digits) of the establishment (NL: vestiging). |
| `urn:oid:2.16.528.1.1007.3.3` | NamingSystem | `Organization.identifier`, `Location.identifier` | Dezi-register | URA number of the care provider. In a `Location` only when the URA number is linked to the vestiging. |


- A Data Source SHALL NOT add an `Organization.identifier` or `Location.identifier` with one of these identifier systems, and SHALL NOT modify or remove such an identifier.
- These systems MAY still be used to *refer* to an organization, for example in `Location.managingOrganization.identifier`, `Organization.partOf.identifier`, `Endpoint.managingOrganization.identifier` or the `identifier.assigner.identifier` of a [CustodianAssignedIdentifier](StructureDefinition-nl-gf-custodianassignedidentifier.html). A reference does not add an LRZa-managed element.

### Organization

A [KvK-sourced](#scope-of-ownership) `Organization` is created from a KvK Basisprofiel, or from a KvK vestiging to which a URA number is linked (see [URA number linked to a vestiging](#ura-number-linked-to-a-vestiging)). It contains the following LRZa-managed elements:

| Element | Source register | Value and remarks |
|---|---|---|
| `identifier` (system `http://kvk.nl`) | KvK | `use` = `official`, `value` = KvK-nummer. For an Organization created from a vestiging: `value` = vestigingsnummer. For an Organization created from a KvK Basisprofiel without a URA number: `assigner.identifier` = KvK-nummer `50000535` (CIBG) with `type` = `custodian` ([provenance-participant-type](http://terminology.hl7.org/CodeSystem/provenance-participant-type)); this identifier is then the custodian-assigned identifier (`identifier:AssignedId`) of the Organization. |
| `identifier` (system `urn:oid:2.16.528.1.1007.3.3`) | Dezi-register | `use` = `official`, `value` = URA number, `assigner.identifier` = KvK-nummer `50000535` (CIBG) with `type` = `custodian` ([provenance-participant-type](http://terminology.hl7.org/CodeSystem/provenance-participant-type)). When present, this is the custodian-assigned identifier (`identifier:AssignedId`) of the Organization. |
| `active` | LRZa | Set to `true` by the LRZa Directory. |
| `name` | KvK | |
| `alias` | KvK | One `alias` per registered name (statutory name and trade names). |
| `type` (SBI) | KvK | One `type` per SBI activity: `coding.system` = `https://www.cbs.nl/standaard-bedrijfsindeling`, `coding.code` = SBI code, `coding.display` = SBI description. Additional `type` entries MAY be added or removed if the code.system is not equal to `https://www.cbs.nl/standaard-bedrijfsindeling`. |
| `address` | KvK | Address of the main establishment (NL: hoofdvestiging); for an Organization created from a vestiging, the address of that vestiging. `use` = `work`. |
| `telecom` | KvK | One `telecom` per website: `system` = `url`, `value` = website, `use` = `work`. |
| `partOf` | KvK | Only for an Organization created from a vestiging: reference to the Organization that was created from the KvK Basisprofiel. An Organization created from a KvK Basisprofiel has no `partOf`. |

### Location

A [KvK-sourced](#scope-of-ownership) `Location` is created from a KvK vestiging. It contains the following LRZa-managed elements. All elements are copied from the KvK, except the URA number, which is copied from the Dezi-register.

| Element | Value and remarks |
|---|---|
| `identifier` (system `http://kvk.nl`) | `use` = `official`, `value` = vestigingsnummer, `assigner.identifier` = KvK-nummer `50000535` (CIBG) with `type` = `custodian` ([provenance-participant-type](http://terminology.hl7.org/CodeSystem/provenance-participant-type)). This is the custodian-assigned identifier (`identifier:AssignedId`) of the Location. |
| `identifier` (system `urn:oid:2.16.528.1.1007.3.3`) | Only when a URA number is linked to the vestiging: `use` = `official`, `value` = URA number. |
| `status` | Set to `active` by the LRZa Directory. |
| `mode` | Set to `instance` by the LRZa Directory. |
| `name` | |
| `alias` | One `alias` per registered name (statutory name and trade names). |
| `type` (SBI) | One `type` per SBI activity: `coding.system` = `https://www.cbs.nl/standaard-bedrijfsindeling`, `coding.code` = SBI code, `coding.display` = SBI description. Additional `type` entries MAY be added or removed if the code.system is not equal to `https://www.cbs.nl/standaard-bedrijfsindeling`.|
| `address` | Address of the vestiging. `use` = `work`. |
| `position` | `latitude` and `longitude` of the address (BAG geodata). |
| `telecom` | One `telecom` per website: `system` = `url`, `value` = website, `use` = `work`. |
| `managingOrganization` | Reference to the Organization that was created from the KvK Basisprofiel. When a URA number is linked to the vestiging: reference to the Organization that was created from the same vestiging. |

### Scope of ownership

- The identifier systems and code systems listed under [managed identifier systems and code systems](#managed-identifier-systems-and-code-systems) are LRZa-managed in every `Organization` and `Location` resource.
- An `Organization` or `Location` originates from the KvK (is *KvK-sourced*) when it has an `identifier` with system `http://kvk.nl`. Because a Data Source cannot add such an identifier, KvK-sourced resources are only created by the LRZa Directory.
- The other elements listed under [Organization](#organization) and [Location](#location) are LRZa-managed in KvK-sourced resources. In resources that a Data Source created itself (e.g. a department as a child `Organization`, or a ward or room as a child `Location`), the Data Source maintains these elements.
- In a KvK-sourced resource, the following elements are LRZa-managed as a whole. A Data Source SHALL NOT add, modify or remove any value of these elements, including adding values next to the values copied from the KvK or adding values when the KvK provides none:
  - `Organization`: `active`, `name`, `alias`, `address`, `telecom` and `partOf`;
  - `Location`: `status`, `mode`, `name`, `alias`, `address`, `position`, `telecom` and `managingOrganization`.
- For `identifier` and `type`, only the repetitions copied from the source registers are LRZa-managed. A Data Source MAY add other repetitions (e.g. an `identifier` from another identifier system, or a `type` from another code system), provided these do not use an managed identifier system or SBI code system.
- Contact details that are not registered in the KvK (e.g. a phone number) can be published in `HealthcareService.telecom`, or in a child `Organization` or `Location` created by the Data Source.
- All other elements, such as `Organization.endpoint`, `Location.partOf`, `Location.operationalStatus`, `Location.description`, `Location.physicalType` and `Location.hoursOfOperation`, are not LRZa-managed. The Data Source maintains these elements within the constraints of the profiles.


### Processing rules

These rules apply to the [Care Services Feed (ITI-130-NL)](csd.html#care-services-feed-iti-130-nl):

1. **Create**: The LRZa Directory SHALL refuse the creation of an `Organization` or `Location` that contains an LRZa-managed identifier system or code system. KvK-sourced resources are only created by the LRZa Directory.
1. **Update**: A FHIR `update` replaces the complete resource. A Data Source SHALL base an update of a resource that contains LRZa-managed elements on its current version and SHALL include all LRZa-managed elements unchanged. The LRZa Directory SHALL refuse an update that adds, modifies or removes an LRZa-managed element. Because the LRZa Directory updates these resources itself when it imports changes from the source registers, a Data Source holding a stale version receives `412 Precondition Failed` (see "Concurrency control on updates" in the [National Constraints](csd.html#national-constraints-compared-to-ihe-mcsd)); it SHALL then re-read the resource and re-apply its changes.
1. **Delete**: The LRZa Directory SHALL refuse the deletion, by a Data Source, of an `Organization` or `Location` that contains an LRZa-managed identifier (i.e. a KvK-sourced resource or a resource with a URA number). Such a resource follows the lifecycle of its entry in the source register.
1. **Refusal**: The LRZa Directory SHALL refuse such a mutation with HTTP `422 Unprocessable Entity` and an `OperationOutcome` with `issue.severity` = `error`, `issue.code` = `business-rule` and an `issue.expression` that points to the LRZa-managed element. When the mutation is part of a `transaction` Bundle, the whole transaction fails (all-or-nothing).