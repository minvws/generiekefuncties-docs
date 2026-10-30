This FHIR Implementation Guide specifies the technical components of the generic functions (in Dutch: "generieke functies") for data availability in the Dutch healthcare system. The generic functions are specified in a national programme led by the Dutch Ministry of Health, Welfare and Sport (VWS). This guide currently covers the generic functions Care Service Directory, Localization and Pseudonymisation.
{: .ig-lead}

### Generic functions in this guide

#### Care Service Directory
The generic function Care Service Directory (in Dutch: "Adressering") enables healthcare providers and systems to discover and retrieve up-to-date digital addresses and contact information of healthcare organizations, (physical) locations, services, and endpoints. Based on the IHE mCSD profile, it provides a standardized directory infrastructure that consolidates addressable entities from across the healthcare ecosystem, facilitating reliable care coordination and electronic data exchange. See [Care Service Directory](csd.html).


#### Localization
The generic function Localization (in Dutch: "Lokalisatie") enables healthcare professionals to find care providers (custodians) that hold relevant data for a patient. Custodians register their patients at the Nationale Verwijs Index (NVI) under a pseudonym. A data user searches the NVI by the patient's pseudonym and optional custodian characteristics, and only receives custodians that allow access. See [Localization](localization.html).

#### Pseudonymisation
The generic function Pseudonymisation defines how a national Pseudonym Registration Service (PRS) converts an identifier, such as a Burgerservicenummer (BSN), into a recipient-specific pseudonym. Generic functions such as Localization use these pseudonyms to exchange patient-bound information without revealing the BSN to the receiving party. See [Pseudonymisation](pseudonymisation.html).

### Maturity

Not all pages, or generic functions, in this guide are equally mature. Each generic function is specified in Functional and Technical requirements and design documents, and the pages in this guide are based on a specific version of those documents. The maturity of a page depends on the version it is based on. The main page of each generic function states this version in a note at the top.

| Generic function | Pages | Status | Based on design documents version | Design documents |
|---|---|---|---|---|
| Care Service Directory (Adressering) | [Care Service Directory](csd.html), [LRZa-managed elements](lrza-managed-elements.html), [Resource signing](signing.html) | Trial use | 1.0.0 | [www.generiekefuncties.nl/adressering](https://www.generiekefuncties.nl/adressering) |
| Localization (Lokalisatie) | [Localization](localization.html) | Draft | 0.9.0 | [www.generiekefuncties.nl/lokalisatie](https://www.generiekefuncties.nl/lokalisatie) |
| Pseudonymisation | [Pseudonymisation](pseudonymisation.html) | Draft | 0.9.0 (Localization) | [www.generiekefuncties.nl/lokalisatie](https://www.generiekefuncties.nl/lokalisatie) |
{: .grid}

Pages marked as draft are based on a version of the design documents that has not yet reached 1.0.0, and may change significantly as those documents evolve. When a new version of the design documents is published, the corresponding pages are updated; see the [Release Notes](release-notes.html) for the changes per version.

<!-- #### Consent
Establishes a standardized system for managing patient consent as a legal basis for processing medical data. Supports both explicit consent (stored nationally or locally) and implicit consent, with granular control allowing patients to grant permissions to individual organizations or categories of organizations based on type, ensuring consistent and secure consent management across the healthcare ecosystem. See [Consent](consent.html).

#### Identification
Defines a standardized approach for uniquely identifying healthcare organizations, IT vendors, healthcare professionals, patients, and data objects. Ensures each identifier originates from a single authentic source and conforms to national healthcare information models and FHIR profiles, enabling reliable tracking of provenance, authenticity, and data integrity across the healthcare system. See [Identification](identification.html).

#### Authentication
Verifies the identity of entities such as healthcare professionals and organizations within healthcare systems. See [Authentication](authentication.html).

#### Authorization
Defines access control mechanisms that determine which healthcare professionals and organizations can access specific patient data and resources. Builds upon authenticated identities to enforce fine-grained permissions based on care relationships, roles, and patient consent, ensuring secure and compliant data sharing across organizational boundaries. See [Authorization](authorization.html).

This guide outlines the technical requirements and architectural principles underlying these generic functions. One of the key design principles is to reuse existing specifications as much as possible (e.g. Dutch Health Care Information Models or ZIB's) AND to adhere to international standards (e.g. HL7 FHIR and IHE profiles) to lower the bar for international (European) data exchange and adoption by internationally operating software vendors. -->

### Artifacts
The [Artifacts](artifacts.html) page includes a complete index of the profiles, capability statements, value sets, code systems, examples, and other generated IG resources.


### History
See the [Release Notes](release-notes.html) for the changes per version, and [History](history.html) for the publication history of this guide.


### Conformance Expectations

The NL Generic Functions IG uses the normative keywords **SHALL**, **SHALL NOT**, **SHOULD**, **SHOULD NOT** and **MAY** as defined in [RFC 2119](https://www.rfc-editor.org/rfc/rfc2119) and the [IHE conformance conventions](https://profiles.ihe.net/GeneralIntro/ch-E.html). In short: **SHALL** is an absolute requirement, **SHALL NOT** an absolute prohibition, **SHOULD**/**SHOULD NOT** a recommendation that may be deviated from with the implications understood and weighed, and **MAY** is truly optional. Consistent with IHE, this guide uses **SHALL** rather than "MUST". Keywords carry this meaning only when written in upper case; the same words in lower case are descriptive, not normative.


### Dependencies

This guide is based on the [HL7 FHIR R4](https://hl7.org/fhir/R4/index.html) specification.  In addition, this guide also relies on a number of parent implementation guides:

 {% include dependency-table-short.xhtml %}


### Download 

You can also download:

* [this entire guide](../full-ig.zip)
* the definition resources in [json](../definitions.json.zip) or [xml](../definitions.xml.zip) format,
* the example resources in [json](../examples.json.zip) or [xml](../examples.xml.zip) format.

### Package File

The following package file includes an NPM package file used by many of the FHIR tools.  It contains all the value sets, profiles, extensions, list of pages and urls in the IG, etc defined as part of this version of the Implementation Guide. This file should be the first choice whenever generating any implementation artefacts since it contains all of the rules about what makes the profiles valid. Implementers will still need to be familiar with the content of the specification and profiles that apply in order to make a conformant implementation:

- [R4 Package](../package.tgz){::download="true"}
- [R4B Package](../package.r4b.tgz){::download="true"}

See the overview on [validating FHIR profiles and resources](http://hl7.org/fhir/R4/validation.html) for more information about validating profiles and how to use these artefacts.

