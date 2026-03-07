

### Solution overview


Generic Function Addressing (GFA) follows the IHE [mCSD profile](https://profiles.ihe.net/ITI/mCSD/index.html) ([GF-Adressering, ADR-0](https://github.com/minvws/generiekefuncties-adressering/issues/166)). The [mCSD profile](https://profiles.ihe.net/ITI/mCSD/index.html) provides multiple options for deployment. This guide specifies the choices made for The Netherlands. Most impactful/striking choice are:

Here is a brief overview of the processes that are involved: 
1. Every care provider registers its addressable entities in an 'Administration Directory'. This IG distinguishes the actor ['***Administration*** Directory'](#administration-directory) and the ['***Query*** Directory'](#query-directory); in the IHE mCSD specification, these are both called a 'Directory'.
1. Every care provider registers the endpoint (URL) of its 'Administration Directory' at the LRZa registry (also an 'Administration Directory').
1. An 'Update Client' uses the LRZa ([GF-Adressering, ADR-7](https://github.com/minvws/generiekefuncties-adressering/issues/155)) and the care provider Administration Directories to consolidate all data into a 'Query Directory.'
1. A practitioner and/or system (EHR) can now use the Query Directory to search for resources defined within mCSD (for example: a practitioner searching for a healthcare service or a system searching for a specific endpoint)


<img src="careservices-overview-transactions.png" width="60%" style="float: none" alt="Overview of transactions in the Care Services Addressing solution."/>


This overview implies a decentralized architecture for many components. An important central component is the LRZa Administration Directory. For more detail on the topology of GF Addressing, see [GF-Adressering, ADR-5](https://github.com/minvws/generiekefuncties-adressering/issues/153).   
Each component, data model, and transaction will be discussed in more detail.

### National Constraints Compared to IHE mCSD

This specification constrains and profiles IHE mCSD for the Dutch national context. The following national choices apply:

1. Data model profiling:
The national profiles SHALL be based on NL-core where available and SHALL be aligned with relevant IHE mCSD profile constraints.

1. Practitioner resource scope:
The Practitioner resource is intentionally removed from the operational exchange scope of this specification to limit distribution of privacy-sensitive data. Practitioner registration SHALL be sourced from dedicated authoritative registries (for example the BIG-register).

1. Device resource addition:
The Device resource is added as a national extension to support efficient endpoint lookup and query-routing. Device usage SHALL support national workflows including Localization and TA Notified Pull.

1. LRZa Directory operational role:
The LRZa Directory SHALL NOT support matching of care service entities. Matching SHALL be performed on a local replica (Query Directory) populated from LRZa and other authoritative sources. The LRZa Directory SHALL act as single source of truth and distribution point, and SHALL NOT have a direct operational role in healthcare data exchange transactions. For replication purposes, LRZa SHALL support `search-type` interactions without search parameters.

### Components (actors)


#### Administration Directory
The Administration Directory persist all addressable entities of one or more healthcare organizations. The Administration Directory MAY implement [these capabilities](./CapabilityStatement-nl-gf-directory-for-admin-client.html) for a client (e.g. a webportal for users) to create, update and delete resources. 

The Administration Directory MUST implement [these capabilities](./CapabilityStatement-nl-gf-directory-for-update-client.html) to publish changes of addressable entities. These changes are consumed by an [Update Client](#update-client). If the Administration directory also acts as the [Query Directory](#query-directory) locally, please make sure the Administration Directory only exposes data (externally) for which it is the original source (author/custodian). In other words; data that has been copied from the original source, SHOULD NOT be exposed to other organizations.



#### Update Client

The Update Client is responsible for aggregating and synchronizing addressable entity data from multiple Administration Directories. It periodically retrieves updates, including new, modified, or deleted records, and consolidates this information into a Query Directory. 

The Update Client uses a [FHIR 'history-type' operation](http://hl7.org/fhir/R4/http.html#history) and (optionally) parameter `_since` to get updates from Administration Directories, for example:


```
GET https://somecareprovider.nl/fhirR4/Organization/_history?_since=2025-02-07T13:28:17.239+02:00&_format=application/fhir+json
```
Besides using the 'history-type' operation, the Update Client should be able to query all instances in the Administration Directory using a search operation. Either for the initial load or periodically for a full reload to fix edge-case scenario's (e.g. Administration Directory backup restores). ([GF-Adressering, ADR-14](https://github.com/minvws/generiekefuncties-adressering/issues/163))


During consolidation, multiple Administration Directories may have overlapping or conflicting entities. An Update Client MUST only use data from authoritative data sources ([GF-Adressering, ADR#186](https://github.com/minvws/generiekefuncties-adressering/issues/186)) and MUST obey these guidelines:
- The LRZa Administration Directory is authoritative for Organization instances with `identifier` of system `http://fhir.nl/fhir/NamingSystem/ura` (URA) and its `name`. When the healthcare provider's Administration Directory also provides a `name` value (for an Organization-instance with a URA-identifier), these values should be ignored. Other elements from the healthcare provider's Administration Directory should be added. This way, a healthcare provider can add an `alias` or `endpoint` using it's own Administration Directory.
- The LRZa Administration Directory contains a list of Organization resources (identified by a URA) and Endpoint resources referencing the Administration Directory endpoint (URL). An Administration Directory is only authoritative for the healthcare providers that registered this Administration Directory endpoint (URL) at the LRZa. Information about other healthcare providers MUST be disregarded. For example, if the LRZa Administration Directory has 20.000 Organization-records, of which 2 Organizations (identified by 'URA-1' and 'URA-2') use the same Administration Directory endpoint ('https://admindirectory.example.com/'). This Endpoint MAY contain other resources (e.g. Organization/Location/HealthcareService-records), not authored by URA-1 and URA-2. These other resources MUST be disregarded by update clients as this Administration Directory is not the authoritative source.
- All HealthcareServices, Locations, PractitionerRoles and Organization-entities of a single healthcare provider MUST (indirectly) link to a top-level Organization-instance with a URA-identifier:
  - All HealthcareService, Location, PractitionerRole entities MUST be directly linked to an Organization-instance (could be 'sub-Organization' like a department).
  - All Organization-instances MUST either link to a parent-Organization or have a URA-identifier (being a top-level Organization instance)
  - All Endpoint-instances MUST be linked to from one of the HealthcareService or Organization-instances.

After consolidation, the Update Client writes the updates to a Query Directory. The Update Client MAY use the same interactions a Administration Client uses to register entities in an Administration Directory.

##### Update Client Sync Example

The following sequence diagram illustrates how an Update Client performs a synchronization operation to consolidate data from multiple Administration Directories into a Query Directory:

<div>
{% include care-services-sync-example.svg %}
</div>




#### Directory
The Query Directory persist all addressable entities it receives from the Update Client. The Query Directory MAY implement [these capabilities](./CapabilityStatement-nl-gf-directory-for-admin-client.html) for an Update Client to create, update and delete resources. 
Due to the consolidation process of the Update Client, not all (intermediate) changes are replicated between Administration Directories and Query Directory

The Query Directory serves/exposes all addressable entities to one or more query clients (e.g. a webportal for users). The Query Directory MAY implement [these capabilities](./CapabilityStatement-nl-gf-query-directory-query-client.html) for a client to search and read resources.  


#### Query Client
The Query Client is used to search and retrieve information from the Query Directory. It enables practitioners, EHR systems, and other healthcare applications to discover healthcare services, organizations, departments, locations, endpoints, or other EHR-systems across the entire ecosystem. By querying the Query Directory, users can efficiently find up-to-date and authoritative addressable entities for care coordination, referrals, and electronic data exchange.


### Data models
Within GF Addressing, profiles are used to validate data. They are based on both mCSD-profiles and nl-core-profiles. 
An overview of the *most common* elements and relations between data models:

<img src="careservices-datamodel.png" width="100%" style="float: none"/>

A brief description of the data models and their profile for this guide:

#### Organization
Organizations are “umbrella” entities; these may be considered the administrative bodies under whose auspices care services are provided. An (top-level)Organization-instance has a URA `identifier`, `type`, `status`, and `name`. It may have additional attributes like `endpoint`. Departments of an institution, or other administrative units, may be represented as child Organizations of a parent Organization.
The [NL-GF-Organization profile](./StructureDefinition-nl-gf-organization.html) is used to represent organizations and their hierarchical relations in this guide.

#### Endpoint
An Organization may be reachable for electronic data exchange through electronic Endpoint(s). An Endpoint may be a FHIR server, an DICOM web services, or some other mechanism. 
The [NL-GF-Endpoints profile](./StructureDefinition-nl-gf-endpoint.html) is used to represent electronic access points for data exchange.

#### HealthcareService
Healthcare services are used to publish which (medical) services are provided by a (child) Organization. Examples include surgical services, antenatal care services, or primary care services. These services in `HealthcareService.type` can be extended by references to specific ActivityDefinitions and PlanDefinitions that are supported. The combination of a HealthcareService offered at a Location may have specific attributes including contact person, hours of operation, etc.
The [NL-GF-HealthcareService profile](./StructureDefinition-nl-gf-healthcareservice.html) is used to represent healthcare service offerings.

#### Location
Locations are physical places where care can be delivered such as buildings (NL: Vestiging), wards, rooms, or vehicles. A Location may have geographic attributes (address, geocode), attributes regarding its hours of operation, etc. Each Location is related to one (child) Organization. A location may have a hierarchical relationship with other locations (e.g. building > floor > room).
The [NL-GF-Location profile](./StructureDefinition-nl-gf-location.html) is used to represent physical care-delivery locations.


#### PractitionerRole
PractitionerRole resources are used to define the specific roles, specialties, and responsibilities that a Practitioner holds within an Organization. PractitionerRole enables precise modeling of relationships between practitioners and organizations, supporting scenarios like assigning practitioners to departments, specifying their roles (e.g., surgeon, nurse), and linking them to particular healthcare services or locations. A PractitionerRole may have contact details for phone, mail, or direct messaging.
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
