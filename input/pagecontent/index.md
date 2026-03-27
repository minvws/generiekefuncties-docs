### Introduction

This FHIR Implementation Guide specifies the technical components of the Generic Functions for data exchange in the Dutch Healthcare system. A national programme led by the Dutch Ministry of Health, Welfare and Sport (VWS). There are six generic functions in this programme:

#### Care Services Discovery (Addressing)
Enables healthcare providers and systems to discover and retrieve up-to-date digital addresses and contact information of healthcare organizations, (physical) locations, services, and endpoints. Based on the IHE mCSD profile, it provides a standardized directory infrastructure that consolidates addressable entities from across the healthcare ecosystem, facilitating reliable care coordination and electronic data exchange. See [Care Services Discovery](care-services.html).

<p class="note-to-balloters">

This guide outlines the technical requirements and architectural principles underlying these generic functions. For the functional design, the technical design and the specification in TWIIN-format, download files: 

Download Functional design: [FO-adressering-v0.95.pdf](FO-adressering-v0.95.pdf)
Download Technical design: TODO
Download TWIIN implementatiehandleiding: [care-services-dummy.docx](care-services-dummy.docx)

</p>

#### Localization (Medical Record Localization)
Provides a standardized framework for discovering which healthcare organizations hold relevant patient data of a specific type. Using a national Medical Record Localization Service (Nationale Verwijs Index or NVI), data holders register the presence of patient data by category, enabling healthcare professionals to efficiently locate health information while ensuring GDPR compliance through proportionality and subsidiarity principles. See [Localization](localization.html).

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
For publication details, see [History](history.html) for release and change information.


### Conformance Expectations

NL Generic Functions IG uses the normative words: Shall, Should, and May according to standards conventions. 


### Dependencies

This guide is based on the [HL7 FHIR R4](https://hl7.org/fhir/R4/index.html) specification.  In addition, this guide also relies on a number of parent implementation guides:

 {% include dependency-table-short.xhtml %}


### Download 

You can also download:

* [this entire guide](full-ig.zip),
* the definition resources in [json](definitions.json.zip) or [xml](definitions.xml.zip) format,
* the example resources in [json](examples.json.zip) or [xml](examples.xml.zip) format.
