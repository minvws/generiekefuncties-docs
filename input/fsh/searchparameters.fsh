Instance: nl-gf-list-subject-identifier-oprf-key
InstanceOf: SearchParameter
Usage: #definition
Title: "Search on OPRF Key in List subject identifier"
Description: "Search parameter to find List resources by the OPRF key (blind_factor) used in pseudonymization, stored in the subject.identifier extension."
* url = "http://minvws.github.io/generiekefuncties-docs/SearchParameter/nl-gf-list-subject-identifier-oprf-key"
* version = "1.0.0"
* name = "NlGfListSubjectIdentifierOprfKey"
* status = #active
* experimental = false
* date = "2026-02-16"
* publisher = "MinVWS"
* description = "Allows searching for List resources based on the OPRF key (blind_factor) contained in the subject.identifier extension. This is useful for audit trails and verification of pseudonymization processes."
* code = #subject-identifier-oprf-key
* base = #List
* type = #token
* expression = "List.subject.identifier.extension.where(url='http://minvws.github.io/generiekefuncties-docs/StructureDefinition/oprf-key').value"
* xpath = "f:List/f:subject/f:identifier/f:extension[@url='http://minvws.github.io/generiekefuncties-docs/StructureDefinition/oprf-key']/f:valueBase64Binary"
* xpathUsage = #normal
* multipleOr = true
* multipleAnd = true
