Instance: nvi-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "NviIdentifier"
* status = #active
* kind = #identifier
* date = "2025-11-05T00:00:00-00:00"
* description = "This Patient identifier is specific for the NVI and represents a pseudonymized BSN."
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier"
* uniqueId[=].preferred = true

Instance: kvk-nummer
InstanceOf: NamingSystem
Usage: #definition
* name = "KVK"
* status = #active
* kind = #identifier
* date = "2026-03-11T00:00:00-00:00"
* description = "This identifier system represents KvK identifiers."
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://fhir.nl/fhir/NamingSystem/kvk"
* uniqueId[=].preferred = true

Instance: kvk-vestigingsnummer
InstanceOf: NamingSystem
Usage: #definition
* name = "KvkVestigingsnummer"
* status = #active
* kind = #identifier
* date = "2026-03-11T00:00:00-00:00"
* description = "This identifier system represents KvK vestigingsnummers."
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://fhir.nl/fhir/NamingSystem/kvk-vestigingsnummer"
* uniqueId[=].preferred = true


