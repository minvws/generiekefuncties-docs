CodeSystem: NlGfAuthorizationServerCS
Id: nl-gf-authorization-server-cs
Title: "NL GF Authorization Server CodeSystem"
Description: "Local code system for authorization and security protocol flavors used on endpoints in NL Generic Functions. The Address SHALL point to the metadata endpoint of the authorization server. The PayloadType value for these connectionTypes SHALL be set to 'http://terminology.hl7.org/CodeSystem/endpoint-payload-type|none'"
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #oauth2 "OAuth 2.0" "Endpoint uses OAuth 2.0 authorization framework."
* #oauth2-fapi2 "OAuth 2.0 FAPI 2" "Endpoint uses OAuth 2.0 with Financial-grade API (FAPI) 2 security profile requirements."
* #oauth-nuts "OAuth 2.0 NUTS" "Endpoint uses OAuth 2.0 with NUTS-based trust and authentication profile constraints."