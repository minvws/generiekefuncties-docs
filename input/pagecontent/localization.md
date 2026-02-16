### Introduction
Patient data is often divided over multiple data holders. Generic Function Localization provides a standardized framework that enables healthcare professionals to discover which organizations hold relevant patient data of a specific type.


### Solution overview

GF-Localization is based on the IHE [MHD profile](https://profiles.ihe.net/ITI/MHD/) and follows the choices made by the MinvWS Localization working group, see [GF-Lokalisatie, ADR's](https://github.com/orgs/minvws/projects/70/views/1). This guide specifies the choices made. Most impactful/striking choice are:

- using one national Medical Record Localization Service: the 'Nationale Verwijs Index' (NVI)
- using one national service for pseudonymizing and depseudonymizing citizen service numbers (BSN's): the Pseudonymization Service
- using IHE [MHD profile](https://profiles.ihe.net/ITI/MHD/) to publish and find Localization records (transactions [ITI-65](https://profiles.ihe.net/ITI/MHD/ITI-65.html) and [ITI-66](https://profiles.ihe.net/ITI/MHD/ITI-66.html)). As a pseudonimization service is used, the FHIR profiles and transactions are compatible with the IHE MHD profile, but not directly compliant. 

Here is a brief overview of the processes that are involved: 
1. Every data holder registers the presence of data concerning a specific patient and data category at the Localization service. 
1. A data user (practitioner and/or system (EHR)) can now use the Localization service to discover data holders for a specific patient and data category.


These processes require the use of pseudonyms that are generated and resolved using a national Pseudonymization Service. The Localization service-response provides a list of data holders; the endpoints of these data holders (e.g. FHIR or DICOM-urls) need to be resolved using a [Care service (Query) Directory](./care-services.html#query-directory). This process is illustrated in [this example](./care-services.html#use-case-2-endpoint-discovery). 

<img src="localization-overview-transactions.png" width="60%" style="float: none" alt="Overview of transactions in the Medical Record Localization solution."/>

For more detail on the topology of GF-Localization, see [GF-Lokalisatie, ADR-2](https://github.com/minvws/generiekefuncties-lokalisatie/issues/15). Each component, data model, and transaction will be discussed in more detail.

### Components (actors)

#### Localization Service

A (Medical Record) Localization Service is responsible for managing the registration, maintenance, and publication of localization records. It should be able to create and update localization records. A Localization Service MUST implement these [FHIR capabilities](./CapabilityStatement-nl-gf-localization-repository-list.html)

#### Pseudonymization Service
The Pseudonymization Service is responsible for creating and retrieving Polymorphic Pseudonyms of Patient identifiers using Oblivious Pseudorandom Function (OPRF) protocols.


#### Localization client

A Localization Client is responsible for registering and managing localization records at the Localization Service on behalf of healthcare organizations. The client is typically embedded within or integrated with Electronic Health Record (EHR) systems, Picture Archiving and Communication Systems (PACS), or other clinical systems that manage patient data.

The Localization Client MUST support the following capabilities:

##### Registration of Localization Records
The client SHALL be able to create and register List resources (localization records) at the Localization Service. The client MUST support Bundle transactions to register localization records:
- Create FHIR Bundle resources of type `transaction`
- Include List resources (localization records) as Bundle entries with appropriate HTTP methods (POST for create, DELETE for delete)
- Submit the Bundle to the Localization Service's transaction endpoint
- Handle transaction responses, including success confirmations and error conditions

**Pseudonymization Integration**: Before submitting localization records, the client MUST obtain pseudonymized patient identifiers (pseudonymized BSN) from the Pseudonymization Service to protect patient privacy.

**Data Holder Identification**: The client MUST include the appropriate organization identifier (URA) in the author-assigned identifier of each localization record to identify the data holder/custodian.

**Example Bundle Transaction**:
```json
{
  "resourceType": "Bundle",
  "type": "transaction",
  "entry": [
    {
      "fullUrl": "urn:uuid:a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "resource": {
        "resourceType": "List",
        "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
        "identifier": [
          {
            "system": "https://cp1-test.example.org/nvi",
            "value": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
            "assigner": {
              "identifier": {
                "system": "http://fhir.nl/fhir/NamingSystem/ura",
                "value": "11111111"
              }
            }
          }
        ],
        "status": "current",
        "mode": "working",
        "code": {
          "coding": [
            {
              "system": "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-zorgcontext-cs",
              "code": "MEDAFSPRAAK",
              "display": "Medicatieafspraak"
            }
          ]
        },
        "subject": {
          "identifier": {
            "system": "http://fhir.nl/fhir/NamingSystem/pseudo-bsn",
            "value": "UHN1ZWRvYnNuOiA5OTk5NDAwMw=="
          }
        },
        "source": {
          "identifier": {
            "system": "https://cp1-test.example.org/device-identifiers",
            "value": "EHR-SYS-2024-001"
          },
          "type": "Device"
        },
        "emptyReason": {
          "coding": [
            {
              "system": "http://terminology.hl7.org/CodeSystem/list-empty-reason",
              "code": "withheld"
            }
          ]
        }
      },
      "request": {
        "method": "POST",
        "url": "List"
      }
    }
  ]
}
```

##### Search for Localization Records
The client SHALL support searching for List resources (localization records). This enables healthcare professionals to discover which organizations hold relevant patient data. The Localization Client SHALL support the following search parameters:

- **patient.identifier**: Search for localization records by pseudonymized patient identifier (BSN)
- **code**: Search for localization records by data type/category code


**Example Search Query**:
```
GET [base]/List?patient.identifier=http://fhir.nl/fhir/NamingSystem/pseudo-bsn|UHN1ZWRvYnNuOiA5OTk5NDAwMw==&code=LABBEPALING
```

The search operation returns a Bundle of type `searchset` containing matching List resources, allowing the client to identify which data holders have specific types of patient data. This response will not contain the (pseudomized) subject.identifier and oprfKey for privacy/security reasons.


##### OPRF Integration requirements

The Localization Client MUST implement the following requirements when interacting with the Pseudonymization Service:

**1. Personal Identifier Preparation**
- Prepare the patient's BSN in a structured JSON format with country code (e.g., "NL") and identifier value

**2. Context Information**
- Construct context string: `{recipient_organization}|{recipient_scope}|{version}` (e.g., "URA-NVI|localization|v1")

**3. HKDF Key Derivation**
- Apply HKDF-SHA256 to derive a pseudonym from the personal identifier
- Parameters: SHA-256, 32 bytes, no salt, using context string as info ([RFC 5869](https://datatracker.ietf.org/doc/html/rfc5869))

**4. OPRF Blinding**
- Perform cryptographic blinding on the derived pseudonym to create:
  - `blind_factor`: Retained for NVI processing
  - `blinded_input`: Sent to Pseudonymization Service (PRS)
- Both values base64 URL-safe encoded

**5. PRS Interaction**
- Send `blinded_input` to PRS
- Receive JWE (JSON Web Encryption) encrypted with NVI's public key
- Client cannot decrypt the JWE

**6. Localization Record Submission**
- Include JWE as `subject.identifier.value`
- Include `blind_factor` in the [PseudoBsnIdentifier](./StructureDefinition-nl-gf-pseudo-bsn-identifier.html) extension's `oprfKey` field
- Submit to NVI for decryption and unblinding

Reference implementations: [OPRF.py](https://github.com/minvws/gfmodules-nationale-verwijsindex-registratie-service/blob/main/test_flow/OPRF.py) | [PRS.py](https://github.com/minvws/gfmodules-nationale-verwijsindex-registratie-service/blob/main/test_flow/PRS.py)


### Data models

#### Localization record

Within GF-Localization the [NL-gf-localization-List profile](./StructureDefinition-nl-gf-localization-list.html) is used to register, search, and validate localization records ([NL-GF-IG, ADR#10](https://github.com/nuts-foundation/nl-generic-functions-ig/issues/10)).
This data model basically states ***"Care provider X has data of type Y for Patient Z"***. It contains the following elements:
- **Organization identifier**: The care provider identifier (URA) representing the data holder/custodian. This attribute is part of the 'Author assigned identifier'.
- **Patient identifier**: The pseudonymized BSN to identify the patient.
- **Code**: Represents type of data stored at the data holder/custodian.
- **Source identifier**: The identifier of the system (software instance) that registered the localization record.

A [Location record example](./List-a1b2c3d4-e5f6-7890-abcd-ef1234567890.html) is in the IG artifacts.



#### Authentication and Authorization
Link to 'NVI/PRS Aansluitdocument'?


### Example Use Cases

#### Use case: Radiologist registering Imaging Data
**Scenario**: Dr. Carter, a radiologist at a care provider organization, performs an imaging study for a patient. To enable data discovery by other healthcare professionals, Dr. Carter's organization must register the existence of this imaging data in the national localization index (NVI). This process involves pseudonymizing the patient's identifier, creating a localization record, and submitting it to the NVI with the appropriate authorization attributes.

The following diagram illustrates the registration workflow, including interactions between the radiologist, the PACS system and the NVI. For brevity, interactions to the Pseudonymization Service are left out here.


{% include localization-internist-registration.svg %}


#### Use Case: Cardiologist searching for Imaging Data

**Scenario**: Dr. Smith, a cardiologist at Hospital A, is treating a patient who was recently referred from another hospital. She needs to know what imaging data (X-rays, CT scans, MRIs) might be available from other healthcare providers to avoid unnecessary duplicate examinations and to get a complete picture of the patient's medical history.


{% include localization-cardiologist-search.svg %}



#### Use Case: Localization Client retrieving all registered localization records

**Scenario**: A healthcare organization needs to retrieve all localization records it has registered in the National Localization Service (NVI). This is useful for administrative purposes, data quality checks, reconciliation, or audit trails. This query retrieves all localization records registered by a specific device/system (the Localization Client)

```
GET [base]/List?source.identifier=https://cp1-test.example.org/device-identifiers|EHR-SYS-2024-001
```

**Response**: The NVI returns a Bundle of type `searchset` containing all matching List resources registered by the specified organization or device.


### Roadmap for GF Localization

#### Localization Service
Potential future enhancements to the Localization Service include:
- Audit logging capabilities (MUST HAVE, TODO)