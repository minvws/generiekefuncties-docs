<div markdown="1" class="w-100 bg-info">

> [Open issues and Architectural Decision Records (ADRs) can be found in the GitHub repository](https://github.com/minvws/generiekefuncties-docs/issues)

</div>


### Version: 26.1.0
- [Implementation Guide](https://fhir.generiekefuncties.nl/26.1.0)
- [Source code](https://github.com/minvws/generiekefuncties-docs/tree/26.1.0)
- [Compare this version to 26.0.0](https://github.com/minvws/generiekefuncties-docs/compare/26.0.0...26.1.0)
#### Significant changes/Closed issues:
- Authentication; added the [GF Authentication](authentication.html) specification (draft): how two healthcare providers establish each other's identity, and the purpose of an exchange, when exchanging health data through their service providers. It specifies URA-signed mandates (machtigingen) issued as SD-JWT Verifiable Credentials, OAuth 2.0 client authentication with Client ID Metadata Documents, token requests, and validation by the authorization and resource servers. The underlying memos ([Harmonisatie van authenticatie en autorisatie voor BgZ en eOverdracht](authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html), approved by MT DICIO, and [Vervolg harmonisatie: clientregistratie en machtiging](authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html)) are included as pages.
- Authentication; added the `URA-signed-mandate` SD-JWT VC Type Metadata (published under `/vct/`), the `URA-signed-mandate` code to the NL GF Authorization Types CodeSystem and the NL GF Payload Types value set, the `openid4vci` connectionType code (Credential Issuer endpoints) to the NL GF Authorization Server CodeSystem, and the NL GF Purpose of Use value set.
- Localization; the registration key now includes the registering client (`meta.source`): the NVI stores one `Patient` resource per patient, custodian and Localization Registration Client. A custodian MAY use more than one registration client (e.g., an EHR and a PACS); each client maintains only its own registrations. The registering client is never returned to data users and does not affect search results.
- Localization; Authorization Decision: the NVI timeout for the custodian's response is lowered from 10 seconds to 1 second, and the requested data categories are clarified to be the `organization.endpoint.payload-type` values in the search; when the search specifies no data categories, the NVI sends one `HEAD` request on `Patient`.
- General; the canonical URL of this guide changed from `http://fhir.generiekefuncties.nl` to `https://fhir.generiekefuncties.nl`.

### Version: 26.0.0
- [Implementation Guide](https://fhir.generiekefuncties.nl/26.0.0)
- [Source code](https://github.com/minvws/generiekefuncties-docs/tree/26.0.0)
- [Compare this version to 1.0.0](https://github.com/minvws/generiekefuncties-docs/compare/1.0.0...26.0.0)
#### Significant changes/Closed issues:
- Care Services; added the [Handboek Adressering voor zorgaanbieders](csd-handbook.html), a non-technical guide (in Dutch) for care providers covering an introduction to the generic functions and GF Addressing, its relation to other generic functions (including data retrieval with Localization), LandelijkAfsprakenStelsel TA's (a.k.a. Twiin TA's) and existing address services, the data model with fictional care provider examples, the roles of IT service providers, and a step-by-step plan.
- Localization; localization records (NVI-pseudonyms) no longer contain a data-category code.
- Localization; data users search with a search context (zoekcontext) containing custodian characteristics, and the NVI only returns relevant custodians with an allow Authorization Decision (HEAD request on the custodian's FHIR API). Localization-Patients contain a custodian-assigned patient identifier.
- Care Services; added [LRZa-managed elements](lrza-managed-elements.html), listing the Organization and Location elements and codes copied from the KvK and Dezi-register (including the Organization and Location created from a KvK vestiging to which a URA number is linked); the LRZa Directory refuses mutations of these elements by Data Sources. Documented the resources of the ITI-130-NL CapabilityStatement accordingly.
- Care Services; renamed the data category property `fhir-resourcetype-params` to `path-query-param`: the relative path(s) and query parameters under the base URL in `Endpoint.address` at which a payload is offered. An authorization server Endpoint (connectionType from the NL-GF Authorization Server CodeSystem) points to the metadata endpoint of the authorization server and has payloadType `none`.
- Care Services; added the optional `HealthcareService.coverageArea`, with example coverage-area Locations (provinces, cities and postal-code areas). A register/structure for coverage-area Locations is on the roadmap.
- Care Services; `Endpoint.connectionType` is now primarily bound (extensible) to the NL-GF Connection Types value set, instead of through an additional binding, so codes from the NL-GF Authorization Server CodeSystem (e.g. `oauth-nuts`) no longer cause a binding warning against the NL-GF-Endpoint profile.

### Version: 1.0.0
- [Implementation Guide](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/1.0.0/)
- [Source code](https://github.com/minvws/generiekefuncties-docs/tree/1.0.0)
- [Compare this version to 0.9.0-ballot](https://github.com/minvws/generiekefuncties-docs/compare/0.9.0-ballot...1.0.0)
#### Significant changes/Closed issues:
- Pseudonymisation; added the pseudonymisation specification, including the requirement to use JSON Canonicalization Scheme (JCS) for PRS input.
- Care Services; clarified Endpoint lifecycle, period-based transitions and selection, and added machine-readable FHIR version guidance.
- Care Services; added synchronization requirements for paging, concurrency, retention and error handling, and expanded Endpoint management and directory support.
- Care Services; added Chamber of Commerce (KvK) data transformation guidance and support for publishing notification Endpoints.
- Localization; removed Device and used the OAuth client ID as the source.
- Authorization; added resource signing requirements and support for deletes.
- Terminology and interoperability; added subscription as a data category, a code system for care questions, and aligned the guide with EHDS.

### Version: 0.9.0-ballot
- [Implementation Guide](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/0.9.0-ballot/)
- [Source code](https://github.com/minvws/generiekefuncties-docs/tree/0.9.0-ballot)
- [Compare this version to v0.1.0](https://github.com/minvws/generiekefuncties-docs/compare/v0.1.0...0.9.0-ballot)
#### Significant changes/Closed issues:
- Care-services; Simplified architecture and synchronization between directories.
- Care-services; Support for Endpoint-management for all organizations that own/operate endpoints (not just the service providers that supply an mCSD-Directory); added OrganizationAffiliations-profile and Device-profile 
- Care-services & Localization; updated codesystem/valueset 'data categories' for (Care-services) Endpoint.payloadType and (Localization) List.code (a.k.a. 'zorgcontext'). 'Oauth'-endpoints are specified by connectionType (not PayloadType)
- Care-services; Renamed transactions and CapabilityStatements to, e.g., ITI-91-***NL*** to reflect Generic Function Care Service Directory is the Dutch implementation of the IHE mCSD implementation Guide
- Care-services; Added structuremaps for Chamber-of-commerce (KvK) data transformation to FHIR Organization and Location resourcetypes


### Version: v0.1.0 
- [Implementation Guide](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/v0.1.0/)
- [Source code](https://github.com/minvws/generiekefuncties-docs/tree/v0.1.0)