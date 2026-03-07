### Introduction

Generic Function Addressing (GFA) defines how healthcare parties can publish, discover, and use trusted addressing information for organizations, services, locations, and endpoints. Its purpose is to make healthcare data exchange interoperable and reliable by helping practitioners and systems route requests, referrals, and notifications to the correct destination.


### Solution overview

Here is a brief overview of the processes that are involved: 

1. Every care provider registers one or more parties (e.g. an IT vendor) that is authorized to manage their addressable entities at the ['Directory'](#directory) of the 'Landelijk Register Zorgaanbieders' (LRZa).
1. The authorized parties ('Data Source' actors) create and manage addressable entities in the LRZa Directory.
1. A 'Query client' is used to, initially, populate a local replica of the LRZa Directory
1. An 'Update Client' is used periodically to fetch updates from the LRZa Directory.
1. A practitioner and/or system (EHR) can now use the local replica of the LRZa Directory to match resources defined within mCSD (for example: a practitioner searching for a healthcare service or a system searching for a specific endpoint)


<img src="careservices-overview-transactions.png" width="60%" style="float: none" alt="Overview of transactions in the Care Services Addressing solution."/>


This overview implies a decentralized architecture (local Data Source actors and LRZa Directory replica's) for the many components. An important central component is the LRZa Administration Directory, but this central component is not a crucial asset at data exchange runtime (only for creating or updating addressable entities).  
The solution is based on the [IHE mCSD](https://profiles.ihe.net/ITI/mCSD/index.html) profile.

### National Constraints Compared to IHE mCSD

This specification constrains and profiles [IHE mCSD](https://profiles.ihe.net/ITI/mCSD/index.html) for the Dutch national context. The following national choices apply:

1. Data model profiling:
The national profiles SHALL be based on NL-core where available and SHALL be aligned with relevant IHE mCSD profile constraints.

1. Practitioner resource scope:
The Practitioner resource is intentionally removed from the operational exchange scope of this specification to limit distribution of privacy-sensitive data. Practitioner registration SHALL be sourced from dedicated authoritative registries (for example the BIG-register).

1. Device resource addition:
The Device resource is added as a national extension to support efficient endpoint lookup and query-routing. Device usage SHALL support national workflows including Localization and TA Notified Pull.

1. LRZa Directory operational role:
The LRZa Directory SHALL NOT support matching of care service entities. Matching SHALL be performed on a local replica (Query Directory) populated from LRZa and other authoritative sources. The LRZa Directory SHALL act as single source of truth and distribution point, and SHALL NOT have a direct operational role in healthcare data exchange transactions. For replication purposes, LRZa SHALL support `search-type` interactions without search parameters.  
Addressable entities may become inactive/deprecated at some point, but as these will be referred to from health records (for decades), deletion of addressable entities SHALL not be supported by the LRZa Directory. 

### Actors
Each actor will now be discussed in more detail.

#### LRZa Directory
The LRZa Directory is the central national directory for publishing and distributing addressable entities. It is the authoritative source for nationally governed directory content and provides interfaces for administration and retrieval of updates. The LRZa Directory is not intended for runtime matching in operational healthcare workflows; searching/matching SHALL be performed on local replicas.

#### Data Source
A Data Source is an authorized party (for example an IT vendor) that publishes and maintains directory entities on behalf of care providers. The Data Source actor SHALL implement [these capabilities](./CapabilityStatement-nl-gf-directory-for-data-source.html), including create/update for Organization, Location, HealthcareService, Endpoint, and Device.

#### Update Client
The Update Client periodically synchronizes from the LRZa Directory to a local replica. It consumes update-oriented interactions defined in [these capabilities](./CapabilityStatement-nl-gf-directory-for-update-client.html). In this specification, this is modeled with `history-type` interactions per resource type and `_since` to request incremental updates. The Update Client may additionally perform periodic full reloads for recovery scenarios.

##### Update Client Sync Example
The following sequence diagram illustrates how an Update Client synchronizes data from the LRZa Directory into a local replica:

<div>
{% include care-services-sync-example.svg %}
</div>

#### Query Client
The Query Client uses the local replica to find organizations, healthcare services, locations, endpoints, devices, and organizational relationships for routing and discovery. 

The [Query Client capabilities](./CapabilityStatement-nl-gf-directory-for-query-client.html) are also used to populate the local repository. The `search-type` interaction (without search parameters) is used for this initial load.

### Transactions

#### Care Services Feed: ITI-130-NL
The Data Source publishes entities to the LRZa Directory using create/update semantics as profiled in the Data Source capability statement.

#### Request Care Services Updates: ITI-91-NL
The Update Client retrieves changes from the LRZa Directory using `history-type` interactions per supported resource, optionally constrained by `_since` for incremental synchronization.

#### Search Care Services: ITI-90-NL
The Query Client loads/queryies directory data for initial population of the local replication using `search-type` interactions without search parameters.


### Entities
Within GF Addressing, several addressable entities are used to capture information. 
An overview of the *most common* elements and relations between entities:

<img src="careservices-datamodel.png" width="100%" style="float: none"/>

A brief description of the entities:

#### HealthcareService
Healthcare services are used to publish which (medical) services are provided by a (child) Organization at some Location(s). Examples include surgical services, antenatal care services, or primary care services. These services in `HealthcareService.type` can be extended by references to specific ActivityDefinitions and PlanDefinitions that are supported. The combination of a HealthcareService offered at a Location may have specific attributes including contact person, hours of operation, etc. Typically, HealthcareServices use Endpoints that support receiving notifications or requests. 
The [NL-GF-HealthcareService profile](./StructureDefinition-nl-gf-healthcareservice.html) is used to represent healthcare service offerings.


#### Organization
Organizations are “umbrella” entities; these may be considered the administrative bodies under whose auspices care services are provided. Typically, (top-level)Organization-instances use Endpoints that publish healthcare data for other (healthcare) organizations to query. Departments of an institution, or other administrative units, may be represented as child Organizations of a parent Organization.
The [NL-GF-Organization profile](./StructureDefinition-nl-gf-organization.html) is used to represent organizations and their hierarchical relations in this guide.



#### Endpoint
An addressable entity may be reachable for electronic data exchange through electronic Endpoint(s). An Endpoint may be a FHIR server, an DICOM web services, or some other mechanism. Typically, Organizations, Devices and HealthcareServices refer to Endpoints. This relationship is meant to indicate that an, e.g. a care provider (Organization) ***uses*** an Endpoint. An Endpoint also refers to one specific organization; the managing organization (e.g. IT vendor) and not the organization using the endpoint.
The [NL-GF-Endpoints profile](./StructureDefinition-nl-gf-endpoint.html) is used to represent electronic access points for data exchange.


#### Device
Device resources are, in GF Adressing, used to represent software applications or technical systems involved in healthcare data exchange. A Device can reference one or more Endpoints that it uses/provides, enabling efficient endpoint lookup and query-routing in workflows such as Localization and TA Notified Pull. In this guide, Devices are also referenced from OrganizationAffiliation to indicate which technical system is authorized in the relationship between a care provider and an IT vendor.
The [NL-GF-Device profile](./StructureDefinition-nl-gf-device.html) is used to represent these technical systems and their endpoint references.



#### Location
Locations are physical places where care can be delivered such as buildings (NL: Vestiging), wards, rooms, or vehicles. A Location may have geographic attributes (address, geocode), attributes regarding its hours of operation, etc. Each Location is related to one (child) Organization. A location may have a hierarchical relationship with other locations (e.g. building > floor > room).
The [NL-GF-Location profile](./StructureDefinition-nl-gf-location.html) is used to represent physical care-delivery locations.


#### PractitionerRole
PractitionerRole resources are used to define the specific roles, specialties, and responsibilities that a Practitioner holds within an Organization. PractitionerRole enables precise modeling of relationships between practitioners and organizations, supporting scenarios like assigning practitioners to departments, specifying their roles (e.g., surgeon, nurse), and linking them to particular healthcare services or locations. A PractitionerRole may have contact details for phone, mail, or direct messaging, but should not contain privacy-sensitive data.
The [NL-GF-PractitionerRole profile](./StructureDefinition-nl-gf-practitionerrole.html) is used to represent practitioner roles and responsibilities within organizations.


#### OrganizationAffiliation
OrganizationAffiliation resources are used to represent relationships between organizations, such as a software vendor managing the Endpoint that is used by a care provider. It could also be used the represent multiple care providers working together under some agreement (e.g. in a region).
The [NL-GF-OrganizationAffiliation profile](./StructureDefinition-nl-gf-organizationaffiliation.html) is used to represent organizational relationships in this guide.



### Security

A Data Source actor SHALL use mTLS for transport layer security. Qualified certificates from Qualified Trusted Service Providers (like PKIoverheid) should be trusted. ([GF-Adressering, ADR#178](https://github.com/minvws/generiekefuncties-adressering/issues/178)).
The LRZa-Directory SHALL only support creation/updates of OrganizationAffiliations by Care Providers, not by the parties that are being authorized (the `.participatingOrganization`).




### Example use cases

#### Use Case #1: Healthcare service Query
The patient, Vera Brooks, consults with her physician who recommends surgery. The physician can assist the patient in finding a suitable care provider, taking into consideration the location and specialty for orthopedic surgeons.
- Vera Brooks sees her family physician, Dr. West, regarding a recent knee injury.
- Dr. West diagnoses the problem as a torn ACL and decides to refer Vera to an clinic that provides orthopedic specialists.
- Dr. West uses her EHR query tool, which implements a Query Client to search for orthopedic healthcare services within 30km of Vera’s home.
- The EHR retrieves the information from a Query Directory and displays it to Dr. West.
- Vera and Dr. West decide on the Orthopedic department at Hospital East; Dr. West prepares a referral.
<div>
{% include care-services-use-case-1.svg %}
</div>

#### Use Case #2: Endpoint Discovery
Dr. West just created a referral (for patient Vera Brooks from use case #1). The EHR has to notify Hospital East and the Orthopedic department of this referral. This may include some recurring requests:
- The EHR looks up the HealthcareService instance of the Orthopedic department at the Query Directory, fetches the related endpoints and checks if these support a 'Transfer of care' payload. The EHR sends the notification and referral-workflow continues.

<div>
{% include care-services-use-case-2.svg %}
</div>

### Roadmap for Care Services

- The data profiles should be added/merged in the NL Core profiles
