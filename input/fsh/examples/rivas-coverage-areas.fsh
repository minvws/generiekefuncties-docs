// // ----------------------------------------------------------------
// // Coverage-area Location hierarchy (province → city → postal code)
// //
// // Administrative area Locations for the region around Gorinchem and Leerdam.
// // These are plain FHIR Location resources (not NlGfLocation, which targets
// // physical care locations): they represent jurisdictions/areas and are linked
// // into a hierarchy via Location.partOf. They are referenced from the Rivas
// // wijkverpleging HealthcareService.coverageArea (see rivas-directory.fsh).
// // ----------------------------------------------------------------

// ── Provinces ───────────────────────────────────────────────────────────────

Instance: c87925a9-f233-476f-98bc-1fac3ab38c43
InstanceOf: Location
Usage: #example
Title: "Area - Province Zuid-Holland"
Description: "Example administrative area: province of Zuid-Holland."
* status = #active
* name = "Zuid-Holland"
* physicalType = $location-physical-type#jdn "Jurisdiction"
* address.state = "Zuid-Holland"
* address.country = "NL"

Instance: edcf234e-8bd0-4326-8acf-ce0bd2f87b0e
InstanceOf: Location
Usage: #example
Title: "Area - Province Utrecht"
Description: "Example administrative area: province of Utrecht (Leerdam is part of the municipality Vijfheerenlanden in this province)."
* status = #active
* name = "Utrecht"
* physicalType = $location-physical-type#jdn "Jurisdiction"
* address.state = "Utrecht"
* address.country = "NL"

// ── Cities ──────────────────────────────────────────────────────────────────

Instance: b03dbf73-23a1-4880-bda0-ee8dab1a0184
InstanceOf: Location
Usage: #example
Title: "Area - City Gorinchem"
Description: "Example administrative area: city of Gorinchem, part of the province Zuid-Holland."
* status = #active
* name = "Gorinchem"
* physicalType = $location-physical-type#jdn "Jurisdiction"
* partOf = Reference(Location/c87925a9-f233-476f-98bc-1fac3ab38c43)
* address.city = "Gorinchem"
* address.state = "Zuid-Holland"
* address.country = "NL"

Instance: 0540de85-0f4b-4b5c-a6fa-256afb8c31de
InstanceOf: Location
Usage: #example
Title: "Area - City Leerdam"
Description: "Example administrative area: city of Leerdam, part of the province Utrecht."
* status = #active
* name = "Leerdam"
* physicalType = $location-physical-type#jdn "Jurisdiction"
* partOf = Reference(Location/edcf234e-8bd0-4326-8acf-ce0bd2f87b0e)
* address.city = "Leerdam"
* address.state = "Utrecht"
* address.country = "NL"

// ── Postal-code areas (Gorinchem) ───────────────────────────────────────────

Instance: 2f04ef3b-2f14-42b1-8fc4-e15083d5d5fe
InstanceOf: Location
Usage: #example
Title: "Area - Postal code 4201 Gorinchem"
Description: "Example administrative area: postal-code area 4201 in Gorinchem."
* status = #active
* name = "4201 Gorinchem"
* physicalType = $location-physical-type#area "Area"
* partOf = Reference(Location/b03dbf73-23a1-4880-bda0-ee8dab1a0184)
* address.postalCode = "4201"
* address.city = "Gorinchem"
* address.country = "NL"

Instance: 4b613504-7582-43de-b82a-4fd7313ccffe
InstanceOf: Location
Usage: #example
Title: "Area - Postal code 4204 Gorinchem"
Description: "Example administrative area: postal-code area 4204 in Gorinchem."
* status = #active
* name = "4204 Gorinchem"
* physicalType = $location-physical-type#area "Area"
* partOf = Reference(Location/b03dbf73-23a1-4880-bda0-ee8dab1a0184)
* address.postalCode = "4204"
* address.city = "Gorinchem"
* address.country = "NL"

Instance: 71e864ec-231d-4b8c-8c0b-6f6435099985
InstanceOf: Location
Usage: #example
Title: "Area - Postal code 4205 Gorinchem"
Description: "Example administrative area: postal-code area 4205 in Gorinchem."
* status = #active
* name = "4205 Gorinchem"
* physicalType = $location-physical-type#area "Area"
* partOf = Reference(Location/b03dbf73-23a1-4880-bda0-ee8dab1a0184)
* address.postalCode = "4205"
* address.city = "Gorinchem"
* address.country = "NL"

Instance: 6064e2a0-e93c-4e50-8b5e-bbaf7a675c70
InstanceOf: Location
Usage: #example
Title: "Area - Postal code 4206 Gorinchem"
Description: "Example administrative area: postal-code area 4206 in Gorinchem."
* status = #active
* name = "4206 Gorinchem"
* physicalType = $location-physical-type#area "Area"
* partOf = Reference(Location/b03dbf73-23a1-4880-bda0-ee8dab1a0184)
* address.postalCode = "4206"
* address.city = "Gorinchem"
* address.country = "NL"

// ── Postal-code areas (Leerdam) ─────────────────────────────────────────────

Instance: 12aee287-c4d1-4c6e-90c3-a07a5280f5ef
InstanceOf: Location
Usage: #example
Title: "Area - Postal code 4141 Leerdam"
Description: "Example administrative area: postal-code area 4141 in Leerdam."
* status = #active
* name = "4141 Leerdam"
* physicalType = $location-physical-type#area "Area"
* partOf = Reference(Location/0540de85-0f4b-4b5c-a6fa-256afb8c31de)
* address.postalCode = "4141"
* address.city = "Leerdam"
* address.country = "NL"

Instance: defc8df0-5cd5-4287-ab16-48408924c2db
InstanceOf: Location
Usage: #example
Title: "Area - Postal code 4142 Leerdam"
Description: "Example administrative area: postal-code area 4142 in Leerdam."
* status = #active
* name = "4142 Leerdam"
* physicalType = $location-physical-type#area "Area"
* partOf = Reference(Location/0540de85-0f4b-4b5c-a6fa-256afb8c31de)
* address.postalCode = "4142"
* address.city = "Leerdam"
* address.country = "NL"
