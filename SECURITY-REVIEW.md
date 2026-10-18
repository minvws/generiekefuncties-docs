# Security review: mandate variants M4 and M5

- **Date:** 18 October 2026
- **Document reviewed:** [input/pagecontent/authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.md](input/pagecontent/authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.md), §2.4 (variants M4 and M5)
- **Related pages:** [csd.md](input/pagecontent/csd.md) (mutation signing, `OrganizationAffiliation`, ITI-130-NL) and [signing.md](input/pagecontent/signing.md) (Provenance signing)

## Scope and method

This is a design review of two mandate variants. FAPI 2.0 Security Profile requirements are assumed to be in place. Residual risks already documented in the appendix "Bijlage: mogelijke beveiligingsrisico's" of the reviewed document are not repeated here, unless M4 or M5 changes them materially.

- **M4 (M1 + M3):** the care provider gives one service provider its UZI server certificate and private key. Via the LRZa portal with eHerkenning, the care provider mandates that service provider once for LRZa management (`HSYSADMIN-custodian`, currently `lrza-careprovider-admin`). The service provider then registers `OrganizationAffiliation` mandates for itself and other service providers through ITI-130-NL. Each mandate is accompanied by a `Provenance` signed with the care provider's UZI key.
- **M5 (M2 + M3):** the care provider registers the mandate in the LRZa portal and seals the `OrganizationAffiliation` there with its European Business Wallet. Portal login probably also uses the wallet.

In both variants, mandates are replicated to local LRZa replicas. The source's authorization server and the requesting service provider check the mandate there, including its signature or seal. No mandate travels in the token request.

Line numbers refer to the reviewed document at the time of this review.

## Findings

| # | Severity | Variant | Lines | Finding | Confidence |
|---|----------|---------|-------|---------|------------|
| 1 | 🟠 HIGH | M4, M5 | 197–201, 211–213 | Withdrawn mandates can be revived by replaying an old valid signature | 8/10 |
| 2 | 🟠 HIGH | M4, M5 | 118, 198, 211 | The signature does not bind the care provider's URA or the service provider's identity | 7/10 |
| 3 | 🟠 HIGH | M4, M5 | 192, 197, 233, 329 | Downgrade to unsigned mandates, and conflicting rules in the Care Service Directory | 7/10 |
| 4 | 🟠 HIGH | M5 | 209, 213 | The wallet may seal something other than what the care provider saw | 7/10 |
| 5 | 🟠 HIGH | M5 | 165, 211, 216 | Mapping KvK/EUID to URA through modifiable LRZa data undoes the protection | 8/10 |
| 6 | 🟡 MEDIUM | M4 | 197–198, 205, 227 | Any UZI certificate that carries the care provider's URA can sign mandates | 8/10 |
| 7 | 🟡 MEDIUM | M4 | 192–205, 227 | The care provider cannot revoke against the key-holding service provider | 8/10 |
| 8 | 🟡 MEDIUM | M4, M5 | 198, 205, 211, 213 | When certificate validity is checked is not defined | 7/10 |
| 9 | 🟡 MEDIUM | M5 | 209, 213, 228 | Wallet delegation lets a service provider mandate itself | 7/10 |

### 1. Withdrawn mandates can be revived by replaying an old valid signature

**Problem.** The signature covers the content of the `OrganizationAffiliation`, including `id` and `active: true`. It does not cover `Resource.meta`, so the version is not signed. There is no required expiry and no signed revocation. Deactivating a mandate in the portal is an unsigned change that only makes the old signature invalid. Old `Provenance` records remain and are replicated everywhere.

**Attack scenario.** A care provider withdraws a mandate in the portal. A party that can write that `OrganizationAffiliation` sends the old content with the old signature again. The LRZa and every authorization server accept it as valid. That party could be:
- a colluding service provider with management rights;
- the key holder in M4;
- anyone who has compromised the LRZa.

A compromised LRZa can also simply not distribute the deactivation. Reactivation does not trigger the notification and waiting period, which apply only to new mandates.

**Mitigation:**
- Require a signed `period.start` and a short signed `period.end`.
- Allow reactivation or a wider `code` only through the portal, or accept them only with a `Provenance` whose signing time is later than the last deactivation.
- Never reuse an `id` after deactivation or deletion.
- Treat every change to `active` as a new mandate, with notification and waiting period.
- To resist LRZa compromise, sign revocations too: seal them with the wallet in M5, or use an append-only log sealed by the LRZa with a version number that verifiers check.

### 2. The signature does not bind the care provider's URA or the service provider's identity

**Problem:**
- `organization` and `participatingOrganization` may refer to a resource id only.
- In the signing example, the URA appears only in `identifier.assigner`, which the signer fills in.
- Resolving a resource id to a URA or KvK number goes through unsigned, modifiable LRZa `Organization` data.
- The signing page compares the certificate with `Provenance.signature.who`, which is outside the signed content.

**Attack scenario.** A compromised LRZa changes the KvK number on a service provider's `Organization`. Every signed mandate for that service provider then matches the attacker's `client_id`. For `TREAT-custodian` mandates this also routes patient queries to the attacker's endpoint. If a verifier compares the certificate URA with `signature.who` or `assigner`, anyone with any UZI key can sign a mandate that points to another care provider's resource.

**Mitigation:**
- For mandates, require `organization.identifier` (the URA) and `participatingOrganization.identifier` (the typed client-id) inside the signed content.
- Verifiers compare the certificate URA, or the mapped URA for M5, and `subject_organization_id` with the signed `organization.identifier`, and the `client_id` with the signed `participatingOrganization.identifier`.
- Verifiers never use `Provenance.agent`/`signature.who`, `assigner` or LRZa `Organization` data for these checks. Correct step 6 of the signing page accordingly.

### 3. Downgrade to unsigned mandates, and conflicting rules in the Care Service Directory

**Problem.** Signing only protects against LRZa compromise if every verifier rejects every unsigned mandate.
- **Mixed variants.** The document expects them: M3 first, then M4 and later M5. A verifier can only tell which variant applies from LRZa data, which an attacker would control.
- **The key holder's own mandate.** In M4 the key-holding service provider's management mandate is itself registered unsigned through the portal.
- **Conflicting CSD rules.** The Care Service Directory and the ITI-130-NL capability statement state that the LRZa SHALL NOT require a signature. Reopening ITI-130-NL for mandate codes without changing those texts lets unsigned mandates in again.
- **Combined risks.** Accepting both UZI signatures and wallet seals combines the risks of both.

**Mitigation:**
- Set one system-wide date after which unsigned mandates are rejected, without a per-care-provider flag in the LRZa.
- Also require signatures for `HSYSADMIN` codes.
- Amend the mutation-signing texts in csd.md and the ITI-130-NL capability statement.
- Submit mandates atomically, for example in a transaction Bundle with a client-assigned id, because the signature covers the stored id.
- Record which signer is allowed for each care provider in a source outside the LRZa.

### 4. The wallet may seal something other than what the care provider saw (M5)

**Problem.** The portal builds the `OrganizationAffiliation` and passes the content, or only its hash, to the wallet. In remote-signing flows the wallet often signs a hash it cannot display meaningfully. One approval may also cover several hashes.

**Attack scenario.** A compromised portal shows "TREAT-user voor dienstverlener P" but has the wallet seal a mandate for an attacker, possibly with extra codes, or slips in extra hashes. The result is a genuine qualified seal. The notification comes from the same compromised LRZa.

**Mitigation:**
- The wallet itself shows the relevant mandate fields: mandating care provider, service provider, codes and period, taken from the data being sealed. A mandate format the wallet understands makes this possible.
- One seal per explicit confirmation; no batches.
- Confirmation through a channel outside the LRZa.

### 5. Mapping KvK/EUID to URA through modifiable LRZa data undoes the protection (M5)

**Problem.** Any legal entity can obtain a qualified seal from any EU trust service provider. The only link between a seal and a care provider is the mapping from KvK number or EUID to URA. In the reviewed text that mapping runs through the LRZa `Organization`, which can be changed (residual risk 3).

**Attack scenario.** A compromised LRZa, or a service provider with management rights, adds its own KvK number to a care provider's `Organization`. It then seals a mandate "care provider → attacker, TREAT-user" with its own legitimate wallet. Verifiers accept it.

**Mitigation:**
- Take the mapping only from authoritative sources outside the LRZa, such as the UZI register, or from a URA attestation issued by CIBG that is presented with the seal.
- Define how one KvK number with several URAs is handled.
- Make the mapping unchangeable through ITI-130-NL.
- Require a qualified e-seal (QcType `eseal`, on a qualified signature device), an exact `organizationIdentifier` match, and reject natural-person certificates.

### 6. Any UZI certificate that carries the care provider's URA can sign mandates (M4)

**Problem.** Verifiers accept any valid UZI certificate whose URA equals the mandating care provider's. Under current practice several vendors often hold a UZI server certificate for the same care provider. When the key holder changes, the old certificate is only replaced, not revoked. Any of these holders with ITI-130-NL write access can mandate itself or a third party for any code. M4 does not require pass type `S` as M1 does, so a UZI card of one of the care provider's employees could also sign. The comparison table's claim that only the key holder can mandate itself is therefore not enforced.

**Mitigation:**
- Accept only pass type `S`.
- The care provider registers the one allowed signing certificate in the portal: eHerkenning, no chain authorization ("ketenmachtiging"), identified by thumbprint.
- Require revocation of the old certificate when the key holder changes.

### 7. The care provider cannot revoke against the key-holding service provider (M4)

**Problem:**
- **Re-registration.** The key holder can re-register a mandate right after the care provider deactivates it, under a new id if it wants. The notification and waiting period only restart the cycle.
- **Withdrawing its management mandate is not enough.** Its existing signatures can still be submitted by another service provider with management rights.
- **Collateral damage.** Only revoking the UZI certificate stops it, and that breaks all of the care provider's mandates and M0 connections.
- **Wrong attribution.** Its signatures are cryptographically the care provider's, so in a dispute the care provider appears to have consented.

**Mitigation:**
- When the care provider deactivates a mandate in the portal, record a block on that combination of care provider, service provider and code that ITI-130-NL cannot override.
- When the key holder's management mandate is withdrawn, the LRZa stops accepting its pinned certificate.
- State explicitly that ending the relationship requires revoking the UZI certificate.
- Include the service provider's identity in the signed content.
- Do not claim evidential value for M4 signatures.

### 8. When certificate validity is checked is not defined

**Problem.** The signing time in the JWS header (`sigT`) is set by the signer, and M4 has no trusted timestamp. The document does not say whether certificate validity and revocation are checked at verification time or at signing time.
- **Checked at signing time:** if implementations accept "valid at `sigT`", a stolen, revoked or expired key can backdate `sigT` and keep producing valid mandates.
- **Checked at verification time:** renewing a certificate breaks all mandates at once, and there is no re-signing procedure.

**Mitigation:**
- For authorization decisions, the certificate must be valid and not revoked at verification time: fail-closed, with the maximum OCSP/CRL age from §2.3.
- Use timestamps only as evidence.
- The LRZa rejects a `sigT` that is more than a few minutes from its own receipt time.
- Define how mandates are re-signed when a certificate is renewed.

### 9. Wallet delegation lets a service provider mandate itself (M5)

**Problem.** The European Business Wallet lets an organization authorize representatives, including third parties, to operate its wallet. Small care providers are likely to delegate this to their EHR vendor. A seal identifies only the legal person, so a vendor sealing its own mandate cannot be detected. M5 has no rule equivalent to M3's ban on eHerkenning chain authorization.

**Mitigation:**
- The person acting in the portal must be a representative of the care provider itself, shown by a representation attestation at a high assurance level. Third-party delegations are refused.
- Include the acting person, pseudonymized, in the sealed content.

## Effect on the documented residual risks, compared with M3

| Residual risk | M4 | M5 |
|---|---|---|
| 2: mandates in the LRZa are not signed | Partly reduced: blocks only mandates that never existed, and only once findings 2, 3 and 6 are fixed. Revived or suppressed revocations remain (finding 1). Little value as evidence. | Reduced, and stronger once findings 1–5 are fixed. A qualified seal is real evidence. |
| 3: LRZa identifiers can be changed | Not reduced; it becomes the weak point of the signature (finding 2). | Gets worse: the mapping is the attack (finding 5). |
| 6 and 7: custodian and `HSYSADMIN` rights | Matter more: `HSYSADMIN-custodian` becomes the root of the power to issue mandates, and ITI-130-NL is reopened for mandate codes. | Unchanged. |
| 1, 4 and 5 | Unchanged. Risk 5 must be settled, because the signed service-provider identifier has to match the `client_id`. | Unchanged; same note on risk 5. |
| Self-mandating (excluded in M3) | Returns for the key holder and for any holder of the care provider's UZI key (findings 6 and 7). | Stays excluded only with a delegation rule (finding 9). |

## Status

None of these findings has been addressed in the reviewed document yet.
