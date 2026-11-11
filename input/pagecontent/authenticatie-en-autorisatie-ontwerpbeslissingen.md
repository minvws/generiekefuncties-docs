**Concept** · 11 november 2026

Deze notitie vat de [vervolgnotitie over clientregistratie en machtiging](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html) samen in vijf ontwerpbeslissingen (*architecture decision records*, ADR's), en sluit af met een voorstel. Per beslissing staan de vraag, de opties, het besluit, de reden en de gevolgen. De varianten, de onderbouwing en de technische uitwerking staan in de vervolgnotitie; de risico's in de [beveiligingsreview](./authenticatie-en-autorisatie-security-review.html).
{: .ig-lead}

Uitgangspunten:
- De dienstverlener handelt met een eigen identiteit, zijn certificaat, op basis van een machtiging van de zorgaanbieder.
- De eOverdracht moet in het eerste kwartaal van 2027 werken.
- De oplossing moet kunnen meegroeien naar de European Business Wallet (EBW).

# Overzicht

| ADR | Vraag | Besluit |
|---|---|---|
| [ADR-1](#adr-1-waar-staat-de-machtiging) | Waar staat de machtiging? | Bij de dienstverlener: aan de clientkant in het Client ID Metadata Document, aan de serverkant in de *Protected Resource Metadata* |
| [ADR-2](#adr-2-wie-ondertekent-de-machtiging) | Wie ondertekent de machtiging? | De vertrouwde dienstverlener, met de sleutel van het UZI-servercertificaat van de zorgaanbieder |
| [ADR-3](#adr-3-hoe-ziet-de-machtiging-eruit) | Hoe ziet de machtiging eruit? | Een SD-JWT VC, uitgegeven met OpenID4VCI, ten hoogste 3 maanden geldig |
| [ADR-4](#adr-4-hoe-worden-clients-geregistreerd) | Hoe worden clients geregistreerd? | Met een Client ID Metadata Document per zorgaanbieder, met de machtiging als `software_statement` |
| [ADR-5](#adr-5-welke-grant) | Welke grant? | *Client credentials*, met mTLS en een RAR-object; nog geen uitbreidbaarheid voor andere attestaties |

Deze beslissingen uit de vervolgnotitie blijven ongewijzigd:

| Onderwerp | Besluit | Vervolgnotitie |
|---|---|---|
| Clientauthenticatie | mTLS met het eigen certificaat van de dienstverlener (`tls_client_auth`); het access token is aan dat certificaat gebonden (RFC 8705) | [§2.5](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#25-clientauthenticatie-van-de-dienstverlener-mtls) |
| Access token | Uitgegeven door de authorization server van de bron, met een eigen sleutel, en ondoorzichtig voor de client | [§2.6](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#26-access-token-uitgifte-door-de-authorization-server-van-de-bron) |
| Reikwijdte | Machtigingscodes `<doel>-<rol>` op basis van PurposeOfUse, zoals `TREAT-user` | [§2.3](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#23-voorstel-voor-machtigingscodes) |
| RAR-object | Type `nl-gis-v1` met onder meer `subject_organization_id` en `purpose_of_use`; per verzoek | [§2.7](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#27-grant-en-rar-object) |

# ADR-1: Waar staat de machtiging?
**Vraag.** Staat de machtiging in een centraal register, de LRZa, of bij de dienstverlener die haar gebruikt?

**Opties.**
- *In de LRZa* (M3 tot en met M5): de zorgaanbieder registreert een `OrganizationAffiliation`, en de authorization server controleert die in zijn lokale replica.
- *Bij de dienstverlener* (M1, M2, M6 en M7): de machtiging is een ondertekende attestatie die de dienstverlener bewaart en laat zien.

**Besluit.** Bij de dienstverlener. De opvragende dienstverlener publiceert zijn machtiging in een Client ID Metadata Document ([ADR-4](#adr-4-hoe-worden-clients-geregistreerd)); de resource server van de bron publiceert de machtiging van de bronhoudende zorgaanbieder in zijn *Protected Resource Metadata* ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728)).

**Waarom.**
- Er staat geen register in de controle: de authorization server hoeft geen replica actueel te houden.
- Een compromittering van de LRZa kan geen geldige machtigingen maken, omdat de controle steunt op de handtekening.
- Beide dienstverleners publiceren de machtiging op dezelfde manier, in de metadata die OAuth daarvoor kent.

**Gevolgen.**
- De LRZa wordt alleen gebruikt om de vertrouwde dienstverlener van een zorgaanbieder te vinden, bij wie machtigingen worden aangevraagd.


# ADR-2: Wie ondertekent de machtiging?
**Opties.** De vertrouwde dienstverlener met de UZI-sleutel van de zorgaanbieder (M1); erkende uitgevers met een eigen sleutel (M2); een identiteitsattestatie met de UZI-sleutel naast een machtiging van een onafhankelijke notaris (M6); de zorgaanbieder zelf vanuit de EBW (later).

**Besluit.** De vertrouwde dienstverlener ([M1](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#m1--vertrouwde-dienstverlener-geeft-machtigingen-uit-met-de-uzi-sleutel-van-de-zorgaanbieder)). De zorgaanbieder wijst hem aan in de LRZa en keurt elke machtiging bij hem goed.

**Waarom.** Dit is in Q1 2027 haalbaar: er is geen nieuwe partij of erkenning nodig, het vertrouwen steunt op het wettelijk verankerde UZI-register, en veel zorgaanbieders laten hun UZI-servercertificaat nu al beheren door één leverancier.

**Gevolgen.**
- De vertrouwde dienstverlener kan zichzelf en anderen machtigen. Het vertrouwen in hem is even groot als nu, nu hij de UZI-sleutel beheert.
- Het gebruik van het UZI-servercertificaat voor het ondertekenen moet met het UZI-register (CIBG) worden afgestemd.
- M6 blijft een mogelijke vervolgstap om zelfmachtiging uit te sluiten.

# ADR-3: Hoe ziet de machtiging eruit?
**Vraag.** Welk formaat heeft de machtiging, en bereidt dat voor op de EBW?

**Opties.** Een eigen JWT; een FHIR-resource met een ondertekende `Provenance`; een SD-JWT VC.

**Besluit.** Een SD-JWT VC ([draft-ietf-oauth-sd-jwt-vc](https://datatracker.ietf.org/doc/draft-ietf-oauth-sd-jwt-vc/)) met de zorgaanbieder (`sub`), de dienstverlener (`may_act.sub`), de machtigingscodes (`scope`), de geldigheid (`nbf`, `exp`) en een kenmerk (`jti`). Het attestatieschema moet vastgelegd worden. De dienstverlener vraagt de machtiging aan met OpenID4VCI. Ze is ten hoogste 3 maanden geldig en wordt vernieuwd zolang de goedkeuring van de zorgaanbieder geldt; er is geen statuslijst.

**Bereidt dit voor op de EBW?** Grotendeels:
- De EUDI-wallet gebruikt volgens het *Architecture and Reference Framework* SD-JWT VC of ISO mdoc, met OpenID4VCI en OpenID4VP. Omdat een EBW attestaties moet kunnen uitwisselen met EUDI-wallets, ligt het voor de hand dat de EBW dezelfde standaarden gebruikt.
- De standaarden van de EBW liggen nog niet vast. Ze komen in uitvoeringshandelingen, en de verordening is nog niet aangenomen ([vervolgnotitie, bijlage B](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#bijlage-b-attestaties-in-de-european-business-wallet)).
- Bij de overstap veranderen in elk geval de ondertekenaar (de wallet van de zorgaanbieder), het vertrouwensanker (de Europese vertrouwenslijsten, met een koppeling van KvK-nummer of EUID aan het URA) en de intrekking (een statuslijst). Het formaat en het schema kunnen gelijk blijven.

**Gevolgen.** SD-JWT VC is een IETF-draft; bibliotheken zijn beschikbaar, onder meer uit de EUDI-referentie-implementatie. Zonder statuslijst werkt een ingetrokken goedkeuring pas door aan het einde van de looptijd.

# ADR-4: Hoe worden clients geregistreerd?
**Vraag.** Hoe weet een authorization server welke client een verzoek doet, zonder handmatige registratie in een netwerk met veel partijen?

**Opties.**

| Optie | Werking | Bezwaar |
|---|---|---|
| R1: dynamische registratie volgens UDAP | De client registreert zich met een ondertekend *software statement* | Per authorization server een `client_id` bewaren; UDAP is in de onderzochte producten (Keycloak, Duende) niet ingebouwd |
| R2a: uit het certificaat | De authorization server leidt de `client_id` af uit het certificaat | Geen standaard: maatwerk in elke authorization server |
| R2b: geen dynamische registratie, maar vooraf | De beheerder maakt clients aan uit een lijst van deelnemers, bijvoorbeeld afgeleid uit de LRZa | Een extra functie voor de LRZa, blijvend werk om de clients bij te houden, en een nieuwe deelnemer moet wachten totdat alle beheerders clients bijgewerkt hebben |
| R3: registratie met een eigen client-id | Bij een onbekende authorization server registreert de client zich volgens RFC 7591, met een `client_id` die hij zelf afleidt uit zijn certificaat | Geen standaard, en geen koppeling tussen de gevraagde `client_id` en het certificaat (zie hieronder) |
| R3 met idempotente registratie | De authorization server kent de `client_id` toe, maar geeft bij een nieuwe registratie met hetzelfde certificaat de bestaande client terug | Niet ondersteund in de onderzochte producten; RFC 7591 staat het toe, maar beschrijft niet hoe (zie hieronder) |
| R4: registratie met een toegekende client-id | Bij een onbekende authorization server registreert de client zich volgens RFC 7591; de server kent de `client_id` toe | Per authorization server een `client_id`, en eventueel een *registration access token*, bewaren; open registratie|
| R5: Client ID Metadata Document | De `client_id` is een URL waar de client zijn metadata publiceert | Een IETF-draft; de authorization server haalt het document op |

**Nadelen van een eigen client-id (R3).**
- *Geen standaard.* In RFC 7591 kiest de authorization server de `client_id`; het registratieverzoek heeft er geen veld voor. Het OIDC-registratie-endpoint van Keycloak weigert een verzoek met een `client_id`, en alleen het eigen registratieformaat van Keycloak accepteert er een. In Duende IdentityServer moet de generatie van client-id's worden aangepast. Een client moet dus per product een ander verzoek doen, of het GIS schrijft een uitbreiding voor die elk product moet bouwen.
- *Geen koppeling met het certificaat.* Geen van de producten controleert bij de registratie of de gevraagde `client_id` past bij het certificaat van de verbinding. Zonder die controle kan een andere deelnemer de `client_id` van een dienstverlener vooraf registreren met zijn eigen certificaat, en die dienstverlener zo buitensluiten. De controle is dezelfde profielregel als bij R2, en vraagt dus dezelfde uitbreiding.
- *Meer werk dan R2.* De authorization server heeft twee uitbreidingen nodig, een eigen client-id en de controle op het certificaat, in plaats van één. Elke client bouwt daarnaast de registratie en de foutafhandeling.

**Nadelen van idempotente registratie.** Hierbij kent de authorization server de `client_id` toe, maar levert een nieuwe registratie met hetzelfde certificaat dezelfde client op, zodat de client niets hoeft te bewaren. RFC 7591 (paragraaf 3.2.1) staat toe dat een server dezelfde `client_id` aan meerdere instanties van een client uitgeeft, maar beschrijft niet wanneer twee registraties dezelfde client zijn.
- *Niet ondersteund.* Keycloak en Duende IdentityServer maken bij elke registratie een nieuwe client met een nieuwe `client_id`. Een bestaande client herkennen vraagt in elk product maatwerk in het registratie-endpoint, inclusief het voorkomen van dubbele clients bij gelijktijdige registraties.
- *Dezelfde profielregel als R2.* De server moet bepalen wanneer twee registraties 'hetzelfde certificaat' hebben. Vergelijkt hij de *subject DN*, dan levert elke certificaatvernieuwing met een andere DN een nieuwe client op, en blijft de oude achter. Vergelijkt hij het KvK-nummer, de OIN of het URA, dan is het de afleidingsregel van R2, met een registratiestap ervoor.
- *Toch 'state' of een extra verzoek.* RFC 8705 vraagt de `client_id` in het tokenrequest. De client bewaart die dus alsnog, of registreert zich opnieuw vóór elk tokenrequest of na elke herstart.
- *Ongedefinieerd registration access token.* Of de server bij een nieuwe registratie van dezelfde client een nieuw *registration access token* uitgeeft, en wat er dan met het oude gebeurt, is niet vastgelegd.

Beide varianten verplaatsen de afleiding uit het certificaat (R2) naar het registratie-endpoint en voegen een registratiestap toe. Ze vragen daarmee meer werk dan R2, zonder dat het daardoor een standaard wordt.

**Besluit.** R5: een [Client ID Metadata Document](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#optie-r5-client-id-metadata-document) per zorgaanbieder, met de machtiging als `software_statement` ([M7](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#m7--machtiging-in-het-client-id-metadata-document-en-de-protected-resource-metadata)). Daarmee vallen registratie en publicatie van de machtiging samen: de authorization server leert de client en zijn machtiging uit hetzelfde document, zoals de opvragende dienstverlener de machtiging van de bron leert uit de *Protected Resource Metadata*.

**Waarom.**
- Er is geen registratie, en client en authorization server slaan niets over elkaar op.
- Het is een standaard, in plaats van een eigen profielregel per product.
- De dienstverlener beheert zijn eigen metadata: na certificaatvernieuwing of een nieuwe machtiging past hij alleen zijn document aan.

**Gevolgen.**
- Afspraken maken dat de host van de `client_id` als DNS-naam in het certificaat van de dienstverlener staat, hoe de *subject DN* in `tls_client_auth_subject_dn` wordt geschreven, en wat de maximale cacheduur en de maximale grootte van het document zijn.
- De authorization server maakt uitgaande verbindingen naar de documenten van dienstverleners, over mTLS en met maatregelen tegen *server-side request forgery*. Is een document onbereikbaar en de cache verlopen, dan krijgt die dienstverlener geen nieuw token.
- De specificatie is een draft (versie 03, november 2026), en de ondersteuning in producten is nog jong (zie het [voorstel](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- Een authorization server krijgt een client per combinatie van dienstverlener en zorgaanbieder.

# ADR-5: Welke grant?
**Vraag.** Kiezen we een grant waarmee later eenvoudig andere attestaties kunnen worden meegestuurd en die aansluit bij de EBW, of een eenvoudige standaardgrant?

**Opties.**
- *Token exchange* ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693)) met een `vp_token` ([M1](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#m1--vertrouwde-dienstverlener-geeft-machtigingen-uit-met-de-uzi-sleutel-van-de-zorgaanbieder)): de machtiging en eventuele andere attestaties, zoals een bewijs van de behandelrelatie, reizen mee in het `subject_token`, elk met een *key binding*-JWT. Uitbreidbaar.
- *Client credentials* ([RFC 6749](https://www.rfc-editor.org/rfc/rfc6749), paragraaf 4.4): de machtiging staat in het Client ID Metadata Document, en het verzoek bevat alleen mTLS en het RAR-object.

**Besluit.** *Client credentials*.

**Waarom de uitbreidbaarheid nu niet in de oplossing zit.**
- *Geen meerwaarde nu.* eOverdracht en BgZ hebben geen andere attestaties nodig: de behandelrelatie volgt daar uit de verwijzing of de Task.
- *Kosten en maatwerk.* Een token exchange met een eigen `subject_token_type` vraagt in elke authorization server een eigen grant-uitbreiding, en bij elke dienstverlener een eigen sleutel, *key binding*-JWT's en een administratie van gebruikte `nonce`-waarden.
- *Doorlooptijd.* Dat werk staat op gespannen voet met Q1 2027.
- *Onzekerheid.* Het is niet zeker dat de EBW dit profiel volgt. Een presentatie uit een wallet gaat vermoedelijk via OpenID4VP, met eisen uit HAIP; een eigen token-exchangeprofiel kan bij de introductie van de EBW alsnog moeten veranderen.

**Gevolgen.**
- Het verzoek en het RAR-object zijn niet ondertekend; mTLS beschermt ze alleen onderweg. De sleutel van het TLS-certificaat van de dienstverlener is de enige sleutel die zijn machtigingen beschermt.
- Komen er toepassingen die attestaties per verzoek nodig hebben, dan kan de token exchange uit de vervolgnotitie later worden toegevoegd. De machtiging, de uitgifte en het Client ID Metadata Document blijven dan gelijk.

# Voorstel: machtiging in Client ID Metadata Document en Protected Resource Metadata
Het voorstel combineert de vijf beslissingen. Beide dienstverleners publiceren de machtiging van hun zorgaanbieder in de OAuth-metadata: de opvragende dienstverlener in een Client ID Metadata Document, de bron in de *Protected Resource Metadata*. Daarmee ligt ook de clientregistratie vast, en blijft het tokenrequest een gewone aanvraag met *client credentials*. De specificatie staat in [GF Authentication](./authentication.html), de risico's in de [beveiligingsreview](./authenticatie-en-autorisatie-security-review.html#findings-for-the-proposed-variant).

## Werking
1. **Uitgifte.** De opvragende dienstverlener vraagt bij de vertrouwde dienstverlener van zijn zorgaanbieder een machtiging aan (OpenID4VCI). De zorgaanbieder keurt goed; de vertrouwde dienstverlener ondertekent met de UZI-sleutel van de zorgaanbieder.
2. **Publicatie door de opvragende dienstverlener.** Hij publiceert per zorgaanbieder een Client ID Metadata Document, bijvoorbeeld op `https://dienstverlener-a.nl/oauth/clients/ura-11111111`, met de machtiging als `software_statement`.
3. **Publicatie door de bron.** De resource server publiceert de machtiging van de bronhoudende zorgaanbieder in zijn *Protected Resource Metadata*.
4. **Controle van de bron.** De opvragende dienstverlener vindt het endpoint van de bron in zijn LRZa-replica, haalt de *Protected Resource Metadata* op en controleert de machtiging van de bron (`TREAT-custodian`, met `may_act.sub` tegen het servercertificaat).
5. **Tokenrequest.**

   ```
   POST /token HTTP/1.1                      (mTLS met het certificaat van dienstverlener A)
   Host: as.dienstverlener-b.nl
   Content-Type: application/x-www-form-urlencoded

   grant_type=client_credentials
   &client_id=https%3A%2F%2Fdienstverlener-a.nl%2Foauth%2Fclients%2Fura-11111111   (zie stap 2)
   &authorization_details=%5B%7B%22type%22%3A%22nl-gis-v1%22...%7D%5D
   ```

6. **Controle door de authorization server.** Hij controleert eerst het certificaat, en of de host van de `client_id` als DNS-naam in dat certificaat staat. Bij een onbekende of verlopen client haalt hij daarna het document op, over mTLS, en controleert hij de handtekening van de machtiging, de UZI-keten en het URA tegen `sub`. Bij elk tokenrequest controleert hij mTLS met de *subject DN*, de geldigheid van de machtiging, de intrekkingsstatus van het UZI-certificaat, `may_act.sub` tegen de identificatie uit het certificaat, en of `purpose_of_use` in het RAR-object past bij de machtigingscodes en `subject_organization_id` bij `sub`.
7. **Access token.** Gebonden aan het certificaat (`cnf.x5t#S256`), met de zorgaanbieder, de dienstverlener en het RAR-object. De resource server controleert het zoals in de vervolgnotitie.

## Blijft het een eenvoudige client-credentials-flow?
**Op de lijn: ja.** Het tokenrequest gebruikt alleen standaarden:
- *client credentials* (RFC 6749, paragraaf 4.4) met `tls_client_auth` en certificaatgebonden tokens (RFC 8705);
- `authorization_details` in het tokenrequest. RFC 9396 (paragraaf 6) bepaalt dat de authorization server bij *client credentials* de gevraagde `authorization_details` toetst aan het beleid voor de client; hier is dat de machtiging;
- een `client_id` uit een Client ID Metadata Document. De draft beschrijft vooral de autorisatiecodeflow, maar sluit *client credentials* niet uit: hij beperkt de grants tot wat document en server allebei ondersteunen, en beschrijft de foutafhandeling bij het token-endpoint.

De opvragende dienstverlener kan dus elke OAuth-clientbibliotheek gebruiken die mTLS ondersteunt.

**In de authorization server: niet zonder maatwerk.**
- Geen van de onderzochte producten haalt bij *client credentials* een Client ID Metadata Document op. Keycloak ondersteunt het experimenteel en alleen bij een autorisatieverzoek; Duende IdentityServer ondersteunt het niet.
- Geen van de producten controleert een machtiging in een `software_statement`, of toetst `authorization_details` aan een machtiging.

Het maatwerk zit bij het laden en controleren van de client, en bij de verwerking van het RAR-object. Een eigen grant is niet nodig.

## Wat er moet gebeuren in Keycloak en Duende IdentityServer

| Onderdeel | Keycloak | Duende IdentityServer |
|---|---|---|
| **Document ophalen en client aanmaken** | Een eigen clientauthenticator in de clientauthenticatieflow van de realm (Java, intern uitbreidingspunt). Bij een `client_id` die een HTTPS-URL is, haalt hij het document op en maakt of werkt hij de client bij: *client credentials*, X.509-clientauthenticatie met de *subject DN*, certificaatgebonden tokens. De ingebouwde CIMD-ondersteuning (feature `cimd`) werkt alleen bij een autorisatieverzoek, maar de logica voor het ophalen en controleren is mogelijk herbruikbaar. | Een eigen client store (`IClientStore`, gedocumenteerd uitbreidingspunt). Bij een `client_id` die een HTTPS-URL is, haalt hij het document op en bouwt hij de client: *client credentials* en een *secret* van het type `X509CertificateName` met de *subject DN*. Duende kan geladen clients cachen; de cacheduur volgt de afspraken. |
| **mTLS en gebonden token** | Ingebouwd. | Ingebouwd (`AddMutualTlsSecretValidators`); het token wordt automatisch aan het certificaat gebonden. |
| **Machtiging controleren** | In de eigen clientauthenticator: de handtekening, de UZI-keten met de intrekkingsstatus, de geldigheid, `may_act.sub` en de host tegen het certificaat. Het URA en de machtigingscodes worden vastgelegd als attributen van de client. | In de eigen client store: de handtekening, de UZI-keten met de intrekkingsstatus en de geldigheid; het URA en de machtigingscodes worden vastgelegd als claims van de client. De controle van `may_act.sub` en de host tegen het certificaat van de verbinding gebeurt per verzoek in een `ICustomTokenRequestValidator` (gedocumenteerd uitbreidingspunt). |
| **RAR-object toetsen** | Keycloak bewaart `authorization_details` bij *client credentials* als notitie voor eigen *protocol mappers*. Een eigen *client policy executor* (intern uitbreidingspunt) weigert het verzoek als `purpose_of_use` niet bij de machtigingscodes past of `subject_organization_id` niet bij het URA. | In dezelfde `ICustomTokenRequestValidator`: `authorization_details` lezen, toetsen aan de machtigingscodes en het URA, en zo nodig weigeren. |
| **Claims in het access token** | Eigen *protocol mapper*: de zorgaanbieder, de dienstverlener en `authorization_details`. | In de `ICustomTokenRequestValidator`: claims toevoegen aan het token. |
| **Configuratie** | De feature `cimd` is niet nodig als de eigen clientauthenticator het document zelf ophaalt. Vertrouwde CA's (PKIoverheid en UZI), intrekkingscontrole, beperking van uitgaande verbindingen. | Vertrouwde CA's, intrekkingscontrole, beperking van uitgaande verbindingen. |

De controle van de machtiging is in beide producten dezelfde logica. Een gedeelde, open-source verificatiecomponent, zoals voorgesteld in [bijlage C](./authenticatie-en-autorisatie-vervolg-mandaat-clientregistratie.html#bijlage-c-impact-op-authorization-servers) van de vervolgnotitie, beperkt het werk per product tot een dunne koppeling.

De opvragende dienstverlener hoeft niets bijzonders te bouwen: hij haalt machtigingen op met OpenID4VCI, publiceert een document per zorgaanbieder, controleert de machtiging van de bron in de *Protected Resource Metadata*, en gebruikt een standaard OAuth-client met mTLS.

## Wat niet in dit voorstel zit
De gewenste uitbreidbaarheid voor andere attestaties zit niet in dit voorstel. Die heeft nu geen meerwaarde, maar wel kosten: maatwerk in elke authorization server en bij elke dienstverlener, een langere doorlooptijd, en de onzekerheid dat de introductie van de EBW alsnog een wijziging vraagt ([ADR-5](#adr-5-welke-grant)). Is de uitbreidbaarheid later nodig, dan kan de token exchange uit de vervolgnotitie worden toegevoegd, zonder dat de machtiging verandert.

## Open punten
- **Specificatie.** Het Client ID Metadata Document is een IETF-draft, en het gebruik met *client credentials* is in de praktijk nog weinig beproefd. Een test met Authorization Server-producten van pilot-deelnemers is nodig om de haalbaarheid vast te stellen.
- **Nog te bepalen details:** De regel dat de host van de `client_id` in het certificaat staat, de schrijfwijze van de *subject DN*, de maximale cacheduur en grootte van het document, het attestatieschema van de machtiging, en de naam van de parameter in de *Protected Resource Metadata*.