<div markdown="1" class="w-100 bg-info">

> [Open issues and Architectural Decision Records (ADRs) can be found in the GitHub repository](https://github.com/minvws/generiekefuncties-docs/issues)

</div>


### Version: current
- [Implementation Guide](https://minvws.github.io/generiekefuncties-docs/)
- [Source code](https://github.com/minvws/generiekefuncties-docs)
- [Compare version current to 1.0.0](https://github.com/minvws/generiekefuncties-docs/compare/1.0.0...main)
#### Significant changes/Closed issues:
- Localization; localization records (NVI-pseudonyms) no longer contain a data-category code.
- Localization; data users search with a search context (zoekcontext) containing custodian characteristics, and the NVI only returns relevant custodians with an allow Authorization Decision (HEAD request on the custodian's FHIR API). Localization-Patients contain a custodian-assigned patient identifier.

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