### Introduction

This page explains how to create and verify a **FHIR digital signature** for a mutation submitted to the LRZa Directory, by worked example. Signing is optional (see the [Mutation signing (optional)](care-services.html#mutation-signing-optional) and the [Provenance](care-services.html#provenance) entity); this page shows *how* to produce a correct signature when a party chooses to sign.

The mechanism follows the FHIR [Digital Signatures](https://build.fhir.org/signatures.html) specification: a *detached* [JSON Web Signature (JWS, RFC 7515)](https://tools.ietf.org/html/rfc7515) computed over the **canonical JSON** form of the signed resource.

Key choices in this Implementation Guide:

- **What is signed:** a single mutated resource (here an `OrganizationAffiliation` mandate), not a Bundle.
- **Canonicalization:** `http://hl7.org/fhir/canonicalization/json#static` — the FHIR *static* JSON canonicalization. This recursively removes `Resource.meta` and every narrative (`.text`) element, and then applies the [JSON Canonicalization Scheme (JCS), RFC 8785](https://www.rfc-editor.org/rfc/rfc8785). Removing `meta` makes the signature robust as the resource moves from the LRZa Directory to replicas (where `meta.versionId`, `meta.lastUpdated` and tags differ).
- **Signature carrier:** a `Provenance` resource whose `signature.data` holds the base64 of the detached JWS.
- **Algorithm:** `RS256` (RSASSA-PKCS1-v1_5 with SHA-256), matching the example RSA key below. Any JWA algorithm agreed in the trust framework MAY be used.

### Worked example

The signed resource is the mandate [OrganizationAffiliation "Organization 2 authorizes ExampleSoft"](OrganizationAffiliation-c5d6c9d6-7562-589e-9b34-c20a3488daa1.html); the resulting signature is carried by [Provenance b7d9e2a1-4c3f-5a6b-8e0d-1f2a3b4c5d6e](Provenance-b7d9e2a1-4c3f-5a6b-8e0d-1f2a3b4c5d6e.html).

#### Preconditions

Before the steps below can be carried out, the following preconditions SHALL be met:

- **Stored resource available.** The resource to be signed (the `OrganizationAffiliation` mandate) has been successfully created/updated and is available in its exact stored form.
- **Signing key and certificate.** The signer holds a private key and a matching X.509 certificate. The certificate is valid (not expired or revoked), is issued under a trust anchor accepted by the trust framework (e.g. UZI or PKIoverheid), and its key usage permits digital signatures.
- **Identity binding.** The certificate carries a Subject Alternative Name (SAN) that identifies the signer with an identifier (here the URA `22222222` in its OID‑URN form `urn:oid:2.16.528.1.1007.3.3.22222222`) that is also recorded in `Signature.who`/`agent.who` of the Provenance.
- **Tooling.** A JCS (RFC 8785) canonicalizer and a JWS (RFC 7515) implementation are available to both signer and verifier.

#### Step 1 — Start with the stored resource

Take the resource exactly as stored by the LRZa Directory after the create/update completed:

```json
{
  "resourceType": "OrganizationAffiliation",
  "id": "c5d6c9d6-7562-589e-9b34-c20a3488daa1",
  "meta": {
    "profile": [
      "http://minvws.github.io/generiekefuncties-docs/StructureDefinition/nl-gf-organizationaffiliation"
    ]
  },
  "identifier": [
    {
      "assigner": {
        "identifier": {
          "system": "http://fhir.nl/fhir/NamingSystem/ura",
          "value": "22222222",
          "type": { "coding": [ { "code": "custodian", "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type" } ] }
        }
      },
      "system": "urn:ietf:rfc:3986",
      "value": "urn:uuid:6a41ef31-c95a-4894-a6ef-4c39d8ea3e2a",
      "use": "official"
    }
  ],
  "participatingOrganization": {
    "identifier": {
      "system": "http://fhir.nl/fhir/NamingSystem/kvk",
      "value": "90001234"
    },
    "display": "ExampleSoft B.V."
  },
  "code": [
    { "coding": [ { "code": "lrza-careprovider-admin", "system": "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-authorization-type-cs", "display": "LRZa Care Provider Administration" } ] }
  ],
  "active": true,
  "organization": { "reference": "Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8" }
}
```

#### Step 2 — Strip the elements excluded by `#static`

For canonicalization `#static`, recursively remove every `Resource.meta` and every narrative (`.text`). In this resource there is no narrative, so only `meta` is removed. Everything else — including `id` and references to other resources — is retained and signed.

#### Step 3 — Apply the canonicalization (RFC 8785 / JCS)

Canonicalize the stripped resource with the [JSON Canonicalization Scheme (RFC 8785)](https://www.rfc-editor.org/rfc/rfc8785). Object keys are sorted, insignificant whitespace is removed, and strings/numbers are serialized deterministically. You can reproduce this with any JCS implementation, e.g. the online [JSON Canonicalizer](https://toolsbase.dev/en/developer/json-canonicalizer). The canonical form (a single line, shown wrapped here) is:

```json
{"active":true,"code":[{"coding":[{"code":"lrza-careprovider-admin","display":"LRZa Care Provider Administration","system":"http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-authorization-type-cs"}]}],"id":"c5d6c9d6-7562-589e-9b34-c20a3488daa1","identifier":[{"assigner":{"identifier":{"system":"http://fhir.nl/fhir/NamingSystem/ura","type":{"coding":[{"code":"custodian","system":"http://terminology.hl7.org/CodeSystem/provenance-participant-type"}]},"value":"22222222"}},"system":"urn:ietf:rfc:3986","use":"official","value":"urn:uuid:6a41ef31-c95a-4894-a6ef-4c39d8ea3e2a"}],"organization":{"reference":"Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8"},"participatingOrganization":{"display":"ExampleSoft B.V.","identifier":{"system":"http://fhir.nl/fhir/NamingSystem/kvk","value":"90001234"}},"resourceType":"OrganizationAffiliation"}
```

This canonical text is the JWS **payload**.

#### Step 4 — Sign with the private key (detached JWS)

The signer is, for this OrganizationAffiliation, the care provider (Organization 2), using its certificate's private key. For this worked example we use the following **published developmental RSA 2048 key** — it is a test key only and SHALL NOT be used in production:

```
-----BEGIN PRIVATE KEY-----
MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCm0pnIU9K2+Y6VvRaKE4GGUdSv
rAUMcL61buEkC519NDmYdlCkHw+gzPTu51kD50bx2FQg+SZeWnVOBER5hMd2HGG5/TL8aFulm/kk
9gfHfBq074dY7apiSNEwRytaE8x1pWRL9d7+WJoxyjDiNihZoWbxWht5izJUPZtZZ3KXiOhMQROb
VnjtGed9HXmRWFW51WsPMQWYziddX/p2YiDXzhEkTiG23AEXFHypkJALBOImayjInF9RHQazh48p
zmwHQ1OSYVlzmSVBKK13rtEmfaV2FuoTsSkOXheUi35TIsmbWC4IGW2JrwCCR7t1e6GkHuFDosnB
jgSPO2GQnwg/AgMBAAECggEAKT6KTNAEmb5rdTPxvaOC832J0wD5opDBZcQLH8lLX6go0Tv3Rgxz
5bKmn+ZMyL1GegadDiXrSYqd0/MUJuMgGWB8/OnP0D3Q4soEOBIn7DcPt0o9MUxZQsF0DraZzkR0
2WVRvcIFJucrAEJYAaWYJkjUVbmMb2ltwQwWO21rFHGbpE73nsfr/oAWsZEvKsQZoYm4fh5jVI5+
wKyRnKaN1uqAcNgj75cdywCHBVwgEefEgOPM77CDMH0+JumSirQiBfR35+HWRwHwpm09wI6Aqtvg
y5bzxvLDDRgrhX4LCPtUHGrUXNJHRKYiHQX6P6bIVuBrHV6VFpyS+5weu0w6kQKBgQDQo4QeLtO7
S3KH8UL3lX4lhH1K7/Q99uBHmvLXdiDkHjLbBbh0JfrHgHtnK9bvJ2GvVcwhI9fTiO1p1o5RM5jb
iVUSCS91sLcTPFv8X83sExBZnrvlSlb/va+4yW+Lzvr6ZiDlZYsVRNvNAHUTojHRCOH2P4eX1+ql
5P4FMdfvSQKBgQDMsQ4LBpxjD9KdDzJzw9a0xbL47QdCeZBqNUy6MvwLE0+KsF+prvoigNZCaTcJ
2FfoPxpE3/o0A/byCTuDkfddrd/hcAO0gd1R9CYJDXJfnIbZfheUmHW7ShbXyqhpqQKVjzH+jnLq
VjbGD6tz3dN+AwNgULD/vvwXM2TWpu9TRwKBgGkPPdMZD2NLzaNouKkFbR0lRxY6GEovi6Zi/w/C
GzPjhQZHLifGjC5zozBDohqRQR5SXNT/QInzdGGMOePn0HwT/nNzjqN71eRoy4UdFQtgWiZWyRTf
x0lGUjsBrBrBoh3+2WfKJywRnYDwTwQQ83boOyiNuxCaGD1rPwKMo8iJAoGAPIePE4uc615edbts
u/cJouNjjWDqaKnyHrYsPlOdXNkVCHonj9ICffmDYpgignLLbA5dAkkJgCA8Ak7gnoOnlrg4ID4z
mklc3UNJjBvB2qw65E35QyPijMPYBXAUZUppTTjPG+ub59ge0msH1Hegdv8FHJJABSDBA0tbYm5z
DzkCgYA9/0KtWKFMhF3v01L54AXF5b15RroBhZAfzI1U0wPO4J6Tz+1KqmtrwHTBPI36nzITIhlM
hcoTsMRMgnv0NHzxlcQQmAy3foFBFOyHXql3hPtWbEViB5jQs4cP5ts1oivVhrEtrrE51TG4V/Ef
fD1JKiHl7MECYEMyBz31PsRCuw==
-----END PRIVATE KEY-----
```

The signer's **certificate** (whose public key matches the key above) carries a **Subject Alternative Name (SAN)** that identifies the care provider: the URI `urn:oid:2.16.528.1.1007.3.3.22222222`, which is the OID‑URN form of URA `22222222` (Organization 2). The base64 DER of this certificate goes into the JWS `x5c` header, and the same identifier is recorded in `agent.who.identifier`, so a verifier can bind the cryptographic signer to the FHIR resource:

```
-----BEGIN CERTIFICATE-----
MIIDdjCCAl6gAwIBAgIGAXQvSnr8MA0GCSqGSIb3DQEBCwUAMDgxNjA0BgNVBAMM
LVRlc3QgY2VydGlmaWNhdGUgbWF0Y2hpbmcgcjIwNDhwcml2YXRla2V5LnBlbTAe
Fw0yNjA3MTQxMzA1MjJaFw0zNzA3MTQxMzA1MjJaMDgxNjA0BgNVBAMMLVRlc3Qg
Y2VydGlmaWNhdGUgbWF0Y2hpbmcgcjIwNDhwcml2YXRla2V5LnBlbTCCASIwDQYJ
KoZIhvcNAQEBBQADggEPADCCAQoCggEBAKbSmchT0rb5jpW9FooTgYZR1K+sBQxw
vrVu4SQLnX00OZh2UKQfD6DM9O7nWQPnRvHYVCD5Jl5adU4ERHmEx3YcYbn9Mvxo
W6Wb+ST2B8d8GrTvh1jtqmJI0TBHK1oTzHWlZEv13v5YmjHKMOI2KFmhZvFaG3mL
MlQ9m1lncpeI6ExBE5tWeO0Z530deZFYVbnVaw8xBZjOJ11f+nZiINfOESROIbbc
ARcUfKmQkAsE4iZrKMicX1EdBrOHjynObAdDU5JhWXOZJUEorXeu0SZ9pXYW6hOx
KQ5eF5SLflMiyZtYLggZbYmvAIJHu3V7oaQe4UOiycGOBI87YZCfCD8CAwEAAaOB
hTCBgjAdBgNVHQ4EFgQU68unI5uJMko9US4//OoqtmLDNP4wHwYDVR0jBBgwFoAU
68unI5uJMko9US4//OoqtmLDNP4wDwYDVR0TAQH/BAUwAwEB/zAvBgNVHREEKDAm
hiR1cm46b2lkOjIuMTYuNTI4LjEuMTAwNy4zLjMuMjIyMjIyMjIwDQYJKoZIhvcN
AQELBQADggEBABxjyCCZbBXZVUPBVJUc5Q6mH2XsH1qW6vqNAuTGJb4aiV1+D0Lj
w3jmxrq7dzO+CPpAxaLYrv/+d2yT6pufNQx+Yfx2129l0tfHb9admzqvKdjKs1Uj
DFAgqyAQ3bMRtn1mu13tZqNEnHZgPEyefX7OpnDgDLnzoGi7s74P96XiuDxy0Bqt
CPzi4LM7UHw4EYOmoA/rwH76JfJSPa5ZA4x8z9jba9/S+MPy1G1uPmHAVCZToCmM
ysbHKza/Ut/kXTRgRSzllo7/+4XI4K2PRwUdGSnbrNmabvd5k2jkufTtrxSQZEIh
VOHT8E5eDk1K6F5ILXN9NgzmM8acw2EyHYg=
-----END CERTIFICATE-----
```

Build the JWS:

1. **Prepare the JWS protected header.** `alg = RS256`; the canonicalization is recorded in the `canon` header, the signing time in `sigT`, and the signature purpose in `srCms` (which SHALL agree with `Signature.type`), and `x5c` — the base64 DER of the certificate above, from which the verifier obtains the public key (a `kid` MAY be used instead). The line below is the exact header serialization that is base64url‑encoded (the long `x5c` value is the certificate DER):

   ```json
   {"alg":"RS256","typ":"JOSE","canon":"http://hl7.org/fhir/canonicalization/json#static","sigT":"2026-07-14T10:15:00Z","srCms":[{"commId":{"id":"urn:oid:1.2.840.10065.1.12.1.1","desc":"Author's Signature"}}],"x5c":["MIIDdjCCAl6gAwIBAgIGAXQvSnr8MA0GCSqGSIb3DQEBCwUAMDgxNjA0BgNVBAMMLVRlc3QgY2VydGlmaWNhdGUgbWF0Y2hpbmcgcjIwNDhwcml2YXRla2V5LnBlbTAeFw0yNjA3MTQxMzA1MjJaFw0zNzA3MTQxMzA1MjJaMDgxNjA0BgNVBAMMLVRlc3QgY2VydGlmaWNhdGUgbWF0Y2hpbmcgcjIwNDhwcml2YXRla2V5LnBlbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKbSmchT0rb5jpW9FooTgYZR1K+sBQxwvrVu4SQLnX00OZh2UKQfD6DM9O7nWQPnRvHYVCD5Jl5adU4ERHmEx3YcYbn9MvxoW6Wb+ST2B8d8GrTvh1jtqmJI0TBHK1oTzHWlZEv13v5YmjHKMOI2KFmhZvFaG3mLMlQ9m1lncpeI6ExBE5tWeO0Z530deZFYVbnVaw8xBZjOJ11f+nZiINfOESROIbbcARcUfKmQkAsE4iZrKMicX1EdBrOHjynObAdDU5JhWXOZJUEorXeu0SZ9pXYW6hOxKQ5eF5SLflMiyZtYLggZbYmvAIJHu3V7oaQe4UOiycGOBI87YZCfCD8CAwEAAaOBhTCBgjAdBgNVHQ4EFgQU68unI5uJMko9US4//OoqtmLDNP4wHwYDVR0jBBgwFoAU68unI5uJMko9US4//OoqtmLDNP4wDwYDVR0TAQH/BAUwAwEB/zAvBgNVHREEKDAmhiR1cm46b2lkOjIuMTYuNTI4LjEuMTAwNy4zLjMuMjIyMjIyMjIwDQYJKoZIhvcNAQELBQADggEBABxjyCCZbBXZVUPBVJUc5Q6mH2XsH1qW6vqNAuTGJb4aiV1+D0Ljw3jmxrq7dzO+CPpAxaLYrv/+d2yT6pufNQx+Yfx2129l0tfHb9admzqvKdjKs1UjDFAgqyAQ3bMRtn1mu13tZqNEnHZgPEyefX7OpnDgDLnzoGi7s74P96XiuDxy0BqtCPzi4LM7UHw4EYOmoA/rwH76JfJSPa5ZA4x8z9jba9/S+MPy1G1uPmHAVCZToCmMysbHKza/Ut/kXTRgRSzllo7/+4XI4K2PRwUdGSnbrNmabvd5k2jkufTtrxSQZEIhVOHT8E5eDk1K6F5ILXN9NgzmM8acw2EyHYg="]}
   ```

2. **base64url‑encode** the header and the canonical payload from step 3, and join them with a `.`:  `BASE64URL(header) + "." + BASE64URL(payload)`.
3. **Sign** that `header.payload` string with `RS256` (RSASSA-PKCS1-v1_5 over SHA-256).
4. **Detach** the payload — replace it with an empty string, giving the compact detached JWS `header..signature`:

   ```
   eyJhbGciOiJSUzI1NiIsInR5cCI6IkpPU0UiLCJjYW5vbiI6Imh0dHA6Ly9obDcub3JnL2ZoaXIvY2Fub25pY2FsaXphdGlvbi9qc29uI3N0YXRpYyIsInNpZ1QiOiIyMDI2LTA3LTE0VDEwOjE1OjAwWiIsInNyQ21zIjpbeyJjb21tSWQiOnsiaWQiOiJ1cm46b2lkOjEuMi44NDAuMTAwNjUuMS4xMi4xLjEiLCJkZXNjIjoiQXV0aG9yJ3MgU2lnbmF0dXJlIn19XSwieDVjIjpbIk1JSURkakNDQWw2Z0F3SUJBZ0lHQVhRdlNucjhNQTBHQ1NxR1NJYjNEUUVCQ3dVQU1EZ3hOakEwQmdOVkJBTU1MVlJsYzNRZ1kyVnlkR2xtYVdOaGRHVWdiV0YwWTJocGJtY2djakl3TkRod2NtbDJZWFJsYTJWNUxuQmxiVEFlRncweU5qQTNNVFF4TXpBMU1qSmFGdzB6TnpBM01UUXhNekExTWpKYU1EZ3hOakEwQmdOVkJBTU1MVlJsYzNRZ1kyVnlkR2xtYVdOaGRHVWdiV0YwWTJocGJtY2djakl3TkRod2NtbDJZWFJsYTJWNUxuQmxiVENDQVNJd0RRWUpLb1pJaHZjTkFRRUJCUUFEZ2dFUEFEQ0NBUW9DZ2dFQkFLYlNtY2hUMHJiNWpwVzlGb29UZ1laUjFLK3NCUXh3dnJWdTRTUUxuWDAwT1poMlVLUWZENkRNOU83bldRUG5SdkhZVkNENUpsNWFkVTRFUkhtRXgzWWNZYm45TXZ4b1c2V2IrU1QyQjhkOEdyVHZoMWp0cW1KSTBUQkhLMW9UekhXbFpFdjEzdjVZbWpIS01PSTJLRm1oWnZGYUczbUxNbFE5bTFsbmNwZUk2RXhCRTV0V2VPMFo1MzBkZVpGWVZiblZhdzh4QlpqT0oxMWYrblppSU5mT0VTUk9JYmJjQVJjVWZLbVFrQXNFNGlacktNaWNYMUVkQnJPSGp5bk9iQWREVTVKaFdYT1pKVUVvclhldTBTWjlwWFlXNmhPeEtRNWVGNVNMZmxNaXladFlMZ2daYlltdkFJSkh1M1Y3b2FRZTRVT2l5Y0dPQkk4N1laQ2ZDRDhDQXdFQUFhT0JoVENCZ2pBZEJnTlZIUTRFRmdRVTY4dW5JNXVKTWtvOVVTNC8vT29xdG1MRE5QNHdId1lEVlIwakJCZ3dGb0FVNjh1bkk1dUpNa285VVM0Ly9Pb3F0bUxETlA0d0R3WURWUjBUQVFIL0JBVXdBd0VCL3pBdkJnTlZIUkVFS0RBbWhpUjFjbTQ2YjJsa09qSXVNVFl1TlRJNExqRXVNVEF3Tnk0ekxqTXVNakl5TWpJeU1qSXdEUVlKS29aSWh2Y05BUUVMQlFBRGdnRUJBQnhqeUNDWmJCWFpWVVBCVkpVYzVRNm1IMlhzSDFxVzZ2cU5BdVRHSmI0YWlWMStEMExqdzNqbXhycTdkek8rQ1BwQXhhTFlydi8rZDJ5VDZwdWZOUXgrWWZ4MjEyOWwwdGZIYjlhZG16cXZLZGpLczFVakRGQWdxeUFRM2JNUnRuMW11MTN0WnFORW5IWmdQRXllZlg3T3BuRGdETG56b0dpN3M3NFA5NlhpdUR4eTBCcXRDUHppNExNN1VIdzRFWU9tb0EvcndINzZKZkpTUGE1WkE0eDh6OWpiYTkvUytNUHkxRzF1UG1IQVZDWlRvQ21NeXNiSEt6YS9VdC9rWFRSZ1JTemxsbzcvKzRYSTRLMlBSd1VkR1NuYnJObWFidmQ1azJqa3VmVHRyeFNRWkVJaFZPSFQ4RTVlRGsxSzZGNUlMWE45Tmd6bU04YWN3MkV5SFlnPSJdfQ..EZEsnaJ4BP-PZN1SZPNbdwWPs2llnAXdynIDNOQQG9x3LbxwR-qDuHPcMdUrU5ikDUZJlPyxEc83Juodxj8KRhEPRp5eJEBiXu5NefQDonXf7sue3WoQUuMu-lBhHnF0C3oCg2Ry2UFwIVenxE-M9xkbUtYQ1Ui4cnRQFtR3swVyUkp7XPqjGvuJg_2AUjn5U4jecN5zVC9IQ51rtaRUGHiSEyzTRkzqyJcseakK3EZMbcubrS06Jf_1Kb1mxl9vOBLdaTUXq_idQ9GvNucY6Ajy6hCKjMc0a9N2oBlFsGdt9sYXtvCaWeguoL8ApEFLTz4uPmRPAmjtWE76gz9eaA
   ```

#### Step 5 — base64‑encode the JWS into `Signature.data`

`Signature.data` is `base64Binary`, so the compact detached JWS (which itself uses base64url) is base64‑encoded once more (this double‑encoding is required by the FHIR JSON signature rules). The result is the `signature.data` value placed in the Provenance:

```
ZXlKaGJHY2lPaUpTVXpJMU5pSXNJblI1Y0NJNklrcFBVMFVpTENKallXNXZiaUk2SW1oMGRIQTZMeTlvYkRjdWIzSm5MMlpvYVhJdlkyRnViMjVwWTJGc2FYcGhkR2x2Ymk5cWMyOXVJM04wWVhScFl5SXNJbk5wWjFRaU9pSXlNREkyTFRBM0xURTBWREV3T2pFMU9qQXdXaUlzSW5OeVEyMXpJanBiZXlKamIyMXRTV1FpT25zaWFXUWlPaUoxY200NmIybGtPakV1TWk0NE5EQXVNVEF3TmpVdU1TNHhNaTR4TGpFaUxDSmtaWE5qSWpvaVFYVjBhRzl5SjNNZ1UybG5ibUYwZFhKbEluMTlYU3dpZURWaklqcGJJazFKU1VSa2FrTkRRV3cyWjBGM1NVSkJaMGxIUVZoUmRsTnVjamhOUVRCSFExTnhSMU5KWWpORVVVVkNRM2RWUVUxRVozaE9ha0V3UW1kT1ZrSkJUVTFNVmxKc1l6TlJaMWt5Vm5sa1IyeHRZVmRPYUdSSFZXZGlWMFl3V1RKb2NHSnRZMmRqYWtsM1RrUm9kMk50YkRKWldGSnNZVEpXTlV4dVFteGlWRUZsUm5jd2VVNXFRVE5OVkZGNFRYcEJNVTFxU21GR2R6QjZUbnBCTTAxVVVYaE5la0V4VFdwS1lVMUVaM2hPYWtFd1FtZE9Wa0pCVFUxTVZsSnNZek5SWjFreVZubGtSMnh0WVZkT2FHUkhWV2RpVjBZd1dUSm9jR0p0WTJkamFrbDNUa1JvZDJOdGJESlpXRkpzWVRKV05VeHVRbXhpVkVORFFWTkpkMFJSV1VwTGIxcEphSFpqVGtGUlJVSkNVVUZFWjJkRlVFRkVRME5CVVc5RFoyZEZRa0ZMWWxOdFkyaFVNSEppTldwd1Z6bEdiMjlVWjFsYVVqRkxLM05DVVhoM2RuSldkVFJUVVV4dVdEQXdUMXBvTWxWTFVXWkVOa1JOT1U4M2JsZFJVRzVTZGtoWlZrTkVOVXBzTldGa1ZUUkZVa2h0UlhneldXTlpZbTQ1VFhaNGIxYzJWMklyVTFReVFqaGtPRWR5Vkhab01XcDBjVzFLU1RCVVFraExNVzlVZWtoWGJGcEZkakV6ZGpWWmJXcElTMDFQU1RKTFJtMW9XblpHWVVjemJVeE5iRkU1YlRGc2JtTndaVWsyUlhoQ1JUVjBWMlZQTUZvMU16QmtaVnBHV1ZaaWJsWmhkemg0UWxwcVQwb3hNV1lyYmxwcFNVNW1UMFZUVWs5SlltSmpRVkpqVldaTGJWRnJRWE5GTkdsYWNrdE5hV05ZTVVWa1FuSlBTR3A1Yms5aVFXUkVWVFZLYUZkWVQxcEtWVVZ2Y2xobGRUQlRXamx3V0ZsWE5taFBlRXRSTldWR05WTk1abXhOYVhsYWRGbE1aMmRhWWxsdGRrRkpTa2gxTTFZM2IyRlJaVFJWVDJsNVkwZFBRa2s0TjFsYVEyWkRSRGhEUVhkRlFVRmhUMEpvVkVOQ1oycEJaRUpuVGxaSVVUUkZSbWRSVlRZNGRXNUpOWFZLVFd0dk9WVlROQzh2VDI5eGRHMU1SRTVRTkhkSWQxbEVWbEl3YWtKQ1ozZEdiMEZWTmpoMWJrazFkVXBOYTI4NVZWTTBMeTlQYjNGMGJVeEVUbEEwZDBSM1dVUldVakJVUVZGSUwwSkJWWGRCZDBWQ0wzcEJka0puVGxaSVVrVkZTMFJCYldocFVqRmpiVFEyWWpKc2EwOXFTWFZOVkZsMVRsUkpORXhxUlhWTlZFRjNUbmswZWt4cVRYVk5ha2w1VFdwSmVVMXFTWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJRbmhxZVVORFdtSkNXRnBXVlZCQ1ZrcFZZelZSTm0xSU1saHpTREZ4VnpaMmNVNUJkVlJIU21JMFlXbFdNU3RFTUV4cWR6TnFiWGh5Y1Rka2VrOHJRMUJ3UVhoaFRGbHlkaThyWkRKNVZEWndkV1pPVVhncldXWjRNakV5T1d3d2RHWklZamxoWkcxNmNYWkxaR3BMY3pGVmFrUkdRV2R4ZVVGUk0ySk5VblJ1TVcxMU1UTjBXbkZPUlc1SVdtZFFSWGxsWmxnM1QzQnVSR2RFVEc1NmIwZHBOM00zTkZBNU5saHBkVVI0ZVRCQ2NYUkRVSHBwTkV4Tk4xVklkelJGV1U5dGIwRXZjbmRJTnpaS1prcFRVR0UxV2tFMGVEaDZPV3BpWVRrdlV5dE5VSGt4UnpGMVVHMUlRVlpEV2xSdlEyMU5lWE5pU0V0NllTOVZkQzlyV0ZSU1oxSlRlbXhzYnpjdkt6UllTVFJMTWxCU2QxVmtSMU51WW5KT2JXRmlkbVExYXpKcWEzVm1WSFJ5ZUZOUldrVkphRlpQU0ZRNFJUVmxSR3N4U3paR05VbE1XRTQ1VG1kNmJVMDRZV04zTWtWNVNGbG5QU0pkZlEuLkVaRXNuYUo0QlAtUFpOMVNaUE5iZHdXUHMybGxuQVhkeW5JRE5PUVFHOXgzTGJ4d1ItcUR1SFBjTWRVclU1aWtEVVpKbFB5eEVjODNKdW9keGo4S1JoRVBScDVlSkVCaVh1NU5lZlFEb25YZjdzdWUzV29RVXVNdS1sQmhIbkYwQzNvQ2cyUnkyVUZ3SVZlbnhFLU05eGtiVXRZUTFVaTRjblJRRnRSM3N3VnlVa3A3WFBxakd2dUpnXzJBVWpuNVU0amVjTjV6VkM5SVE1MXJ0YVJVR0hpU0V5elRSa3pxeUpjc2Vha0szRVpNYmN1YnJTMDZKZl8xS2IxbXhsOXZPQkxkYVRVWHFfaWRROUd2TnVjWTZBank2aENLak1jMGE5TjJvQmxGc0dkdDlzWVh0dkNhV2VndW9MOEFwRUZMVHo0dVBtUlBBbWp0V0U3Nmd6OWVhQQ==
```

#### Step 6 — Assemble the Provenance

The signature is carried by a `Provenance` that targets the signed resource. Per FHIR, `signature.type`, `signature.when` and `signature.who` mirror `agent.type`, `recorded` and `agent.who`. Show the resulting `Provenance` as JSON:

```json
{
  "resourceType": "Provenance",
  "id": "b7d9e2a1-4c3f-5a6b-8e0d-1f2a3b4c5d6e",
  "target": [
    {
      "reference": "OrganizationAffiliation/c5d6c9d6-7562-589e-9b34-c20a3488daa1"
    }
  ],
  "agent": [
    {
      "who": {
        "identifier": {
          "system": "urn:oid:2.16.528.1.1007.3.3",
          "value": "22222222"
        },
        "reference": "Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8"
      },
      "type": {
        "coding": [
          {
            "code": "author",
            "system": "http://terminology.hl7.org/CodeSystem/provenance-participant-type"
          }
        ]
      }
    }
  ],
  "signature": [
    {
      "type": [
        {
          "code": "1.2.840.10065.1.12.1.1",
          "system": "urn:iso-astm:E1762-95:2013",
          "display": "Author's Signature"
        }
      ],
      "who": {
        "identifier": {
          "system": "urn:oid:2.16.528.1.1007.3.3",
          "value": "22222222"
        },
        "reference": "Organization/ca56444f-f98c-5d9b-aad2-65a0729ac8f8"
      },
      "when": "2026-07-14T10:15:00Z",
      "targetFormat": "application/fhir+json;canonicalization=http://hl7.org/fhir/canonicalization/json#static",
      "sigFormat": "application/jose",
      "data": "ZXlKaGJHY2lPaUpTVXpJMU5pSXNJblI1Y0NJNklrcFBVMFVpTENKallXNXZiaUk2SW1oMGRIQTZMeTlvYkRjdWIzSm5MMlpvYVhJdlkyRnViMjVwWTJGc2FYcGhkR2x2Ymk5cWMyOXVJM04wWVhScFl5SXNJbk5wWjFRaU9pSXlNREkyTFRBM0xURTBWREV3T2pFMU9qQXdXaUlzSW5OeVEyMXpJanBiZXlKamIyMXRTV1FpT25zaWFXUWlPaUoxY200NmIybGtPakV1TWk0NE5EQXVNVEF3TmpVdU1TNHhNaTR4TGpFaUxDSmtaWE5qSWpvaVFYVjBhRzl5SjNNZ1UybG5ibUYwZFhKbEluMTlYU3dpZURWaklqcGJJazFKU1VSa2FrTkRRV3cyWjBGM1NVSkJaMGxIUVZoUmRsTnVjamhOUVRCSFExTnhSMU5KWWpORVVVVkNRM2RWUVUxRVozaE9ha0V3UW1kT1ZrSkJUVTFNVmxKc1l6TlJaMWt5Vm5sa1IyeHRZVmRPYUdSSFZXZGlWMFl3V1RKb2NHSnRZMmRqYWtsM1RrUm9kMk50YkRKWldGSnNZVEpXTlV4dVFteGlWRUZsUm5jd2VVNXFRVE5OVkZGNFRYcEJNVTFxU21GR2R6QjZUbnBCTTAxVVVYaE5la0V4VFdwS1lVMUVaM2hPYWtFd1FtZE9Wa0pCVFUxTVZsSnNZek5SWjFreVZubGtSMnh0WVZkT2FHUkhWV2RpVjBZd1dUSm9jR0p0WTJkamFrbDNUa1JvZDJOdGJESlpXRkpzWVRKV05VeHVRbXhpVkVORFFWTkpkMFJSV1VwTGIxcEphSFpqVGtGUlJVSkNVVUZFWjJkRlVFRkVRME5CVVc5RFoyZEZRa0ZMWWxOdFkyaFVNSEppTldwd1Z6bEdiMjlVWjFsYVVqRkxLM05DVVhoM2RuSldkVFJUVVV4dVdEQXdUMXBvTWxWTFVXWkVOa1JOT1U4M2JsZFJVRzVTZGtoWlZrTkVOVXBzTldGa1ZUUkZVa2h0UlhneldXTlpZbTQ1VFhaNGIxYzJWMklyVTFReVFqaGtPRWR5Vkhab01XcDBjVzFLU1RCVVFraExNVzlVZWtoWGJGcEZkakV6ZGpWWmJXcElTMDFQU1RKTFJtMW9XblpHWVVjemJVeE5iRkU1YlRGc2JtTndaVWsyUlhoQ1JUVjBWMlZQTUZvMU16QmtaVnBHV1ZaaWJsWmhkemg0UWxwcVQwb3hNV1lyYmxwcFNVNW1UMFZUVWs5SlltSmpRVkpqVldaTGJWRnJRWE5GTkdsYWNrdE5hV05ZTVVWa1FuSlBTR3A1Yms5aVFXUkVWVFZLYUZkWVQxcEtWVVZ2Y2xobGRUQlRXamx3V0ZsWE5taFBlRXRSTldWR05WTk1abXhOYVhsYWRGbE1aMmRhWWxsdGRrRkpTa2gxTTFZM2IyRlJaVFJWVDJsNVkwZFBRa2s0TjFsYVEyWkRSRGhEUVhkRlFVRmhUMEpvVkVOQ1oycEJaRUpuVGxaSVVUUkZSbWRSVlRZNGRXNUpOWFZLVFd0dk9WVlROQzh2VDI5eGRHMU1SRTVRTkhkSWQxbEVWbEl3YWtKQ1ozZEdiMEZWTmpoMWJrazFkVXBOYTI4NVZWTTBMeTlQYjNGMGJVeEVUbEEwZDBSM1dVUldVakJVUVZGSUwwSkJWWGRCZDBWQ0wzcEJka0puVGxaSVVrVkZTMFJCYldocFVqRmpiVFEyWWpKc2EwOXFTWFZOVkZsMVRsUkpORXhxUlhWTlZFRjNUbmswZWt4cVRYVk5ha2w1VFdwSmVVMXFTWGRFVVZsS1MyOWFTV2gyWTA1QlVVVk1RbEZCUkdkblJVSkJRbmhxZVVORFdtSkNXRnBXVlZCQ1ZrcFZZelZSTm0xSU1saHpTREZ4VnpaMmNVNUJkVlJIU21JMFlXbFdNU3RFTUV4cWR6TnFiWGh5Y1Rka2VrOHJRMUJ3UVhoaFRGbHlkaThyWkRKNVZEWndkV1pPVVhncldXWjRNakV5T1d3d2RHWklZamxoWkcxNmNYWkxaR3BMY3pGVmFrUkdRV2R4ZVVGUk0ySk5VblJ1TVcxMU1UTjBXbkZPUlc1SVdtZFFSWGxsWmxnM1QzQnVSR2RFVEc1NmIwZHBOM00zTkZBNU5saHBkVVI0ZVRCQ2NYUkRVSHBwTkV4Tk4xVklkelJGV1U5dGIwRXZjbmRJTnpaS1prcFRVR0UxV2tFMGVEaDZPV3BpWVRrdlV5dE5VSGt4UnpGMVVHMUlRVlpEV2xSdlEyMU5lWE5pU0V0NllTOVZkQzlyV0ZSU1oxSlRlbXhzYnpjdkt6UllTVFJMTWxCU2QxVmtSMU51WW5KT2JXRmlkbVExYXpKcWEzVm1WSFJ5ZUZOUldrVkphRlpQU0ZRNFJUVmxSR3N4U3paR05VbE1XRTQ1VG1kNmJVMDRZV04zTWtWNVNGbG5QU0pkZlEuLkVaRXNuYUo0QlAtUFpOMVNaUE5iZHdXUHMybGxuQVhkeW5JRE5PUVFHOXgzTGJ4d1ItcUR1SFBjTWRVclU1aWtEVVpKbFB5eEVjODNKdW9keGo4S1JoRVBScDVlSkVCaVh1NU5lZlFEb25YZjdzdWUzV29RVXVNdS1sQmhIbkYwQzNvQ2cyUnkyVUZ3SVZlbnhFLU05eGtiVXRZUTFVaTRjblJRRnRSM3N3VnlVa3A3WFBxakd2dUpnXzJBVWpuNVU0amVjTjV6VkM5SVE1MXJ0YVJVR0hpU0V5elRSa3pxeUpjc2Vha0szRVpNYmN1YnJTMDZKZl8xS2IxbXhsOXZPQkxkYVRVWHFfaWRROUd2TnVjWTZBank2aENLak1jMGE5TjJvQmxGc0dkdDlzWVh0dkNhV2VndW9MOEFwRUZMVHo0dVBtUlBBbWp0V0U3Nmd6OWVhQQ=="
    }
  ],
  "recorded": "2026-07-14T10:15:00Z"
}
```

Both `agent.who` and `signature.who` carry a `reference` to the Organization **and** an `identifier` (URA `22222222`, system `urn:oid:2.16.528.1.1007.3.3`). Its OID‑URN form `urn:oid:2.16.528.1.1007.3.3.22222222` equals the certificate's Subject Alternative Name, satisfying the FHIR rule that `Signature.who` SHALL contain an identifier that is also found in the X.509 certificate.

The rendered resource is [Provenance b7d9e2a1-4c3f-5a6b-8e0d-1f2a3b4c5d6e](Provenance-b7d9e2a1-4c3f-5a6b-8e0d-1f2a3b4c5d6e.html).

### Conformance to the FHIR JWS rules

The signature above is checked against the [JWS/JSON signature rules](https://build.fhir.org/signatures.html#JWS):

| FHIR JWS rule | Status | How it is met |
|---|---|---|
| `Signature.data` is the base64 of a compact-serialization JWS (double-encoded) | ✅ SHALL | `signature.data` = base64( `header..signature` ) |
| `sigFormat` = `application/jose` | ✅ SHOULD | populated |
| `targetFormat` populated with a canonicalization URL (`canon` header MAY also) | ✅ SHOULD | `application/fhir+json;canonicalization=…/json#static` **and** `canon` header agree |
| Detached signature, payload omitted | ✅ SHALL | JWS is `header..signature` (empty payload) |
| Signed across the canonical JSON form indicated by `targetFormat` | ✅ SHALL | RFC 8785 JCS after `#static` stripping |
| `Signature.who` present with a `reference`/`identifier` matching an identifier in the X.509 certificate | ✅ SHALL | `who.identifier` (URA 22222222) equals the certificate SAN `urn:oid:2.16.528.1.1007.3.3.22222222` |
| Protected header contains `kid` **or** `x5c` | ✅ SHALL | `x5c` = base64 DER of the certificate |
| `srCms` signer-commitment present; `Signature.type` from ASTM E1762-95(2013); the two agree | ✅ SHALL | `srCms.commId.id` = `urn:oid:1.2.840.10065.1.12.1.1` = `Signature.type` |
| `sigT` present, `Signature.when` present, and they agree | ✅ SHOULD | both = `2026-07-14T10:15:00Z` |
| Conform to JAdES-B-T | ➖ MAY | the JAdES-B-T elements `srCms` and `sigT` are present; a full JAdES-B-T signed-properties structure is not modelled |
| Conform to JAdES-B-LTA (long-term: timestamp token + revocation data) | ➖ SHOULD | the signing certificate is embedded via `x5c`; a trusted timestamp token and revocation data are out of scope of this example |

Provenance-specific rules ([Digital Signatures in Provenance](https://build.fhir.org/signatures.html#6.1.2.2.8)): FHIR R6 notes that `signature.type`/`when`/`who` duplicate `agent.type`/`occurredDateTime`/`agent.who` and *should not* be used. This IG targets FHIR R4, so these Signature elements are retained; they **agree** with the corresponding `agent`/`recorded` values as required.

The two open items (`JAdES-B-T` / `JAdES-B-LTA`) are optional profiling for long-term validation; adding a qualified timestamp token and revocation data is a natural extension when long-term non-repudiation is required.

### Verifying the signature

A replica, auditor or supervisor verifies as the mirror of the signing steps:

1. Retrieve the target resource (`OrganizationAffiliation`) as replicated.
2. Remove `Resource.meta` and every narrative (`.text`) — the `#static` exclusions.
3. Canonicalize with RFC 8785 (JCS) to reproduce the payload of step 3.
4. base64‑decode `signature.data` to recover the compact detached JWS, and re‑insert the base64url‑encoded payload between the two dots.
5. Read the public key from the JWS header (`x5c`/`kid`), and cryptographically verify the JWS with the algorithm in `alg`.
6. Confirm the certificate itself is trusted (issuer, validity, key usage) and that `signature.who` matches an identifier in the certificate.

Because both signer and verifier apply the **same** canonicalization (`json#static`), the exact signed byte sequence is reproducible even though `meta.versionId`/`meta.lastUpdated` differ between the LRZa Directory and each replica.

> The `signature.data` in this example is a real RS256 signature over the canonical JSON above, produced with the published developmental test key. It verifies cryptographically, but the key is not trusted for any production use.
