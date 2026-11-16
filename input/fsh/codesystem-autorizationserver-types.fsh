CodeSystem: NlGfAuthorizationServerCS
Id: nl-gf-authorization-server-cs
Title: "NL GF Authorization Server CodeSystem"
Description: "Local code system for authorization and security protocol flavors used on endpoints in NL Generic Functions. For the OAuth codes (`oauth2`, `oauth2-fapi2` and `oauth-nuts`), the Address SHALL point to the metadata endpoint of the authorization server, and the PayloadType value SHALL be set to 'http://terminology.hl7.org/CodeSystem/endpoint-payload-type|none'. For `openid4vci`, see the definition of that code."
* ^status = #active
* ^experimental = true
* ^caseSensitive = true
* #oauth2 "OAuth 2.0" "Endpoint uses OAuth 2.0 authorization framework."
* #oauth2-fapi2 "OAuth 2.0 FAPI 2" "Endpoint uses OAuth 2.0 with Financial-grade API (FAPI) 2 security profile requirements."
* #oauth-nuts "OAuth 2.0 NUTS" "Endpoint uses OAuth 2.0 with NUTS-based trust and authentication profile constraints."
* #openid4vci "OpenID4VCI" "Endpoint is a Credential Issuer according to OpenID for Verifiable Credential Issuance 1.0. The Address SHALL be the Credential Issuer Identifier. The PayloadType states the type of credential that is issued, for example `URA-signed-mandate`."
