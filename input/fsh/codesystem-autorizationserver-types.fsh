CodeSystem: NlGfAuthorizationServerCS
Id: nl-gf-authorization-server-cs
Title: "NL GF Authorization Server CodeSystem"
Description: "Local code system for authorization and security protocol flavors used on endpoints in NL Generic Functions. Inspired by endpoint-connection-type style coding."
* ^url = "http://minvws.github.io/generiekefuncties-docs/CodeSystem/nl-gf-authorization-server-cs"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #oauth2 "OAuth 2.0" "Endpoint uses OAuth 2.0 authorization framework."
* #oauth2-fapi2 "OAuth 2.0 FAPI 2" "Endpoint uses OAuth 2.0 with Financial-grade API (FAPI) 2 security profile requirements."
* #oauth-nuts "OAuth 2.0 NUTS" "Endpoint uses OAuth 2.0 with NUTS-based trust and authentication profile constraints."


