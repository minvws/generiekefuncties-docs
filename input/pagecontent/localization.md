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
- Include List resources (localization records) as Bundle entries with appropriate HTTP methods (POST for create, DELETE for remove). Updates are not supported; to correct a record, delete it and create a new one.
- Submit the Bundle to the Localization Service's transaction endpoint
- Handle transaction responses, including success confirmations and error conditions

**Pseudonymization Integration**: Before submitting localization records, client MUST compose a pseudonymized patient identifier in collaboration with the Pseudonymization Service. This patient identifier consists of an OPRF blind_factor and an evaluated_output of the blinded_input where the latter is evaluated at the Pseudonymization Service and included as a transient encrypted token (JWE) intended for single-use in registration or query operations.

**Data Holder Identification**: The client MUST include the appropriate organization identifier (URA) in the nl-gf-localization-custodian extension of each localization record to identify the data holder/custodian.

**Example Bundle Transaction**:
For more information on the content, see the paragraph on [Localization record](#localization-record)

```json
{
  "resourceType": "Bundle",
  "id": "nvi-org1",
  "entry": [
    {
      "request": {
        "method": "POST",
        "url": "List"
      },
      "resource": {
        "resourceType": "List",
        "extension": [
          {
            "valueReference": {
              "identifier": {
                "system": "http://fhir.nl/fhir/NamingSystem/ura",
                "value": "11111111"
              }
            },
            "url": "http://minvws.github.io/generiekefuncties-docs/StructureDefinition/nl-gf-localization-custodian"
          }
        ],
        "subject": {
          "identifier": {
            "system": "http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier",
            "value": "eyJhbGciOiJub25lIiwidHlwIjoiSldUIn0.eyJldmFsdWF0ZWRfb3V0cHV0IjogIkpXRV9GUk9NX1BTRVVET05ZTUlTQVRJT05fU0VSVklDRSIsICJibGluZF9mYWN0b3IiOiJDTElFTlRfR0VORVJBVEVEX0JMSU5EX0ZBQ1RPUiIsImlhdCI6MTUxNjIzOTAyMn0."
          }
        },
        "source": {
          "identifier": {
            "system": "https://cp1-test.example.org/device-identifiers",
            "value": "EHR-SYS-2024-001"
          },
          "type": "Device"
        },
        "status": "current",
        "mode": "working",
        "emptyReason": {
          "coding": [
            {
              "code": "withheld",
              "system": "http://terminology.hl7.org/CodeSystem/list-empty-reason"
            }
          ]
        },
        "code": {
          "coding": [
            {
              "code": "MEDAFSPRAAK",
              "system": "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-zorgcontext-cs",
              "display": "Medicatieafspraak"
            }
          ]
        }
      }
    }
  ],
  "type": "transaction"
}
```

##### Search for Localization Records
The client SHALL support searching for List resources (localization records). This enables healthcare professionals to discover which organizations hold relevant patient data. The Localization Client SHALL support the following search parameters:

- **patient.identifier**: Search for localization records by pseudonymized patient identifier (BSN)
- **code**: Search for localization records by data type/category code
- **source.identifier**: Search for localization records registered by an application.  

Client SHALL either use the patient.identifier or source.identifier in a search.


**Example Search Query**:
```
GET [base]/List?patient.identifier=http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier|UHN1ZWRvYnNuOiA5OTk5NDAwMw==&code=LABBEPALING
```

The search operation returns a Bundle of type `searchset` containing matching List resources, allowing the client to identify which data holders have specific types of patient data.  
This response will not contain the (pseudomized) patient.identifier for privacy/security reasons.


##### OPRF Integration requirements

The Localization Client MUST implement the following requirements when interacting with the Pseudonymization Service:

**1. Prepare PRS Interaction**
- Prepare the patient's BSN in a structured JSON format with country code (e.g., "NL") and identifier value
- Construct context string: `{recipient_organization}|{recipient_scope}|{version}` (e.g., "URA-NVI|localization|v1")
- Apply HKDF-SHA256 to derive a pseudonym from the personal identifier (Parameters: SHA-256, 32 bytes, no salt, using context string as info ([RFC 5869](https://datatracker.ietf.org/doc/html/rfc5869)))
- Perform cryptographic blinding on the derived pseudonym to create (Both values base64 URL-safe encoded):
  - `blind_factor`: Retained for NVI processing
  - `blinded_input`: Sent to Pseudonymization Service (PRS)

**2. PRS Interaction**
- Send `blinded_input` to PRS
- Receive JWE (JSON Web Encryption) encrypted with NVI's public key
- Client cannot decrypt the JWE

**3. Localization Record Submission**
- construct `subject.identifier` as a jwt with the following claims:
  - evaluated_output: The JWE received from the Pseudonymization Service
  - blind_factor: The blind factor
  - iat: The timestamp of issuance
- Include the JWT as `subject.identifier.value`
- Submit to NVI for decryption and unblinding

Reference implementations: [OPRF.py](https://github.com/minvws/gfmodules-nationale-verwijsindex-registratie-service/blob/main/test_flow/OPRF.py)


### Data models

#### Localization record

Within GF-Localization the [NL-gf-localization-List profile](./StructureDefinition-nl-gf-localization-list.html) is used to register, search, and validate localization records ([NL-GF-IG, ADR#10](https://github.com/nuts-foundation/nl-generic-functions-ig/issues/10)).
This data model basically states ***"Care provider X has data of type Y for Patient Z"***. It contains the following elements:
- **Organization identifier**: The care provider identifier (URA) representing the data holder/custodian. This attribute is part of the 'Author assigned identifier'.
- **Patient identifier**: The NVI identifier to identify the patient in the NVI.
- **Code**: Represents type of data stored at the data holder/custodian.
- **Source identifier**: The identifier of the specific software installation (e.g., EHR deployment) that registered this localization record, using a `Device` reference with an identifier. 
- **emptyReason**: The `emptyReason` is set to withheld because this List signals the existence of data at a custodian, without enumerating the actual records. The List resource is used as a localization pointer, not as a container for document references

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
