### Introduction

This FHIR Implementation Guide specifies the Generic Function Identification, a national initiative led by the Dutch Ministry of Health, Welfare and Sport (VWS). The GF Identification aims to establish a standardized, interoperable system for identifying healthcare organizations, IT vendor organizations, healthcare professionals, patients and data-objects, enabling reliable and efficient exchange of health data across healthcare systems and organizations.

This guide specifies the identifiers and authentic sources to be used. Key design principles include:
- Conform to national healthcare information models ('Zorginformatiebouwstenen')
- Conform to national FHIR-profiles ('nl-core profiles')
- Each identifier originates from one authentic source

By adhering to these principles, this Implementation Guide supports consistent and secure identification fostering improved interoperability within the healthcare ecosystem.

### Solution overview

The GF Identification follows the national FHIR-profiles for patient, healthcare provider and health professional. For the identification of non-care-provider organizations the GF Identification uses the Chamber of Commerce. For data-object identification a globally resolvable URL is used.

### Data-object Identification

Data objects (e.g. Observation, Condition, Medication, or HealthcareService resources) are identified by an identifier ***that was assigned by the original custodian***. The custodian is "The entity that is accountable for maintaining a true an accurate copy of the ***original*** record". I.e. this custodian is responsible for the 'single source of truth' for this data object. The 'custodian-assigned-identifier' is the unambiguous and persistent identifier for both the data object and the custodian. 

Example identifier for a Condition registered at a Care provider with URA-number '11111111':
```
"identifier": [{
    "system": "https://cp1-test.example.org/Condition",
    "value": "8cdd8f8d-f75b-4285-851e-ff302dad46fb",
    "use": "official",
    "assigner": {
        "identifier": {
        "system": "http://fhir.nl/fhir/NamingSystem/ura",
        "value": "11111111",
        "type": {
            "coding": [{
                "code": "custodian",
                "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
    }]}}}}]
```

Example identifier for a HealthcareService (registered at the [LRZa Directory](./care-services.html#lrza-directory) with KvK-number of custodian CiBG):
```
"identifier": [{
    "system": "urn:ietf:rfc:3986",
    "value": "urn:uuid:9d47ca45-4166-4531-a23d-ef5fa613ece4",
    "use": "official",
    "assigner": {
    "identifier": {
        "system": "http://fhir.nl/fhir/NamingSystem/kvk",
        "value": "50000535",
        "type": {
        "coding": [{
            "code": "custodian",
            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
    }]}}}}]
```

However, the custodian may have multiple systems or endpoints that expose the data-object in varying formats (e.g. FHIR STU3 and R4). Systems may also changes over time. This requires a lookup of the actual system/endpoint using [GF Addressing](./care-services.md)

This identifier is applied in the profiles specified in this IG (e.g. [NL-GF-Organization](./StructureDefinition-nl-gf-organization.html) or [NL-GF-HealthCareService](./StructureDefinition-nl-gf-healthcareservice.html)) and example FHIR-resources (e.g. [Organization](./Organization-631cf10e-42d6-4165-9907-11e2333d4a85.json.html) (department), [Condition](./Condition-5a7f34e7-9b7b-4e5c-ba7c-890edbc4d757.json.html) and [Task](./Task-a0fc5221-bcd9-46f1-922f-c2913dae5d63.json.html) that references the example Organization/department). For discussion and other solutions that were considered, see [GF-Identification, ADR#48](https://github.com/nuts-foundation/nl-generic-functions-ig/issues/48) and [GF-Identification, ADR#33](https://github.com/nuts-foundation/nl-generic-functions-ig/issues/33).

### Patient Identification

Patients are identified by BSN as specified in the [nl-core-Patient profile](http://nictiz.nl/fhir/StructureDefinition/nl-core-Patient). The authentic source for this identifier is Basisregistratie Personen (BRP) that is administered by Rijksdienst voor Identiteitsgegevens (RvIG). The pseudonymization service may be used to transform the BSN to/from a pseudonymized BSN (or from one pseudonymized BSN to another pseudonymized BSN). See namingsystem ['http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier'](./NamingSystem-http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier.html) for the specification of this identifier. 

### Practitioner Identification

Practitioners' main identifier is the UZI number (to be renamed in DEZI number) as specified in the [nl-core-HealthProfessional-Practitioner profile](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthProfessional-Practitioner). The authentic source for this identifier is Dezi-register that is administered by CIBG.

### Care Provider Identification

Care providers' main identifier is the URA number as specified in the [nl-core-HealthcareProvider-Organization profile](http://nictiz.nl/fhir/StructureDefinition/nl-core-HealthcareProvider-Organization). The authentic source for this identifier is URA-register that is administered by CIBG. However, organization departments, locations and healthcare services aren't registered in the LRZa (URA-register). These entities can be identified by the mandatory [local data-object identifier](#data-object-identification).

#### Role
<a name="careprovider.role"></a>
Care provider organizations are further classified by their role using the [Nictiz healthcare provider roles](https://decor.nictiz.nl/ad/#/nictiz2bbr-/terminology/codesystems/2.16.840.1.113883.2.4.15.1060/2024-11-14T22:13:01).

The system for this classification is `2.16.840.1.113883.2.4.15.1060`.

### Organization Identification

Non-care-provider organizations, like EHR software vendors, are identified by their (Dutch) Chamber of Commerce number (`identifier.system: http://www.kvk.nl/`). The authentic source for this identifier is handelsregister that is administered by Kamer van Koophandel.
