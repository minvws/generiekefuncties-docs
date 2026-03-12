<div markdown="1" class="w-100 bg-info">

> [Open issues and Architectural Decision Records (ADRs) can be found in the GitHub repository](https://github.com/minvws/generiekefuncties-docs/issues)

</div>


### Version: current
- [Implementation Guide](https://minvws.github.io/generiekefuncties-docs/)
- [Source code](https://github.com/minvws/generiekefuncties-docs)
- [Compare this version to v0.1.0](https://github.com/minvws/generiekefuncties-docs/compare/0.2.0-ballot...main)
<!-- Significant changes/Closed issues: -->

### Version: 0.2.0-ballot
- [Implementation Guide](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/0.2.0-ballot/)
- [Source code](https://github.com/minvws/generiekefuncties-docs/tree/0.2.0-ballot)
- [Compare this version to v0.1.0](https://github.com/minvws/generiekefuncties-docs/compare/v0.1.0...0.2.0-ballot)
#### Significant changes/Closed issues:
- Care-services; Simplified architecture and synchronization between directories.
- Care-services; Support for Endpoint-management for all organizations that own/operate endpoints (not just the service providers that supply an mCSD-Directory); added OrganizationAffiliations-profile and Device-profile 
- Care-services & Localization; updated codesystem/valueset 'data categories' for (Care-services) Endpoint.payloadType and (Localization) List.code (a.k.a. 'zorgcontext'). 'Oauth'-endpoints are specified by connectionType (not PayloadType)
- Care-services; Renamed transactions and CapabilityStatements to, e.g., ITI-91-***NL*** to reflect Generic Function Addressing is the Dutch implementation of the IHE mCSD implementation Guide
- Care-services; Added structuremaps for Chamber-of-commerce (KvK) data transformation to FHIR Organization and Location resourcetypes


### Version: v0.1.0 
- [Implementation Guide](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/v0.1.0/)
- [Source code](https://github.com/minvws/generiekefuncties-docs/tree/v0.1.0)