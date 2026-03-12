Instance: nvi-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "NVI identifier"
* status = #active
* kind = #identifier
* date = "2025-11-05T00:00:00-00:00"
* description = "This Patient identifier is specific for the NVI and represents a pseudonymized BSN."
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-identifier"
* uniqueId[=].preferred = true

Instance: nvi-device-identifier
InstanceOf: NamingSystem
Usage: #definition
* name = "NVI device identifier"
* status = #active
* kind = #identifier
* date = "2026-03-12T00:00:00-00:00"
* description = "This Device identifier is specific for the NVI and represents a specific Software Installation."
* uniqueId[0].type = #uri
* uniqueId[=].value = "http://minvws.github.io/generiekefuncties-docs/NamingSystem/nvi-device-identifier"
* uniqueId[=].preferred = true
