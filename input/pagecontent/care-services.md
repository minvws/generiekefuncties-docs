### Introduction

Generic Function Addressing (GFA) defines how healthcare parties can publish, discover, and use trusted addressing information for organizations, services, locations, and endpoints. Its purpose is to make healthcare data exchange interoperable and reliable by helping practitioners and systems route requests, referrals, data retrievals and notifications to the correct destination.  
This specification is based on the [IHE mCSD](https://profiles.ihe.net/ITI/mCSD/index.html) profile and reuses the actor and transaction definitions that were defined in that specification. You should be able to read this specification without prior knowledge of IHE mCSD, but a basic understanding of the FHIR specification is preferred.

<p class="note-to-balloters">

This guide outlines the technical requirements and architectural principles underlying these generic functions. For the functional design, the technical design and the specification in TWIIN-format, download files: 

Download Functional design: [FO-adressering-v0.95.pdf](FO-adressering-v0.95.pdf)
Download Technical design: TODO
Download TWIIN implementatiehandleiding: [care-services-dummy.docx](care-services-dummy.docx)

</p>


### Solution overview

 Here is a brief overview of the processes that are involved: 

1. Every care provider registers one or more parties (e.g. an IT vendor) that is authorized to manage their addressable entities at the ['Directory'](#lrza-directory) of the 'Landelijk Register Zorgaanbieders' (LRZa). Care provider administrators register their addressable entities in an Service Provider application (e.g. an EHR).
1. The authorized Service Providers create and manage addressable entities in the LRZa Directory. In the schema below, this is represented as the 'Data source' performing 'Care Service Feed' transactions.
1. A 'Query & Update client' is used to copy and (periodically) fetch updates from the LRZa Directory to a local replica Directory. 
1. A practitioner and/or system (e.g. an EHR) can now use the local replica of the LRZa Directory to match resources defined within mCSD (for example: a practitioner searching for a healthcare service or a system searching for a specific endpoint)


<img src="careservices-overview-transactions.png" width="80%" style="float: none" alt="Overview of transactions in the Care Services Addressing solution."/>


This overview implies a decentralized architecture  with local Data Source actors and LRZa Directory replicas. An important central component is the LRZa Administration Directory, but this central component is not a crucial asset at data exchange runtime (only for creating or updating addressable entities). The LRZa Directory periodically imports Organization, Location and Practitioner(-Role) resources from the KvK and DEZI-registry.


### National Constraints Compared to IHE mCSD

This specification is based on the [IHE mCSD](https://profiles.ihe.net/ITI/mCSD/index.html) profile and constrains and profiles the mCSD specification for the Dutch national context. The following national choices apply:

1. Data model profiling:
The national profiles SHALL be based on NL-core where available and SHALL be aligned with relevant IHE mCSD profile constraints.

1. Device resource addition:
The Device resource is added as a national extension to support efficient endpoint lookup and query-routing. Device usage SHALL support national workflows including GF Localization and TA Notified Pull.

1. LRZa Directory operational role:
The LRZa Directory SHALL NOT support matching of care service entities (e.g. query for a specific type of HealthcareService or Endpoint). Matching SHALL be performed on a local Directory (LRZa replica). The LRZa Directory SHALL act as single source of truth and distribution point, and SHALL NOT have a direct operational role in healthcare data exchange transactions. For replication purposes, LRZa SHALL support `search-type` interactions from the mCSD ITI-90 transaction without search parameters for the initial load of the local replica. 
 
1. No deletes: 
Addressable entities (e.g. a Location or HealthcareService) may become inactive/deprecated over time, but their identifier will be used and referred to from health records for their lifetime. Therefore, deletion of addressable entities SHALL not be supported by the LRZa Directory. The status of an addressable entity may be adjusted to `inactive`, `off`, `entered-in-error` or whatever appropriate status for the resource type.

### Actors
Each actor will now be discussed in more detail.

#### LRZa Directory
The LRZa Directory is the central national directory for publishing and distributing addressable entities. It is the authoritative source for nationally governed directory content and provides interfaces for administration and retrieval of updates. The LRZa Directory is not intended for runtime matching in operational healthcare workflows; searching/matching SHALL be performed on local replicas. This Directory provides an API for the 'Data Source' and 'Query & Update Client' that implements these CapabilityStatements:
- for Data Source clients: [ITI-130-NL](./CapabilityStatement-nl-gf-directory-for-data-source.html)
- for Query & Update clients: [ITI-90-NL](./CapabilityStatement-nl-gf-directory-for-query-client.html) and [ITI-91-NL](./CapabilityStatement-nl-gf-directory-for-update-client.html)

#### Data Source
A Data Source is a client/actor of an authorized party (e.g. an IT vendor or the care provider itself) that publishes and maintains directory entities on behalf of care providers. The Data Source actor SHALL use interactions conforming to [CapabilityStatement ITI-130-NL](./CapabilityStatement-nl-gf-directory-for-data-source.html), including create/update for Organization, Location, HealthcareService, Endpoint, and Device.

#### Query & Update Client
The Query & Update Client refers to two separate actors defined in [IHE mCSD](https://profiles.ihe.net/ITI/mCSD/index.html) and are grouped for the Dutch national context. This actor uses the `search-type` interaction (without search parameters) for the initial load of the local Directory (replica). It also periodically synchronizes from the LRZa Directory to a local replica using `history-type` interactions and `_since` parameter to request incremental updates. It consumes search interactions conforming to [CapabilityStatement ITI-90-NL](./CapabilityStatement-nl-gf-directory-for-query-client.html) and update-oriented interactions defined in [CapabilityStatement ITI-91-NL](./CapabilityStatement-nl-gf-directory-for-update-client.html).
For more information, see the [synchronization example](#use-case-2-query-client--update-client-sync-example)

#### Query Client
The Query Client uses the local replica to find organizations, healthcare services, locations, endpoints, devices, and organizational relationships for routing and discovery. 
Note that the data exchange between Query Client and (local) Directory MAY use a proprietary interface. [Use case 3](#use-case-3-healthcare-service-query) and [use case 4](#use-case-4-endpoint-discovery) illustrate how to search for healthcare services and endpoints. 


### Transactions

Transactions between Service Providers and the LRZa are defined here. Other (local or 3rd party) transactions are not specified here. These transactions MAY reuse/adopt IHE mCSD and FHIR transactions, but are not obliged.  

#### Care Services Feed: ITI-130-NL
The Data Source publishes entities to the LRZa Directory using create/update semantics as profiled in the Data Source capability statement.
CapabilityStatement: [ITI-130-NL](./CapabilityStatement-nl-gf-directory-for-data-source.html)

#### Search Care Services: ITI-90-NL
The Query Client loads/queries directory data for initial population of the local replication using `search-type` interactions without search parameters.
CapabilityStatement: [ITI-90-NL](./CapabilityStatement-nl-gf-directory-for-query-client.html)

#### Request Care Services Updates: ITI-91-NL
The Update Client retrieves changes from the LRZa Directory using `history-type` interactions per supported resource, optionally constrained by `_since` for incremental synchronization.
CapabilityStatement: [ITI-91-NL](./CapabilityStatement-nl-gf-directory-for-update-client.html)




### Entities
Within GF Addressing, several addressable entities are used to capture and publish information. 
An overview of the *most common* elements and relations between entities:

<img src="careservices-datamodel.png" width="85%" style="float: none"/>

A brief description of the entities:

#### HealthcareService
Healthcare services are used to publish which (medical) services are provided by a (child) Organization at some Location(s). Examples include surgical services, antenatal care services, or primary care services. These services in `HealthcareService.type` can be extended by references to specific ActivityDefinitions and PlanDefinitions that are supported. The combination of a HealthcareService offered at a Location may have specific attributes including contact person, hours of operation, etc. Typically, HealthcareServices use Endpoints that support receiving notifications or requests. 
The [NL-GF-HealthcareService profile](./StructureDefinition-nl-gf-healthcareservice.html) is used to represent healthcare service offerings.

Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| identifier (CustodianAssignedIdentifier) | 1..1 | identifier for provenance and traceability. |
| providedBy → Organization | 1..1 | The organization that provides this service. |
| type | 1..* | The type of service (required binding to [NL-GF Service Types](./ValueSet-nl-gf-service-types-vs.html), including procedure and care-type codesystems in CBV, DHD, Geboortezorg, GGZ, NHG, NZa and WLZ). |
| type.supportedActivityDefinitions | 0..* | References to ActivityDefinitions or PlanDefinitions specifying the service type further. |
| specialty | 0..* | The specialty of the service (required binding). |
| name | 0..1 | A human-readable name for the service. |
| telecom | 0..* | Contact details for the service. |
| location → Location | 0..* | The location(s) where this service is available. |
| availableTime | 0..* | Times the service is available. |
| endpoint → Endpoint | 0..* | Technical endpoints for notifications or requests. |


#### Organization
Organizations are “umbrella” entities; these may be considered the administrative bodies under whose auspices care services are provided. Typically, (top-level)Organization-instances use Endpoints that publish healthcare data for other (healthcare) organizations to query. Departments of an institution, or other administrative units, may be represented as child Organizations of a parent Organization.
The [NL-GF-Organization profile](./StructureDefinition-nl-gf-organization.html) is used to represent organizations and their hierarchical relations in this guide. Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| identifier (URA or KVK) | 0..* | An Organization must have a URA or KVK identifier, or be `partOf` another Organization. |
| type | 1..* | Type of organization, including an SBI (Standaard Bedrijfsindeling) code (extensible binding to [NL-GF Organization Types](./ValueSet-nl-gf-org-types-vs.html)). |
| name | 1..1 | The name of the organization. |
| alias | 0..* | Alternative names. |
| telecom | 0..* | Contact details. |
| partOf → Organization | 0..1 | The parent organization (for departments or sub-units). |
| endpoint → Endpoint | 0..* | Technical endpoints used by this organization. |


#### Endpoint
An addressable entity may be reachable for electronic data exchange through electronic Endpoint(s). An Endpoint may be a FHIR server, a DICOM web service, OAuth token endpoint, or some other mechanism. Typically, Organizations, Devices and HealthcareServices refer to Endpoints. This relationship is meant to indicate that, e.g., a care provider (Organization) ***uses*** an Endpoint. An Endpoint also refers to one specific organization that manages the Endpoint (e.g. IT vendor); this is not the organization ***using*** the endpoint.
The [NL-GF-Endpoints profile](./StructureDefinition-nl-gf-endpoint.html) is used to represent electronic access points for data exchange. Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| status | 1..1 | The operational status of the endpoint (e.g. active, off). |
| connectionType | 1..1 | The type of connection (extensible binding to [Core connection types](https://hl7.org/fhir/R4/valueset-endpoint-connection-type.html) and [NL-GF Connection Types](./ValueSet-nl-gf-connection-types-vs.html)). |
| payloadType | 1..* | The payload type(s) supported (extensible binding to [NL-GF Payload Types](./ValueSet-nl-gf-payload-type-vs.html)). |
| address | 1..1 | The technical address (URL) of the endpoint. |
| managingOrganization → Organization | 1..1 | The organization that manages this endpoint (e.g. IT vendor). |


#### Device
Device resources are, in GF Addressing, used to represent software applications or technical systems involved in healthcare data exchange. A Device can reference one or more Endpoints that it uses/provides, enabling efficient endpoint lookup and query-routing in workflows such as GF Localization, eOverdracht, and TA Notified Pull. In this guide, Devices are also referenced from OrganizationAffiliation to indicate which technical system is authorized in the relationship between a care provider and an IT vendor.
The [NL-GF-Device profile](./StructureDefinition-nl-gf-device.html) is used to represent these technical systems and their endpoint references. Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| identifier (DeviceUrn) | 1..1 | A globally unique URN identifier for the device/application. |
| udiCarrier | 0..* | UDI carrier information from e.g. EUDAMED or GS1 register (if applicable). |
| owner → Organization | 1..1 | The organization that owns/manages this device. |
| endpoint → Endpoint (extension) | 0..* | Endpoints associated with this device. |



#### Location
Locations are physical places where care can be delivered such as buildings (NL: Vestiging), wards, rooms, or vehicles. A Location may have geographic attributes (address, geocode), attributes regarding its hours of operation, etc. Each Location is related to one Organization. A location may have a hierarchical relationship with other locations (e.g. building > floor > room).
The [NL-GF-Location profile](./StructureDefinition-nl-gf-location.html) is used to represent physical care-delivery locations. Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| identifier (CustodianAssignedIdentifier) | 1..1 | identifier for provenance and traceability. |
| name | 1..1 | The name of the location. |
| type | 1..1 | The type of location. |
| status | 1..1 | The operational status (e.g. active, inactive). |
| address | 0..1 | The physical address. |
| managingOrganization → Organization | 1..1 | The organization responsible for this location. |
| partOf → Location | 0..1 | The parent location (e.g. building → floor → room). |


#### Practitioner
Practitioner resources represent healthcare professionals as persons, independent of where or in which role they are currently working. In GF Addressing, a Practitioner is used as the stable identity anchor for professional identification across organizations, and can be linked to one or more PractitionerRole resources that describe context-specific roles and specialties. Practitioner identifiers typically include a DEZI number and MAY include a BIG number for professional registration details.
The [NL-GF-Practitioner profile](./StructureDefinition-nl-gf-practitioner.html) is used to represent healthcare professionals. Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| identifier (DEZI/BIG) | 0..* | Professional identifiers, typically DEZI and optionally BIG. |
| name | 1..* | Human name of the practitioner. |
| qualification | 0..* | Professional qualifications, licenses, or registrations relevant for care delivery. |


#### PractitionerRole
PractitionerRole resources are used to define the specific roles, specialties, and responsibilities that a Practitioner holds within an Organization. PractitionerRole enables precise modeling of relationships between practitioners and organizations and MAY represent employment relationships. It supports scenarios like assigning practitioners to departments, specifying their roles (e.g., surgeon, nurse), and linking them to particular healthcare services or locations. A PractitionerRole may have contact details for phone, mail, or direct messaging, but should not contain privacy-sensitive data.
The [NL-GF-PractitionerRole profile](./StructureDefinition-nl-gf-practitionerrole.html) is used to represent practitioner roles and responsibilities within organizations. Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| identifier (CustodianAssignedIdentifier) | 1..1 | Identifier for provenance and traceability; UZI/DEZI-number |
| practitioner → Practitioner | 1..1 | The practitioner fulfilling this role, identified by its, e.g., BIG-number. |
| organization → Organization | 1..1 | The organization where the practitioner works. |
| code | 1..* | The role(s) the practitioner performs. |
| specialty | 0..* | The specialty of the practitioner in this role. |
| telecom | 0..* | Contact details (no privacy-sensitive data). |


#### OrganizationAffiliation
OrganizationAffiliation resources are used to represent relationships between organizations, such as a software vendor managing the Endpoint that is used by a care provider. The LRZa Directory uses OrganizationAffiliations to authorize incoming create and update interactions of service providers. It could also be used to represent multiple care providers working together under some agreement (e.g. in a region).
The [NL-GF-OrganizationAffiliation profile](./StructureDefinition-nl-gf-organizationaffiliation.html) is used to represent organizational relationships in this guide. Key attributes:

| Attribute | Card. | Description |
|---|---|---|
| active | 1..1 | Whether this affiliation is currently active. |
| organization → Organization | 1..1 | The care provider organization. |
| participatingOrganization → Organization | 1..1 | The affiliated party (e.g. IT vendor). |
| code | 1..* | The type of affiliation (required binding to [NL-GF Authorization Types](./ValueSet-nl-gf-authorization-type-vs.html)). |
| device (extension) | 0..* | Device identifier(s) authorized in this affiliation. |


### Security

A Data Source actor SHALL use mTLS for transport layer security. Qualified certificates from Qualified Trusted Service Providers (like PKIoverheid) should be trusted. ([GF-Adressering, ADR#178](https://github.com/minvws/generiekefuncties-adressering/issues/178)).
The LRZa-Directory SHALL only support creation/updates of OrganizationAffiliations by Care Providers, not by the parties that are being authorized (the `.participatingOrganization`).


### Example use cases



##### Use Case #1: Admin Registers Affiliation, Service Provider Publishes Resources
This sequence shows a two-step onboarding flow: first, the care provider administrator creates an OrganizationAffiliation that authorizes the service provider (and optionally a Device). After this authorization exists, the service provider is able to register their Endpoints and Devices (if not already registered). Finally, the care provider administrator is able to register and update the remaining mCSD resource types in the application of the service provider (e.g. the EHR).

<div>
{% include care-services-registration-use-case.svg %}
</div>

##### Use Case #2: Query Client & Update Client Sync Example
The following sequence diagram illustrates how a Query Client and Update Client synchronize data from the LRZa Directory into a local replica:

<div>
{% include care-services-sync-use-case.svg %}
</div>

#### Use Case #3: Healthcare service Query
The patient, Vera Brooks, consults with her physician who recommends surgery. The physician can assist the patient in finding a suitable care provider, taking into consideration the location and specialty for orthopedic surgeons.
- Vera Brooks sees her family physician, Dr. West, regarding a recent knee injury.
- Dr. West diagnoses the problem as a torn ACL and decides to refer Vera to a clinic that provides orthopedic specialists.
- Dr. West uses her EHR query tool, which implements a Query Client to search for orthopedic healthcare services within 30km of Vera’s home.
- The EHR retrieves the information from the Directory and displays it to Dr. West.
- Vera and Dr. West decide on the Orthopedic department at Hospital East; Dr. West prepares a referral.

<div>
{% include care-services-service-query-use-case.svg %}
</div>

#### Use Case #4: Endpoint Discovery
Dr. West just created a referral (for patient Vera Brooks from use case #3). The EHR has to notify Hospital East and the Orthopedic department of this referral. This may include some recurring requests:
- The EHR looks up the HealthcareService instance of the Orthopedic department at the (local) Directory, fetches the related endpoints and checks if these support a 'Request' payloadType. The EHR sends the notification and referral-workflow continues.

<div>
{% include care-services-endpoint-query-use-case.svg %}
</div>



### Roadmap for Care Services

- Security specifications must be aligned with LDN 'veilig netwerk' specifications
- The data profiles should be added/merged in the NL Core profiles
