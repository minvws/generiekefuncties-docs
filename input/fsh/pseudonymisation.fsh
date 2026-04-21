// ============================================================
// PRS (Pseudonymization Register Service) input artifacts
// ============================================================
// These artifacts formally describe the inputs to the client-side
// create_blinded_input function before the PRS evaluate call is made.
// See pseudonymisation.md for the narrative specification.
// ============================================================

// --- Personal identifier type ---

// CodeSystem: NlGfPrsIdentifierTypeCS
// Id: nl-gf-prs-identifier-type-cs
// Title: "NL GF PRS Personal Identifier Type CodeSystem"
// Description: "Types of personal identifier accepted as input to the Pseudonymization Register Service (PRS). The `type` value is combined with `landCode` and `value` when constructing the PID JSON object passed to the HKDF derivation step."
// * ^status = #active
// * ^experimental = true
// * ^caseSensitive = true
// * #BSN "Burgerservicenummer" "Dutch citizen service number (BSN), issued by the Dutch government to all residents."

// ValueSet: NlGfPrsIdentifierTypeVS
// Id: nl-gf-prs-identifier-type-vs
// Title: "NL GF PRS Personal Identifier Type ValueSet"
// Description: "Valid `type` values for personal identifiers submitted to the Pseudonymization Register Service (PRS)."
// * ^status = #active
// * ^experimental = true
// * include codes from system NlGfPrsIdentifierTypeCS

// // --- Recipient scope ---

// CodeSystem: NlGfPrsRecipientScopeCS
// Id: nl-gf-prs-recipient-scope-cs
// Title: "NL GF PRS Recipient Scope CodeSystem"
// Description: "Service scopes used when deriving a recipient-specific pseudonym. Together with the recipient organization identifier, the scope is encoded in the HKDF `info` string (`{recipient_organization}|{recipient_scope}|v1`), binding the resulting pseudonym to exactly one recipient and use-case."
// * ^status = #active
// * ^experimental = true
// * ^caseSensitive = true
// * #nationale-verwijsindex "Nationale VerwijsIndex" "Scope for pseudonyms destined for the Nationale VerwijsIndex (NVI)."

// ValueSet: NlGfPrsRecipientScopeVS
// Id: nl-gf-prs-recipient-scope-vs
// Title: "NL GF PRS Recipient Scope ValueSet"
// Description: "Valid `recipient_scope` values for PRS evaluate requests."
// * ^status = #active
// * ^experimental = true
// * include codes from system NlGfPrsRecipientScopeCS

// // --- Recipient organization identifier system ---

// CodeSystem: NlGfPrsOrganizationIdentifierSystemCS
// Id: nl-gf-prs-org-identifier-system-cs
// Title: "NL GF PRS Organization Identifier System CodeSystem"
// Description: "Valid identifier system URIs for the recipient organization in a PRS evaluate request. The identifier system determines the prefix used in the HKDF info string (e.g. system `http://fhir.nl/fhir/NamingSystem/ura` maps to prefix `ura:`)."
// * ^status = #active
// * ^experimental = true
// * ^caseSensitive = true
// * #ura "URA" "Unified Registration for Abonnees (URA): the Dutch national identifier for healthcare organizations. System URI: http://fhir.nl/fhir/NamingSystem/ura"

// ValueSet: NlGfPrsOrganizationIdentifierSystemVS
// Id: nl-gf-prs-org-identifier-system-vs
// Title: "NL GF PRS Organization Identifier System ValueSet"
// Description: "Valid organization identifier systems for the `recipient_organization` parameter in PRS evaluate requests."
// * ^status = #active
// * ^experimental = true
// * include codes from system NlGfPrsOrganizationIdentifierSystemCS

// // --- Identifier profiles ---

// Profile: NlGfPrsPersonalIdentifier
// Parent: Identifier
// Id: nl-gf-prs-personal-identifier
// Title: "NL GF PRS Personal Identifier"
// Description: """An identifier for a natural person used as the PID input to the Pseudonymization Register Service (PRS).

// When constructing the PID JSON object for HKDF derivation, the fields are mapped as follows:
// - `landCode`: derived from the `extension[landCode].valueCode` (ISO 3166-1 alpha-2)
// - `type`: `type.coding.code`, bound to [NL GF PRS Personal Identifier Type](ValueSet-nl-gf-prs-identifier-type-vs.html)
// - `value`: `value`

// For Dutch citizens identified by BSN, use system `http://fhir.nl/fhir/NamingSystem/bsn`."""
// * ^experimental = true
// * system 1..1
// * value 1..1
// * type 1..1
// * type.coding 1..*
// * type.coding.system 1..1
// * type.coding.code 1..1
// * type from NlGfPrsIdentifierTypeVS (required)
// * extension contains NlGfPrsLandCode named landCode 1..1


// Extension: NlGfPrsLandCode
// Id: nl-gf-prs-land-code
// Title: "NL GF PRS Land Code"
// Description: "The ISO 3166-1 alpha-2 country code associated with the personal identifier, used as the `landCode` field when constructing the PID JSON object for HKDF derivation."
// Context: Identifier
// * value[x] only code
// * valueCode from http://hl7.org/fhir/ValueSet/iso3166-1-2 (required)


// Profile: NlGfPrsRecipientOrganizationIdentifier
// Parent: Identifier
// Id: nl-gf-prs-recipient-org-identifier
// Title: "NL GF PRS Recipient Organization Identifier"
// Description: """Identifier for the recipient organization passed to the PRS evaluate request as `recipient_organization`.

// The HKDF info string prefix is determined by the identifier system:
// - System `http://fhir.nl/fhir/NamingSystem/ura` → prefix `ura:` (e.g. `ura:90000901`)

// Only URA identifiers are currently supported as a recipient organization identifier for the NVI."""
// * ^experimental = true
// * system 1..1
// * system = "http://fhir.nl/fhir/NamingSystem/ura" (exactly)
// * value 1..1


// // --- Parameters profile for the PRS evaluate input ---

// Profile: NlGfPrsEvaluateInput
// Parent: Parameters
// Id: nl-gf-prs-evaluate-input
// Title: "NL GF PRS Evaluate Input Parameters"
// Description: """A Parameters resource representing the logical inputs to the client-side `create_blinded_input` function before a PRS evaluate call is made.

// The three parameters correspond directly to the function signature:
// - `personal_identifier` — the natural person's identifier (PID); never sent to the PRS in cleartext
// - `recipient_organization` — the organization for which the pseudonym is derived (determines HKDF info string and JWE recipient key)
// - `recipient_scope` — the service scope (determines HKDF info string)

// After calling the HKDF and OPRF steps with these inputs, the resulting `(blind_factor, blinded_input)` pair is submitted to the PRS `/evaluate` endpoint."""
// * ^experimental = true
// * parameter ^slicing.discriminator.type = #value
// * parameter ^slicing.discriminator.path = "name"
// * parameter ^slicing.rules = #closed
// * parameter contains
//     personalIdentifier 1..1 and
//     recipientOrganization 1..1 and
//     recipientScope 1..1
// * parameter[personalIdentifier].name = "personal_identifier"
// * parameter[personalIdentifier].value[x] only Identifier
// * parameter[personalIdentifier].valueIdentifier only NlGfPrsPersonalIdentifier
// * parameter[personalIdentifier].resource ..0
// * parameter[personalIdentifier].part ..0
// * parameter[recipientOrganization].name = "recipient_organization"
// * parameter[recipientOrganization].value[x] only Identifier
// * parameter[recipientOrganization].valueIdentifier only NlGfPrsRecipientOrganizationIdentifier
// * parameter[recipientOrganization].resource ..0
// * parameter[recipientOrganization].part ..0
// * parameter[recipientScope].name = "recipient_scope"
// * parameter[recipientScope].value[x] only code
// * parameter[recipientScope].valueCode from NlGfPrsRecipientScopeVS (required)
// * parameter[recipientScope].resource ..0
// * parameter[recipientScope].part ..0
