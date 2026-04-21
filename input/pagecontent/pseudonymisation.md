### Introduction

Generic Function Pseudonymisation defines how a national Pseudonymization Register Service (PRS) is used to convert an identifier (e.g. a Burgerservicenummer, BSN) into a recipient-specific, single-use pseudonym. The goal is to allow generic functions such as [GF Localization](./localization.html) to exchange patient-bound information without ever revealing the underlying BSN to the receiving party (e.g. the Nationale Verwijs Index, NVI).

The PRS combines two cryptographic building blocks:

- an **HKDF** key derivation (RFC 5869) that produces a deterministic but recipient-scoped pseudonym from an `Identifier`;
- an **Oblivious Pseudorandom Function (OPRF)** that lets the client blind its input so the PRS can evaluate it without learning the value.

The PRS returns the evaluation result encrypted as a JWE for the intended recipient. The client never sees the cleartext pseudonym; the recipient never sees the BSN.

### Solution overview

The basic process for obtaining and using a pseudonym is:

1. The Pseudonymization Client constructs an `Identifier` for the patient (e.g. `{landCode: NL, type: BSN, value: 123456789}`).
2. The client derives a recipient-scoped pseudonym from the `Identifier` using HKDF, using a fixed `info` string that binds the result to the intended recipient.
3. The client applies the OPRF blinding step, producing a `blind_factor` (kept locally) and a `blinded_input` (sent to the PRS).
4. The PRS evaluates the `blinded_input` and returns the result as a JWE (`evaluated_output`) encrypted with the public key of the intended recipient.
5. The client forwards the `evaluated_output` together with the `blind_factor` (a.k.a. `oprf_key`) to the recipient as part of a downstream transaction (for example, a [GF Localization](./localization.html) registration or query).
6. The recipient decrypts the JWE with its own private key and de-blinds it with the `blind_factor` to obtain the final, stable pseudonym for that recipient.

{% include pseudonymisation-overview.svg %}

For more background on how the result is consumed, see [GF Localization](./localization.html).

### National choices

This guide makes the following national choices for pseudonymisation:

1. **Single national PRS.** All generic functions that need to exchange patient-bound information rely on the same national Pseudonymization Register Service. Recipients (such as the NVI) do not operate their own pseudonymisation infrastructure.
2. **OPRF + HKDF.** Pseudonyms are derived using HKDF with SHA-256 ([RFC 5869](https://www.rfc-editor.org/rfc/rfc5869)) and blinded using an OPRF protocol. The PRS only ever sees blinded values.
3. **Recipient-scoped pseudonyms.** A pseudonym is bound to one specific recipient and scope at derivation time (encoded in the HKDF `info` string). The same identifier therefore yields different pseudonyms for different recipients, preventing cross-service correlation.
4. **JWE container, single use.** The PRS response is a JWE, opaque to the client, intended for one-time use in a single downstream transaction. Clients SHALL NOT cache or persist the JWE beyond the transaction it was obtained for.
5. **No identifier persistence at PRS.** The PRS does not store identifiers, pseudonyms or links between them.

### Actors

#### Pseudonymization Service (PRS)

The PRS is the central national service that evaluates blinded inputs and returns a recipient-encrypted JWE. The PRS:

- MUST validate the structure of incoming `blinded_input` values;
- MUST evaluate the OPRF using a key bound to the declared `recipient_organization` and `recipient_scope`;
- MUST encrypt the evaluation result as a JWE using the recipient's published public key;
- MUST NOT persist the input, the output, or any link between them.



#### Pseudonymization Client

A Pseudonymization Client is typically embedded in or alongside an EHR, PACS, or another generic-function client (e.g. a [Localization Client](./localization.html#localization-client)). The client:

- SHALL construct the `Identifier` from authoritative source data (e.g. the patient's BSN held in the EHR);
- SHALL derive the pseudonym using HKDF with the agreed `info` string for the intended recipient and scope;
- SHALL perform the OPRF blinding locally and keep the `blind_factor` confidential;
- SHALL submit only the `blinded_input` (and the recipient identifiers) to the PRS;
- SHALL forward the resulting JWE together with the `blind_factor` to the recipient as part of a single downstream transaction;
- SHALL NOT log or persist the `Identifier`, the derived pseudonym, or the `blind_factor` beyond the lifetime of the transaction.

#### Recipient

The Recipient (for example, the [NVI](./localization.html#localization-service)) is the party for which the pseudonym is intended. The Recipient:

- MUST publish a public key that the PRS can use to encrypt the JWE;
- MUST decrypt the JWE with the corresponding private key;
- MUST de-blind the result using the `blind_factor` provided by the client to obtain the stable, recipient-specific pseudonym;
- SHALL use the resulting pseudonym only as a lookup key for its own data and SHALL NOT attempt to correlate it with pseudonyms intended for other recipients.

### Transactions

The PRS exposes a single logical transaction: evaluate a blinded input.

#### Evaluate blinded input

The client POSTs the `blinded_input` together with identifiers for the intended recipient to the PRS:

```
POST /evaluate HTTP/1.1
Host: <prs-base-url>
Authorization: Bearer <oauth-token-with-scope-prs:read>
Content-Type: application/json

{
  "blinded_input": "<base64url-encoded blinded_input>",
  "recipient_organization": "ura:90000901",
  "recipient_scope": "nationale-verwijsindex"
}
```

A successful response carries the OPRF evaluation as a JWE encrypted to the recipient's public key:

```
HTTP/1.1 200 OK
Content-Type: application/json

{
  "evaluated_output": "<JWE compact serialization>"
}
```

The pair `(evaluated_output, blind_factor)` together forms the patient identifier that is passed to the recipient. Downstream services that consume this identifier (e.g. the NVI) typically expect it as a base64url-encoded JSON object using the naming system `http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier`; see [GF Localization](./localization.html#localization-record) for the exact representation in a `List` resource.

#### Endpoints

| DTAP-environment | Base URL | Authorization documentation | API documentation |
|---|---|---|---|
| Test | https://pseudoniemendienst.proeftuin.gf.irealisatie.nl | [Aansluitdocument-iRealisatie-proeftuin-v0.10.pdf](Aansluitdocument-iRealisatie-proeftuin-v0.10.pdf) | [/docs](https://pseudoniemendienst.proeftuin.gf.irealisatie.nl/docs) |
| Acceptance | n/a | n/a |
| Production | n/a | n/a |


### Data model

#### Identifier (PID)

The PID is a small JSON object that uniquely identifies the natural person being pseudonymised. For Dutch patients identified by their BSN:

```json
{
  "landCode": "NL",
  "type": "BSN",
  "value": "999940003"
}
```

The PID is never sent to the PRS; it is the input to the local HKDF step.

#### HKDF derivation

The pseudonym handed to OPRF is derived as:

- algorithm: HMAC-SHA-256
- length: 32 bytes
- salt: none
- info: `"{recipient_organization}|{recipient_scope}|v1"`
- input keying material: the UTF-8 JSON serialisation of the PID.

The `info` string binds the resulting pseudonym to one specific recipient and scope, so the same identifier deterministically yields a different pseudonym per recipient.

#### OPRF blinding

The 32-byte HKDF output is then blinded with the OPRF, yielding two values:

- `blind_factor` — a secret kept by the client and later used by the recipient to de-blind the PRS response;
- `blinded_input` — the value sent to the PRS for evaluation.

Both values are exchanged base64url-encoded.

#### JWE container

The PRS response is a JWE compact serialization (per the Logius BSNk v2 specification) encrypted to the recipient's public key. The JWE is opaque to the client and is intended for one-time use in a single downstream transaction.

#### Combined patient identifier

When the pseudonym is forwarded to a downstream service, the client packages the JWE and `blind_factor` together. For the NVI this takes the form of a base64url-encoded JSON object:

```json
{
  "evaluated_output": "<JWE compact serialization>",
  "blind_factor": "<base64url-encoded blind_factor>"
}
```

This object is then used in the `subject.identifier` element when interacting with, for example, the NVI (using the system `http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier`).

### Reference implementation

The following snippet (adapted from the reference implementation `OPRF.py`) shows the client-side HKDF and OPRF steps:

```python
import base64
import json
from cryptography.hazmat.primitives import hashes
from cryptography.hazmat.primitives.kdf.hkdf import HKDF
import pyoprf

def create_blinded_input(personal_identifier, recipient_organization, recipient_scope):
    info = f"{recipient_organization}|{recipient_scope}|v1".encode("utf-8")
    pid = json.dumps(personal_identifier).encode("utf-8")

    pseudonym = HKDF(
        algorithm=hashes.SHA256(), length=32, salt=None, info=info
    ).derive(pid)

    blind_factor, blinded_input = pyoprf.blind(pseudonym)

    return (
        base64.urlsafe_b64encode(blind_factor).decode(),
        base64.urlsafe_b64encode(blinded_input).decode(),
    )
```

A full reference flow including the call to the PRS is available in the [`gfmodules-nationale-verwijsindex-registratie-service` repository](https://github.com/minvws/gfmodules-nationale-verwijsindex-registratie-service/blob/main/test_flow/OPRF.py).

### Example use cases

#### Use case: preparing a Localization registration

A care provider's Localization Client needs to register the existence of patient data at the NVI (see the [Radiologist registration use case](./localization.html#use-case-radiologist-registering-imaging-data)). Before submitting the `List` resource it:

1. builds the `Identifier` from the patient's BSN;
2. derives the HKDF pseudonym using `recipient_organization = "ura:<NVI URA>"` and `recipient_scope = "nationale-verwijsindex"`;
3. blinds it with the OPRF and obtains `(blind_factor, blinded_input)`;
4. calls `POST /evaluate` on the PRS to obtain the JWE;
5. encodes `(evaluated_output, blind_factor)` as the NVI patient identifier and places it in `List.subject.identifier`;
6. POSTs the transaction Bundle to the NVI.

#### Use case: preparing a Localization query

A consulting practitioner's client wants to discover which organisations hold data for a patient. The pseudonym is computed in exactly the same way as for registration, but the resulting NVI patient identifier is used as the value of the `subject:identifier` search parameter on `GET [base]/List` (see [Localization](./localization.html#search-for-localization-records)). Because pseudonyms are deterministic for a given recipient and scope, the value will match the pseudonyms used by the registering parties.

### Roadmap for GF Pseudonymisation

Potential future enhancements include:

- alignment/mapping of identifiers used in the PRS (e.g. `{landCode: NL, type: BSN, value: 123456789}`) and in healthcare information models (e.g. `{system: http://fhir.nl/fhir/NamingSystem/bsn, value: 123456789}`) 
- adding a profile for input-validation in the Pseudonymization-client, specifying identifier-types, (recipient-) organization-identifiers and recipient scopes.
