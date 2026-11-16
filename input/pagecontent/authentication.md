GF Authentication specifies how two healthcare providers establish each other's identity, and the purpose of an exchange, when they exchange health data through their service providers. It is a national initiative led by the Dutch Ministry of Health, Welfare and Sport (VWS) and applies first to the exchanges *Basisgegevensset Zorg* (BgZ) and *eOverdracht* (nursing handover), both mandatory under the Wegiz.
{: .ig-lead}

> **Note:** This page is a draft. It is based on version 0.95 of the memo [*Harmonisatie van authenticatie en autorisatie voor de gegevensuitwisselingen BgZ en eOverdracht*](./authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html), approved by MT DICIO on 18 August 2026, and on version 0.5.0 (draft, 16 November 2026) of the follow-up memo [*Vervolg harmonisatie: clientregistratie en machtiging*](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html), whose [proposal](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#voorstel-machtiging-in-het-tokenrequest-en-de-protected-resource-metadata) it specifies. The memos explain the choices; this page only specifies what is needed to implement them. A basic understanding of OAuth 2.0 and FHIR is assumed.

### Scope

This page specifies:
- how a care provider mandates a service provider to act on its behalf, and how that mandate is issued, renewed and verified;
- how a service provider publishes its OAuth client metadata, authenticates to the authorization server of another service provider, and obtains an access token for a care provider by presenting its mandate;
- how the requesting service provider establishes, before it sends a request, that the endpoint belongs to the source care provider and its mandated service provider;
- how the resource server validates each request.

This page does not specify:
- how a care provider authenticates its own practitioners and systems. Each care provider does that within its own domain;
- the authorization decision of the source beyond the checks on this page, such as patient consent;
- how endpoints and organizations are published. See [GF Care Service Directory](./csd.html).

The exchanges in scope are the targeted *sending* of health data between two care providers within BgZ and eOverdracht, where a referral, handover or *aanmelding* precedes the exchange (see [Afbakening](./authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html#3-afbakening) in the memo). Queries without a preceding referral, and exchanges that do not run between two care providers (for example from a PGO or a research institution), are out of scope.

### Terminology

| Term | Meaning |
|---|---|
| Care provider | The organization that provides care and is the controller of the health data (*zorgaanbieder*). It is identified by its URA. |
| URA | *UZI-Register Abonneenummer*, the identifier of a care provider in the UZI register, as `urn:oid:2.16.528.1.1007.3.3.<URA>`. |
| Service provider | The party that provides and operates the technical systems for a care provider (*dienstverlener*), such as an EHR vendor, SaaS platform or hub, or the care provider itself. It has its own certificate. |
| Trusted service provider | The one service provider that a care provider designates to issue mandates on its behalf, with the key of the care provider's UZI server certificate. A care provider can fulfil this role itself. |
| Mandate | A signed statement in which a care provider authorizes a service provider to act on its behalf for one or more mandate codes (*machtiging*). |
| Mandate code | The scope of a mandate, as `<purpose>-<role>`, for example `TREAT-user`. See [Mandate codes](#mandate-codes). |
| Source | The care provider that holds the requested data (custodian), and its service provider. |
| `client_id` | The identifier of a service provider as OAuth client: the HTTPS URL of its Client ID Metadata Document. See [Client ID Metadata Document](#client-id-metadata-document). |
| Assertion | The JWT that the Authorization Client signs for each token request, with its mandate and the context of the request ([RFC 7523](https://www.rfc-editor.org/rfc/rfc7523)). See [Assertion](#assertion). |
| Client ID Metadata Document | A JSON document with the metadata of an OAuth client, which the client publishes at the URL that is its `client_id` ([draft-ietf-oauth-client-id-metadata-document](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/)). |
| Service provider identifier | The identifier of a service provider, derived from its certificate. See [Service provider identifier](#service-provider-identifier). |
| GIS | *Gezondheidsinformatiestelsel*, the national health information system under which this specification is agreed. |

### Solution overview

The legal framework, the federated trust model and the requirements are described in the memo ([Juridisch kader](./authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html#4-juridisch-kader), [Eisen aan de technische implementatie](./authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html#5-eisen-aan-de-technische-implementatie)); the design decisions and their rationale in the follow-up memo ([Ontwerpbeslissingen](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#ontwerpbeslissingen)).

The process:
1. Each care provider designates one trusted service provider in the LRZa, with the endpoint of its Mandate Issuer.
2. Each service provider of the care provider, on the requesting and on the source side, obtains a mandate from that Mandate Issuer. The care provider approves the mandate once; the Mandate Issuer renews it every 3 months as long as the approval stands.
3. The requesting service provider publishes a Client ID Metadata Document with its client metadata. The source's resource server publishes its mandate in its Protected Resource Metadata.
4. Before an exchange, the requesting service provider finds the source's endpoint in its Care Service Directory replica, and verifies the source's mandate.
5. The requesting service provider requests an access token at the source's authorization server with the JWT bearer grant, over mTLS. It sends an assertion that it signs with the key of its certificate, with its mandate, the care provider and the purpose, and the URL of its document as `client_id`. The authorization server verifies the assertion, the mandate, and that the client is the mandated service provider.
6. The requesting service provider sends its FHIR requests with the access token, over mTLS with the same certificate. The resource server validates the token, its binding to the certificate, and the request.

```mermaid
flowchart LR
    CPA([Care provider A])
    subgraph SPA [Service provider A, requesting]
        AC[Authorization Client]
    end
    subgraph TSPA [Trusted service provider of A]
        MI[Mandate Issuer]
    end
    subgraph SPB [Service provider B, source]
        AS[Authorization Server]
        RS[Resource Server]
    end
    CSD[(Care Service Directory<br/>local LRZa replica)]
    OCSP[(Certificate status<br/>OCSP or CRL)]
    CPA -. approves mandate .-> MI
    AC -- GF-AUTN-1 --> CSD
    AC -- GF-AUTN-2 --> MI
    AC -- GF-AUTN-3 --> RS
    AC -- GF-AUTN-4 --> AS
    AC -- GF-AUTN-5 --> RS
    AS -- GF-AUTN-6 --> AC
    AS -.-> OCSP
    RS -.-> OCSP
```

The source's service provider obtains its own mandate (`TREAT-custodian`) from the trusted service provider of care provider B in the same way (GF-AUTN-1 and GF-AUTN-2); this is not shown in the figure.

#### Standards

- OAuth 2.0 ([RFC 6749](https://www.rfc-editor.org/rfc/rfc6749)) with the JWT bearer grant ([RFC 7521](https://www.rfc-editor.org/rfc/rfc7521), [RFC 7523](https://www.rfc-editor.org/rfc/rfc7523)) and the security measures of the [FAPI 2.0 Security Profile](https://openid.net/specs/fapi-security-profile-2_0-final.html);
- mTLS client authentication (`tls_client_auth`) and certificate-bound access tokens ([RFC 8705](https://www.rfc-editor.org/rfc/rfc8705));
- Authorization Server Metadata ([RFC 8414](https://www.rfc-editor.org/rfc/rfc8414)) and Protected Resource Metadata ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728));
- OAuth Client ID Metadata Document ([draft-ietf-oauth-client-id-metadata-document](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/));
- SD-JWT VC ([draft-ietf-oauth-sd-jwt-vc](https://datatracker.ietf.org/doc/draft-ietf-oauth-sd-jwt-vc/)) for the mandate, issued with [OpenID4VCI](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0.html).

### Actors

| Actor | Role | Transactions | Requirements |
|---|---|---|---|
| [Mandate Issuer](#mandate-issuer) | Issues mandates for a care provider, after its approval | Server for [GF-AUTN-2](#gf-autn-2-obtain-mandate) | [Mandate](#mandate) |
| [Authorization Client](#authorization-client) | Requests data for a care provider, and publishes its client metadata | Client for [GF-AUTN-1](#gf-autn-1-discover-mandate-issuer) to [GF-AUTN-5](#gf-autn-5-access-resource); server for [GF-AUTN-6](#gf-autn-6-get-client-metadata) | [Client ID Metadata Document](#client-id-metadata-document), [Mandate](#mandate), [Assertion](#assertion) |
| [Authorization Server](#authorization-server) | Issues access tokens for the source | Server for [GF-AUTN-4](#gf-autn-4-request-access-token); client for [GF-AUTN-6](#gf-autn-6-get-client-metadata) | [Validation by the authorization server](#validation-by-the-authorization-server) |
| [Resource Server](#resource-server) | Serves the source's data, and publishes its metadata and mandate | Server for [GF-AUTN-3](#gf-autn-3-get-protected-resource-metadata) and [GF-AUTN-5](#gf-autn-5-access-resource); client for [GF-AUTN-1](#gf-autn-1-discover-mandate-issuer) and [GF-AUTN-2](#gf-autn-2-obtain-mandate) | [Validation by the resource server](#validation-by-the-resource-server) |
| [Care Service Directory](#care-service-directory) | Publishes the designation of trusted service providers and the endpoints | Server for [GF-AUTN-1](#gf-autn-1-discover-mandate-issuer) | [GF Care Service Directory](./csd.html) |

#### Mandate Issuer

The Mandate Issuer is operated by the trusted service provider of a care provider. It holds the key of the care provider's UZI server certificate, and SHALL keep that key non-exportable, for example in an HSM. It SHALL:
- let the care provider approve each mandate request: the service provider, the mandate codes, and the period during which the approval applies;
- issue a mandate only after a recorded approval, and keep the approval as evidence: who approved, when, and what;
- give the care provider an overview of the mandates that it has approved and issued, and let it withdraw an approval;
- separate the approval application from the signing key;
- renew mandates while the approval applies (see [Validity and renewal](#validity-and-renewal)).

A Mandate Issuer SHALL NOT issue mandates for a care provider that has not designated its trusted service provider in the LRZa.

#### Authorization Client

The Authorization Client is the OAuth client of the requesting service provider. It holds a mandate with the code `<purpose>-user` for each care provider it acts for, presents it in the assertion of [GF-AUTN-4](#gf-autn-4-request-access-token), publishes one [Client ID Metadata Document](#client-id-metadata-document), and SHALL support [GF-AUTN-1](#gf-autn-1-discover-mandate-issuer) to [GF-AUTN-6](#gf-autn-6-get-client-metadata).

#### Authorization Server

The Authorization Server is operated by the source's service provider, and can serve many care providers. It SHALL support [GF-AUTN-4](#gf-autn-4-request-access-token) and [GF-AUTN-6](#gf-autn-6-get-client-metadata), and publish its metadata ([RFC 8414](https://www.rfc-editor.org/rfc/rfc8414)), with at least:
- `token_endpoint_auth_methods_supported`: `["tls_client_auth"]`;
- `tls_client_certificate_bound_access_tokens`: `true`;
- `grant_types_supported`: including `urn:ietf:params:oauth:grant-type:jwt-bearer`;
- `client_id_metadata_document_supported`: `true`.

Common authorization server products need an extension that loads the client from the Client ID Metadata Document, and an extension for the JWT bearer grant that performs the checks in [Validation by the authorization server](#validation-by-the-authorization-server) and adds the claims to the access token. Their built-in support for this grant, if any, requires a trust relationship per issuer that is configured in advance. The follow-up memo describes this work for Keycloak and Duende IdentityServer ([Wat er moet gebeuren in Keycloak en Duende IdentityServer](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).

#### Resource Server

The Resource Server is the source's FHIR API, registered as an `Endpoint` in the [Care Service Directory](./csd.html). It holds a mandate with the code `<purpose>-custodian` for each care provider it serves, which it obtains through [GF-AUTN-1](#gf-autn-1-discover-mandate-issuer) and [GF-AUTN-2](#gf-autn-2-obtain-mandate), and publishes it in [GF-AUTN-3](#gf-autn-3-get-protected-resource-metadata).

#### Care Service Directory

A care provider designates its trusted service provider in the LRZa portal, as an [`OrganizationAffiliation`](./StructureDefinition-nl-gf-organizationaffiliation.html) with:
- `organization`: the care provider;
- `participatingOrganization`: the trusted service provider;
- `code`: `URA-signed-mandate` from the [NL GF Authorization Type CodeSystem](./CodeSystem-nl-gf-authorization-type-cs.html);
- `endpoint`: the `Endpoint` of the Mandate Issuer, with connectionType `openid4vci` from the [NL GF Authorization Server CodeSystem](./CodeSystem-nl-gf-authorization-server-cs.html), payloadType `URA-signed-mandate`, and as address its OpenID4VCI Credential Issuer Identifier.

A care provider SHALL have at most one active designation. Service providers find it in their local replica of the LRZa ([GF Care Service Directory](./csd.html)). The LRZa is only used to find the Mandate Issuer; verifiers of a mandate do not consult it.

### Transactions

| ID | Transaction | Client | Server |
|---|---|---|---|
| GF-AUTN-1 | [Discover Mandate Issuer](#gf-autn-1-discover-mandate-issuer) | Authorization Client or Resource Server | Care Service Directory (local replica) |
| GF-AUTN-2 | [Obtain Mandate](#gf-autn-2-obtain-mandate) | Authorization Client or Resource Server | Mandate Issuer |
| GF-AUTN-3 | [Get Protected Resource Metadata](#gf-autn-3-get-protected-resource-metadata) | Authorization Client | Resource Server |
| GF-AUTN-4 | [Request Access Token](#gf-autn-4-request-access-token) | Authorization Client | Authorization Server |
| GF-AUTN-5 | [Access Resource](#gf-autn-5-access-resource) | Authorization Client | Resource Server |
| GF-AUTN-6 | [Get Client Metadata](#gf-autn-6-get-client-metadata) | Authorization Server | Authorization Client |

All transactions SHALL use mTLS with the certificates of the service providers (see [Transport and certificates](#transport-and-certificates)). GF-AUTN-1 and GF-AUTN-2 run in advance and on renewal; GF-AUTN-3 to GF-AUTN-5 run for each exchange. GF-AUTN-6 runs during GF-AUTN-4 when the authorization server has no valid copy of the client's document in its cache.

#### GF-AUTN-1: Discover Mandate Issuer

The service provider searches its local Care Service Directory replica ([ITI-90-NL](./csd.html#search-care-services-iti-90-nl)) for the active `OrganizationAffiliation` in which the care provider designates its trusted service provider, and takes the Mandate Issuer's `Endpoint` from it. If the service provider is itself the trusted service provider, it issues the mandate to itself and skips GF-AUTN-2.

#### GF-AUTN-2: Obtain Mandate

The service provider requests a mandate from the Mandate Issuer with [OpenID4VCI](https://openid.net/specs/openid-4-verifiable-credential-issuance-1_0.html), and authenticates with its certificate (mTLS). The request names the care provider and the requested mandate codes.

The Mandate Issuer:
1. derives the service provider identifier from its certificate ([Service provider identifier](#service-provider-identifier));
2. issues the mandate immediately if an approval for this service provider and these codes applies; otherwise it asks the care provider for approval, for example in its own application, and issues the mandate after approval;
3. returns the [mandate](#mandate), with `may_act.sub` equal to the service provider identifier.

The requesting service provider presents the mandate in each token request ([GF-AUTN-4](#gf-autn-4-request-access-token)). The source's service provider publishes it in its Protected Resource Metadata ([GF-AUTN-3](#gf-autn-3-get-protected-resource-metadata)).

#### GF-AUTN-3: Get Protected Resource Metadata

Before it requests a token, the Authorization Client establishes that the endpoint belongs to the source care provider and its mandated service provider:
1. It finds the source's FHIR `Endpoint` for the use case in its Care Service Directory replica, and so the URA of the source care provider.
2. It retrieves the resource's metadata ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728)). RFC 9728 inserts the well-known path between the host and the path of the resource. For `https://fhir.dienstverlener-b.nl/zorgaanbieder-b/fhir` the request is:

   ```
   GET /.well-known/oauth-protected-resource/zorgaanbieder-b/fhir HTTP/1.1
   Host: fhir.dienstverlener-b.nl
   ```

3. It verifies the mandate of the source care provider in the metadata, as in [Validation by the authorization server](#validation-by-the-authorization-server), steps 5 and 6, and checks that:
   - `sub` is the URA of the source care provider from step 1;
   - `scope` contains the code `<purpose>-custodian` for the purpose of the request;
   - `may_act.sub` equals the service provider identifier derived from the resource server's TLS server certificate ([Service provider identifier](#service-provider-identifier));
   - the authorization server it will use is listed in `authorization_servers`.

The resource server SHALL publish, besides the RFC 9728 parameters `resource` and `authorization_servers`, the mandates of the care providers that the endpoint serves. They are published as an object with a list of attestations per attestation type. A mandate is published as an SD-JWT VC without disclosures and without key binding JWT, which ends in `~`. A resource server that serves several care providers SHOULD use a path per care provider, so that each endpoint has its own metadata.

```json
{
  "resource": "https://fhir.dienstverlener-b.nl/zorgaanbieder-b/fhir",
  "authorization_servers": ["https://as.dienstverlener-b.nl"],
  "tls_client_certificate_bound_access_tokens": true,
  "attestations": { "URA-signed-mandate": ["<mandate of care provider B>~"] }
}
```

The Authorization Client MAY cache the metadata as indicated by its `Cache-Control` header, for at most 24 hours, and SHALL check the validity of the cached mandate before each use.

#### GF-AUTN-4: Request Access Token

The Authorization Client requests an access token with the JWT bearer grant ([RFC 7523](https://www.rfc-editor.org/rfc/rfc7523), §2.1), over mTLS with its certificate (`tls_client_auth`). The [assertion](#assertion) is a JWT that the client signs for this request, with its mandate, the care provider on whose behalf it acts, and the purpose. The `client_id` is the URL of its [Client ID Metadata Document](#client-id-metadata-document).

```
POST /token HTTP/1.1
Host: as.dienstverlener-b.nl
Content-Type: application/x-www-form-urlencoded

grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Ajwt-bearer
&client_id=https%3A%2F%2Fdienstverlener-a.nl%2Foauth%2Fclient
&assertion=<assertion signed by service provider A>
```

| Parameter | Value |
|---|---|
| `grant_type` | `urn:ietf:params:oauth:grant-type:jwt-bearer` |
| `client_id` | The URL of the Client ID Metadata Document of the service provider (RFC 8705 requires the parameter). |
| `assertion` | The [assertion](#assertion). |

The request has no `scope`: the mandate codes come from the mandate, and the purpose from the assertion. The authorization server validates the request as described in [Validation by the authorization server](#validation-by-the-authorization-server). On success it returns a sender-constrained access token:

```json
{
  "access_token": "<opaque to the client>",
  "token_type": "Bearer",
  "expires_in": 300
}
```

The authorization server SHALL NOT issue a refresh token ([RFC 7521](https://www.rfc-editor.org/rfc/rfc7521), §4.1). When the access token expires, the client requests a new one with a new assertion.

#### GF-AUTN-5: Access Resource

The Authorization Client sends its FHIR requests over mTLS with the same certificate, with the access token in the `Authorization` header. The resource server validates each request as described in [Validation by the resource server](#validation-by-the-resource-server).

```
GET /zorgaanbieder-b/fhir/Task/123 HTTP/1.1
Host: fhir.dienstverlener-b.nl
Authorization: Bearer <access token>
```

#### GF-AUTN-6: Get Client Metadata

When the authorization server receives a token request with a `client_id` for which it has no valid copy of the Client ID Metadata Document, it retrieves the document at that URL ([draft-ietf-oauth-client-id-metadata-document](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/), §6). It does so only after it has validated the client certificate and checked that the host of the `client_id` is in that certificate ([Validation by the authorization server](#validation-by-the-authorization-server), steps 1 and 2).

```
GET /oauth/client HTTP/1.1
Host: dienstverlener-a.nl
Accept: application/json
```

The authorization server SHALL:
- use mTLS with its own certificate, and accept only a server certificate that meets the requirements in [Transport and certificates](#transport-and-certificates);
- not follow redirects, and treat any status other than `200` as an error;
- not connect to addresses that resolve to special-use IP addresses ([RFC 6890](https://www.rfc-editor.org/rfc/rfc6890));
- stop reading after 32 kilobytes, and treat a larger document as invalid;
- cache a valid document as indicated by the `Cache-Control` header of the response, for at most 24 hours, and for 1 hour if the response has no cache directive. It does not cache errors or invalid documents;
- on a transient failure, keep using a cached valid document for at most 24 hours after it was retrieved, and otherwise return HTTP status `503`; for an invalid document, return `invalid_client` (draft, §6.1).

### Validation

#### Validation by the authorization server

The authorization server SHALL reject the token request if any of these checks fails:
1. **Client certificate.** The certificate meets the requirements in [Transport and certificates](#transport-and-certificates), and its revocation status is good.
2. **Client identifier.** The `client_id` is a URL as described in [Client ID Metadata Document](#client-id-metadata-document), and its host equals a `dNSName` in the `subjectAltName` of the client certificate.
3. **Client metadata.** The authorization server has a valid copy of the document, from its cache or from [GF-AUTN-6](#gf-autn-6-get-client-metadata), in which:
   - `client_id` equals the `client_id` parameter, by simple string comparison;
   - `token_endpoint_auth_method` is `tls_client_auth`, and `grant_types` contains `urn:ietf:params:oauth:grant-type:jwt-bearer`;
   - `tls_client_auth_san_dns` equals the host of the `client_id` ([RFC 8705](https://www.rfc-editor.org/rfc/rfc8705), §2.1.2);
4. **Assertion** ([RFC 7523](https://www.rfc-editor.org/rfc/rfc7523), §3).
   - `typ` in the JOSE header is `nl-gf-jwt-bearer-assertion+jwt`.
   - The signature is valid for the first certificate in `x5c`, which equals the client certificate of the connection, with an algorithm allowed by FAPI 2.0 (PS256, ES256 or EdDSA).
   - `iss` equals the `client_id` parameter, and `aud` is the issuer identifier of this authorization server ([RFC 8414](https://www.rfc-editor.org/rfc/rfc8414)), as a single value.
   - `exp` has not passed and is at most 5 minutes after `iat`, and `jti` has not been used before. The authorization server keeps the `jti` values of a client until their `exp`.
   - `attestations` contains exactly one mandate, under the attestation type `URA-signed-mandate`, as an SD-JWT without disclosures and without key binding JWT.
5. **Mandate signature.**
   - The signature is valid for the certificate in `x5c`, which chains to the UZI register CA.
   - The certificate is a UZI server certificate (card type `S`), and its revocation status is good.
   - The URA in the certificate equals `sub`.
6. **Mandate content.**
   - `vct` is `https://fhir.generiekefuncties.nl/vct/URA-signed-mandate.json`.
   - The current time is between `nbf` and `exp`, and `exp` minus `nbf` is at most 3 months (92 days).
7. **Mandated service provider.** `may_act.sub` equals the service provider identifier derived from the client certificate ([Service provider identifier](#service-provider-identifier)); the client is the actor that the mandate authorizes (RFC 8693, §4.4).
8. **Care provider and purpose.**
   - `sub` of the assertion equals `sub` of the mandate.
   - `purpose_of_use` is a code from the [NL GF Purpose of Use ValueSet](./ValueSet-nl-gf-purpose-of-use-vs.html), and `scope` of the mandate contains the code `<purpose>-user` for exactly that code (see [Mandate codes](#mandate-codes)).
   - `locations_organization_id` and `locations` refer to a care provider and resource server that this authorization server serves.

The authorization server MAY keep the result of the signature and chain verification in step 5 for a mandate that it has verified before, identified by its hash. It SHALL perform all other checks for each token request, including the validity period of the mandate and the revocation status of its signing certificate. It SHALL take the care provider from `sub` of the mandate.

The access token is opaque to the client. It SHALL record on whose behalf access is granted (`sub`, the URA from the mandate), which service provider acts (`client_id`, and the service provider identifier in `act.sub` as in [RFC 8693](https://www.rfc-editor.org/rfc/rfc8693), §4.1), the `jti` of the mandate and of the assertion, `purpose_of_use`, `locations_organization_id` and `locations`, and the hash of the client certificate (`cnf.x5t#S256`, RFC 8705). How the authorization server and resource server exchange it, as a signed token or through token introspection ([RFC 7662](https://www.rfc-editor.org/rfc/rfc7662)), is up to them.

#### Validation by the resource server

For each request, the resource server SHALL:
1. validate the access token and its expiry;
2. check that the hash of the client certificate of the mTLS connection equals `cnf.x5t#S256` in the token;
3. check the revocation status of the client certificate;
4. take its authorization decision based on the care provider (`sub`) and `purpose_of_use` recorded for the access token, and on the checks of the use case.

For eOverdracht, the resource server checks that the `HealthcareService` in `Task.owner` is provided by the care provider on whose behalf access is granted (`sub`): `HealthcareService.providedBy` in its Care Service Directory replica refers to the `Organization` with that URA, or to a part of it (`partOf`). For a resource in `Task.input`, it applies that check to the Task that the resource belongs to.

### Data models

#### Service provider identifier

The service provider identifier is derived from a persistent identifier in the certificate of the service provider: the KvK number or OIN in a PKIoverheid server certificate, for example `NTRNL-90000001`, or the URA in a UZI server certificate. The rules are in [Appendix: Deriving the service provider identifier](#appendix-deriving-the-service-provider-identifier).

It identifies the service provider in `may_act.sub` of the mandate and in the logging. All certificates of one organization yield the same identifier, so the logging also records the certificate (see [Logging](#logging)).

#### Client ID Metadata Document

The Authorization Client publishes one Client ID Metadata Document ([draft-ietf-oauth-client-id-metadata-document](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/)) for the service provider. It describes the service provider as OAuth client, and contains no mandates: the client presents its mandate in each token request. A service provider MAY publish a separate document per system.

The `client_id`, which is the URL of the document:
- SHALL meet the requirements of the draft (§3): the `https` scheme, a path other than `/`, and no userinfo, query or fragment;
- SHALL have a host that is a `dNSName` in the `subjectAltName` of the service provider's certificate. Wildcards are not allowed. For example `https://dienstverlener-a.nl/oauth/client`.

| Property | Value |
|---|---|
| `client_id` | The URL of the document. |
| `client_name` | Optional and informative, for example `Dienstverlener A`. |
| `grant_types` | `["urn:ietf:params:oauth:grant-type:jwt-bearer"]` |
| `token_endpoint_auth_method` | `tls_client_auth` |
| `tls_client_auth_san_dns` | The host of the `client_id`, which is a `dNSName` in the service provider's certificate. |
| `tls_client_certificate_bound_access_tokens` | `true` |

```json
{
  "client_id": "https://dienstverlener-a.nl/oauth/client",
  "client_name": "Dienstverlener A",
  "grant_types": ["urn:ietf:params:oauth:grant-type:jwt-bearer"],
  "token_endpoint_auth_method": "tls_client_auth",
  "tls_client_auth_san_dns": "dienstverlener-a.nl",
  "tls_client_certificate_bound_access_tokens": true
}
```

The document SHALL NOT contain secrets or private keys (draft, §4.1), and its content SHALL NOT depend on the request, such as its headers or the authorization server that requests it (draft, §4.5).

A renewed certificate requires no change to the document, as long as it contains the same host. The document does not change when the service provider obtains, renews or loses a mandate.

An authorization server SHALL NOT require any other registration of a client. The authorization server MAY block a service provider or a `client_id` locally.

#### Mandate

A mandate is an SD-JWT VC ([draft-ietf-oauth-sd-jwt-vc](https://datatracker.ietf.org/doc/draft-ietf-oauth-sd-jwt-vc/)) without selectively disclosable claims. The trusted service provider signs it with the key of the care provider's UZI server certificate; the JOSE header contains `typ` `dc+sd-jwt` and, in `x5c`, that certificate and its intermediate certificates, without the root certificate. Only a UZI server certificate (card type `S`) may sign a mandate.

| Claim | Description |
|---|---|
| `vct` | The mandate type: `https://fhir.generiekefuncties.nl/vct/URA-signed-mandate.json`. Its Type Metadata (draft, §5) is published at that URL. In the objects of attestations in the [assertion](#assertion) and in the Protected Resource Metadata, the attestation type is `URA-signed-mandate`. An incompatible change of the type gets a new `vct`. |
| `iss` | The URL of the Mandate Issuer. |
| `sub` | The URA of the care provider. |
| `may_act.sub` | The [service provider identifier](#service-provider-identifier) of the mandated service provider (RFC 8693, §4.4). |
| `scope` | The mandate codes, separated by spaces. |
| `jti` | A unique identifier of the mandate. |
| `iat`, `nbf`, `exp` | Issuance time and validity. `exp` minus `nbf` is at most 3 months, and `exp` is not later than the expiry of the signing certificate. |

Example payload of a mandate with a validity of 90 days:

```json
{
  "vct": "https://fhir.generiekefuncties.nl/vct/URA-signed-mandate.json",
  "iss": "https://machtigingen.epd-leverancier.example.nl",
  "sub": "urn:oid:2.16.528.1.1007.3.3.11111111",
  "may_act": { "sub": "NTRNL-90000001" },
  "scope": "TREAT-user TREAT-custodian",
  "jti": "5f0c2a8e-3b7d-4c1e-9a6f-2d8b7e4c1a90",
  "iat": 1792108800,
  "nbf": 1792108800,
  "exp": 1799884800
}
```

The Authorization Client presents its mandate in the [assertion](#assertion) of each token request ([GF-AUTN-4](#gf-autn-4-request-access-token)); the Resource Server publishes its mandate in its [Protected Resource Metadata](#gf-autn-3-get-protected-resource-metadata).

A mandate has no `cnf`. It is not presented with a key binding JWT, but bound to the certificate of the service provider through `may_act.sub` (see [Binding to the certificate](#binding-to-the-certificate)).

#### Validity and renewal

A mandate is valid for at most 3 months. While the care provider's approval applies, the Mandate Issuer issues a new mandate in time, for example one month before the current one expires, and the service provider retrieves it with OpenID4VCI without a new approval. Service providers SHALL renew automatically. The Authorization Client uses the new mandate from its next token request. The Resource Server publishes the new mandate in its [Protected Resource Metadata](#gf-autn-3-get-protected-resource-metadata) at least 24 hours before the current one expires.

When a care provider withdraws its approval, the mandate is not renewed and expires at the end of its validity. A mandate cannot be withdrawn earlier, except by revoking a certificate:
- revoking the certificate of a service provider closes it off for all care providers;
- revoking the care provider's UZI server certificate invalidates all its mandates.

There is no status list: a verifier does not contact the Mandate Issuer. Care providers that change service providers should take the remaining validity of the current mandates into account. The follow-up memo explains this choice in [GF-AUTN-ADR-5](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#gf-autn-adr-5-intrekken-of-laten-verlopen).

#### Assertion

The assertion is a JWT ([RFC 7523](https://www.rfc-editor.org/rfc/rfc7523), §3) that the Authorization Client creates and signs for each token request. It signs it with the private key of its client certificate, with an algorithm allowed by FAPI 2.0 (PS256, ES256 or EdDSA). The JOSE header contains `typ` `nl-gf-jwt-bearer-assertion+jwt` and that certificate in `x5c`.

The `typ` identifies the assertion as one of this profile (explicit typing, [RFC 8725](https://www.rfc-editor.org/rfc/rfc8725), §3.11). An authorization server that accepts other assertions with the JWT bearer grant as well SHALL apply the rules on this page only to an assertion with `typ` `nl-gf-jwt-bearer-assertion+jwt`, and SHALL NOT accept an assertion with that `typ` under other rules. A mandate (`typ` `dc+sd-jwt`) or another JWT can therefore not be used as an assertion, nor the other way around.

```json
{
  "iss": "https://dienstverlener-a.nl/oauth/client",
  "sub": "urn:oid:2.16.528.1.1007.3.3.11111111",
  "aud": "https://as.dienstverlener-b.nl",
  "iat": 1792108800,
  "exp": 1792109100,
  "jti": "0b6d9c2e-7f4a-4c1d-8e3b-5a9f2c7d1e64",
  "purpose_of_use": "http://terminology.hl7.org/CodeSystem/v3-ActReason|TREAT",
  "locations_organization_id": "urn:oid:2.16.528.1.1007.3.3.12345678",
  "locations": ["https://fhir.dienstverlener-b.nl/zorgaanbieder-b/fhir"],
  "attestations": { "URA-signed-mandate": ["<mandate of care provider 11111111>~"] }
}
```

| Claim | Description |
|---|---|
| `iss` | The `client_id` of the Authorization Client: the URL of its Client ID Metadata Document. |
| `sub` | The URA of the care provider on whose behalf the service provider acts. It equals `sub` of the mandate. |
| `aud` | The issuer identifier of the authorization server ([RFC 8414](https://www.rfc-editor.org/rfc/rfc8414)), as a single value. |
| `iat`, `exp` | Issuance time and expiry; `exp` is at most 5 minutes after `iat`. |
| `jti` | A unique identifier of the assertion. The authorization server accepts each value once. |
| `purpose_of_use` | The purpose of the exchange, a code from the [NL GF Purpose of Use ValueSet](./ValueSet-nl-gf-purpose-of-use-vs.html). For BgZ and eOverdracht: `TREAT`. |
| `locations_organization_id` | The URA of the source care provider. |
| `locations` | The resource server(s) for which access is requested. |
| `attestations` | The attestations that the client presents, as an object with a list of attestations per attestation type, like `attestations` in the Protected Resource Metadata. It contains the [mandate](#mandate) under `URA-signed-mandate`, as issued: an SD-JWT VC without disclosures and without key binding JWT, which ends in `~`. An authorization server ignores attestation types that it does not use. |

`sub`, `purpose_of_use`, `locations_organization_id` and `locations` replace the RAR object (`authorization_details`, type `nl-gis-v1`) of the [memo](./authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html). The claim name `attestations` is provisional.

#### Mandate codes

A mandate code consists of a purpose and a role: `<purpose>-<role>`. The purpose is a code from the [NL GF Purpose of Use ValueSet](./ValueSet-nl-gf-purpose-of-use-vs.html): `TREAT`, `ETREAT`, `PATRQT`, `HRESCH` or `HSYSADMIN`, from [HL7 v3 ActReason](https://terminology.hl7.org/CodeSystem-v3-ActReason.html) (PurposeOfUse), the same code system as `purpose_of_use`. A mandate for a purpose does not cover its child codes in the ActReason hierarchy: a mandate for `TREAT` does not cover `ETREAT`, `BTG` or `POPHLTH`. A care provider that mandates a service provider for both treatment and emergency treatment gives both codes. The legal basis of each code is in [GF-AUTN-ADR-4](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#gf-autn-adr-4-wat-mag-de-dienstverlener-namens-de-zorgaanbieder).

The roles are:
- `user`: request and receive data on behalf of the care provider, usually as Authorization Client;
- `custodian`: make data available or register data on behalf of the care provider as the source, usually as Authorization Server and Resource Server; for registration in the LRZa or the NVI, as a client of that service.

| Purpose | `<purpose>-user`: the service provider may, on behalf of the care provider… | `<purpose>-custodian`: the service provider may, on behalf of the care provider… |
|---|---|---|
| `TREAT` (treatment) | request data for the treatment of patients, such as BgZ, European Patient Summary, eOverdracht, medication transfer and maternity care, and search the NVI for that purpose. | make data available for the treatment of patients, consult consents for that purpose, and register patients at the NVI. |
| `ETREAT` (emergency treatment) | request data for the emergency treatment of patients, such as in acute care. | make data available for the emergency treatment of patients. |
| `PATRQT` (patient request) | request data at the patient's request. | make data available to the patient or the patient's PGO. |
| `HRESCH` (research) | request data for (medical) research. | provide data for research, and update dataset descriptions in the catalogue of the Health Data Access Body (EHDS). |
| `HSYSADMIN` (system administration) | request the care provider's data from the LRZa, and update its own resources (such as Endpoints) in the LRZa. | register and update the care provider's data in the LRZa. |

The authorization server derives the required code from `purpose_of_use`: a request with purpose `TREAT` requires the code `TREAT-user` in the mandate of the requesting service provider. The requesting service provider checks that the source's service provider has the code `TREAT-custodian`. For BgZ and eOverdracht, an EHR vendor that both requests and provides data receives both codes in one mandate.

### Error handling

| Status | Error | Cause | Client action |
|---|---|---|---|
| `400` | `invalid_request` | A required parameter is missing or malformed. | Correct the request. |
| `400` | `invalid_grant` | The assertion is invalid, expired, replayed or not signed with the client certificate; the mandate in it is invalid, expired or not for this service provider; `sub` of the assertion does not equal the care provider of the mandate; or the mandate does not contain the code for `purpose_of_use` (RFC 7523, §3.1). | Correct the assertion; check the mandate codes; obtain a new mandate (GF-AUTN-2) if it has expired. Do not retry unchanged. |
| `401` | `invalid_client` | The client certificate is invalid or revoked; the host of the `client_id` is not in the certificate; or the Client ID Metadata Document is invalid or does not match the certificate. | Check the certificate and the document. Do not retry unchanged. |
| `401` | `invalid_token` | The access token is missing, expired, invalid, or not bound to the client certificate (resource server). | Obtain a new access token (GF-AUTN-4) and retry once. |
| `403` | `insufficient_scope` | The request is not allowed for this care provider or purpose (resource server). | Do not retry. |
| `503` | (none) | The authorization server could not retrieve the Client ID Metadata Document (GF-AUTN-6). | Check that the document is available; retry later. |

The authorization server and resource server SHALL fail closed: if the revocation status of a certificate cannot be determined, they reject the request.

### Security considerations

The security risks of this specification and its alternatives are listed in [Bijlage C](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#bijlage-c-beveiligingsrisicos) of the follow-up memo.

#### Transport and certificates

- All connections SHALL use mTLS, following the TLS guidelines of the NCSC, initially with PKIoverheid or UZI server certificates. The GIS Veilig Netwerk may require a different implementation later.
- Servers SHALL only accept certificates from a list of issuing CAs and certificate policies set by the GIS: PKIoverheid server certificates and UZI server certificates (card type `S`). They SHALL NOT use the default trust store of the operating system or gateway.
- The client certificate SHALL contain the extended key usage `clientAuth`.
- Personal certificates SHALL be rejected, even if they contain an `organizationIdentifier` or URA. This applies to PKIoverheid personal certificates and to UZI cards (card types `Z`, `N` and `M`).
- Servers SHALL check the revocation status of the client certificate, preferably through OCSP and otherwise through the CRL of the trust service provider. They SHALL NOT use an OCSP response or CRL whose `thisUpdate` is more than 24 hours old, or whose `nextUpdate` has passed. The same applies to the certificate that signs a mandate, and to the resource server's certificate, which the Authorization Client checks. Because a CA processes a revocation within 24 hours (ETSI EN 319 411-1, REV-6.2.4-03A), a revocation takes effect at most about 48 hours after it is requested.
- Only the source, that is the care provider or its service provider with a `<purpose>-custodian` mandate, or a load balancer or proxy in their own domain, MAY terminate the TLS connection to the authorization server or resource server. It forwards the client certificate as in [RFC 9440](https://www.rfc-editor.org/rfc/rfc9440): it removes any incoming certificate header, and the authorization server or resource server accepts the certificate only from that proxy, over a protected connection (§4). All checks on this page then apply to the forwarded certificate. Other intermediaries SHALL NOT terminate the TLS connection. An intermediary on the requesting side acts as a client itself, with its own certificate, Client ID Metadata Document and mandate.

#### Binding to the certificate

The assertion is signed with the private key of the client certificate, the key that also authenticates the connection. A mandate is bound to the service provider through `may_act.sub` and that certificate ([Validation by the authorization server](#validation-by-the-authorization-server), steps 4 and 7), and the access token is bound to the same certificate. Therefore:
- the private key of the service provider's certificate SHALL be non-exportable, for example in an HSM, also where a proxy or gateway in the service provider's own domain terminates TLS;
- authorization servers SHOULD be tested with negative cases before they are admitted (see [Open issues](#open-issues)): one that omits step 7 lets a party that has seen a mandate, such as another authorization server to which the client presented it, use it;
- the authorization server SHALL log the assertion (see [Logging](#logging)); its signature shows third parties what the service provider requested.

#### Logging

Both parties SHALL log each exchange according to NEN 7513, at the level of the requesting care provider, supplemented with:
- the `client_id`, the service provider identifier, and the issuer DN, serial number and SHA-256 thumbprint (`x5t#S256`) of the client certificate;
- the `jti` and `iss` of the mandate;
- the assertion of the token request as received, and the requested resources.

The Mandate Issuer SHALL log each approval and issuance.

#### Privacy considerations

A mandate contains only organization identifiers. The Protected Resource Metadata shows which care providers have mandated the source's service provider, and is only available over mTLS. The Client ID Metadata Documents contain no mandates; an authorization server only sees the mandates that clients present to it. The Mandate Issuer records personal data of the employee who approves a mandate, and processes it for the care provider.

### Example use cases

#### Use case: Obtaining and renewing a mandate

Care provider A uses EHR vendor A for its exchanges and has designated its own hosting provider as trusted service provider.

```mermaid
sequenceDiagram
    autonumber
    actor CPA as Care provider A
    participant SPA as Service provider A<br/>(EHR vendor)
    participant CSD as Care Service Directory<br/>(local replica)
    participant MI as Mandate Issuer<br/>(trusted service provider of A)

    SPA->>CSD: GF-AUTN-1: designation of the<br/>trusted service provider of URA-A?
    CSD-->>SPA: OrganizationAffiliation with<br/>Endpoint of the Mandate Issuer
    SPA->>MI: GF-AUTN-2: credential request<br/>(OpenID4VCI, mTLS)<br/>URA-A, TREAT-user, TREAT-custodian
    MI->>CPA: Request approval
    CPA->>MI: Approve: service provider A,<br/>codes, approval period
    MI->>MI: Record approval<br/>sign with UZI key of URA-A
    MI-->>SPA: Mandate (SD-JWT VC),<br/>valid for at most 3 months,<br/>may_act = service provider A
    SPA->>SPA: Store the mandate for URA-A

    Note over SPA,MI: About one month before expiry,<br/>while the approval applies
    SPA->>MI: GF-AUTN-2: credential request (mTLS)
    MI-->>SPA: New mandate, without new approval
    SPA->>SPA: Use the new mandate<br/>from the next token request
```

#### Use case: Retrieving a nursing handover

Care provider B, a hospital, hands over the care of patient X to a district nursing team of care provider A. Service provider B records the handover in Task 123, with the team's `HealthcareService` as `owner` and the handover message (Composition 456) in `Task.input`. It notifies service provider A with a reference to the Task. Service provider A then retrieves the Task and the handover message.

```mermaid
sequenceDiagram
    autonumber
    actor CPA as Care provider A
    participant AC as Authorization Client<br/>(service provider A)
    participant CSDA as Care Service Directory<br/>replica A
    participant AS as Authorization<br/>Server B
    participant RS as Resource<br/>Server B
    participant CSDB as Care Service Directory<br/>replica B

    Note over AC,RS: Notification from service provider B<br/>with a reference to Task 123
    CPA->>AC: Open the handover of patient X
    AC->>CSDA: FHIR Endpoint of URA-B<br/>for eOverdracht?
    CSDA-->>AC: Endpoint, managed by<br/>service provider B
    AC->>RS: GF-AUTN-3: GET /.well-known/<br/>oauth-protected-resource/...
    RS-->>AC: authorization_servers and<br/>mandate of URA-B (TREAT-custodian)
    AC->>AC: Mandate of URA-B valid?<br/>may_act matches server certificate?<br/>AS listed?
    AC->>AS: GF-AUTN-4: POST /token (mTLS)<br/>JWT bearer, assertion signed by A:<br/>sub = URA-A, TREAT, mandate of URA-A
    AS->>AS: Client certificate valid?<br/>Host of client_id in certificate?
    opt No valid copy in the cache
        AS->>AC: GF-AUTN-6: GET client metadata (mTLS)
        AC-->>AS: Client ID Metadata Document<br/>of service provider A
    end
    AS->>AS: tls_client_auth_san_dns =<br/>host of client_id?<br/>typ = nl-gf-jwt-bearer-assertion+jwt?<br/>Assertion signed with certificate A?<br/>aud, exp, jti valid?<br/>Mandate signed with UZI key of URA-A?<br/>Valid, at most 3 months?<br/>may_act = identifier of A?<br/>URA-A = sub? TREAT-user in scope?
    AS-->>AC: Access token (sub = URA-A,<br/>bound to certificate A)
    AC->>RS: GF-AUTN-5: GET /Task/123
    RS->>RS: Token valid and bound?
    RS->>CSDB: HealthcareService in Task.owner<br/>provided by URA-A?
    RS-->>AC: Task 123 (input: Composition 456)
    AC->>RS: GF-AUTN-5: GET /Composition/456/$document
    RS->>RS: Token valid and bound?<br/>Composition 456 in Task 123?
    RS-->>AC: Bundle with the handover message
    AC-->>CPA: Show the handover
```

### Roadmap for GF Authentication

#### Open issues

- **Test suite.** Positive and negative tests for authorization servers, including a mandate presented by another service provider, a `client_id` whose host is not in the certificate, a revoked UZI certificate, an assertion whose `sub` differs from that of the mandate, a replayed assertion, an assertion not signed with the client certificate, and a mandate or other JWT presented as assertion.
- **Standards status.** SD-JWT VC and the Client ID Metadata Document are IETF drafts, and the Client ID Metadata Document has hardly been used outside the authorization code flow. Authorization server products support the JWT bearer grant only with a trust relationship per issuer that is configured in advance, or not at all. A test with the authorization server products of pilot participants has to establish the feasibility.

### Appendix: Deriving the service provider identifier

A verifier derives the service provider identifier from the certificate with the first rule that applies, and rejects the certificate if no rule applies. The rules only apply to certificates from the CAs and certificate policies on the trust list of the GIS (see [Transport and certificates](#transport-and-certificates)).
1. **UZI server certificate:** the URA in the `subjectAltName`, as `urn:oid:2.16.528.1.1007.3.3.<URA>`, the notation of `sub` in a mandate.
2. **PKIoverheid server certificate with `organizationIdentifier` (OID 2.5.4.97) `NTRNL-<KvK number>`:** that value, for example `NTRNL-90000001`.
3. **PKIoverheid server certificate with an OIN** in `organizationIdentifier`, or else in `serialNumber` (OID 2.5.4.5):
   - with prefix `00000003`: `NTRNL-` followed by digits 9 to 16 of the OIN, which are the KvK number. For example, `00000003900000010000` yields `NTRNL-90000001`;
   - with another prefix: the OIN.

Background:
- An OIN has 20 digits: a prefix of 8 digits for the register, the number in that register, and a suffix of zeros. Prefix `00000003` stands for a KvK number of 8 digits, followed by `0000`. Other prefixes, such as `00000001` (RSIN) and `00000004` (SubOIN), do not contain a KvK number ([OIN Stelsel](https://logius-standaarden.github.io/OIN-Stelsel/), §6.1 and §6.2).
- The PKIoverheid PvE requires `organizationIdentifier` in server certificates since version 5.0 (June 2024), with an identifier as in ETSI EN 319 412-1 or an OIN ([PvE v5.4](https://cp.pkioverheid.nl/pkioverheid-por-v5.4.html), §7.1.4.2.2.10). Certificates without it are still in use, with the OIN in `serialNumber`. In a PKIoverheid certificate, a `serialNumber` of exactly 20 characters is always an OIN (§7.1.4.2.2.3).
- Rules 2 and 3 yield the same identifier for the same KvK number, so the identifier does not change when a renewed certificate carries the number in another field.
