**Concept** · 16 oktober 2026

Deze notitie is een vervolg op de notitie [*Harmonisatie van authenticatie en autorisatie voor de gegevensuitwisselingen BgZ en eOverdracht*](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html) (versie 0.95, hierna: de notitie). Op het concept van de notitie zijn reacties ontvangen van onder meer Silizo, ChipSoft, Twiin, UMCG, Nedap, de Nuts Kring Techniek, VZVZ (AORTA/LSP) en RSO Nederland. Twee punten komen in vrijwel alle inhoudelijke reacties terug en deze zijn de focus voor dit document:

- **Clientregistratie.** De notitie beschrijft niet hoe een authorization server een OAuth-client herkent. FAPI 2.0 gaat uit van een bekende *confidential client*, en handmatige, bilaterale registratie schaalt niet in een netwerk met veel partijen.
- **Sleutelbeheer en mandatering.** De notitie laat de zorgaanbieder het tokenrequest én het access token ondertekenen met de sleutel van zijn UZI-servercertificaat. In de praktijk beheert vaak een dienstverlener die sleutel: een leverancier, SaaS-platform of knooppunt. Reviewers vinden dat onwenselijk en stellen voor dat de dienstverlener met een eigen identiteit handelt, op basis van een mandaat van de zorgaanbieder.

Deze notitie geeft een voorstel ter aanscherping van hoofdstuk 6 (*Technische keuzes en onderbouwing*) van de notitie. Het juridisch kader (hoofdstuk 4) en de eisen en GISA-uitgangspunten (hoofdstuk 5) blijven ongewijzigd. Voor deze uitwerking zijn diverse verkenningen gedaan naar vormen van serviceprovider-mandatering, (dynamic) client registration, en zelfs verkenning van andere frameworks (o.a. iSHARE, PSD2 en OpenID Federation).
{: .ig-lead}

# Inhoudsopgave

- [Rollen: zorgaanbieder en dienstverlener](#1-rollen-zorgaanbieder-en-dienstverlener)
- [Gewijzigde technische keuzes](#2-gewijzigde-technische-keuzes)
  - [2.1 Ongewijzigde keuzes](#21-ongewijzigde-keuzes)
  - [2.2 Registratie van OAuth-clients](#22-registratie-van-oauth-clients)
  - [2.3 Clientauthenticatie van de dienstverlener: mTLS](#23-clientauthenticatie-van-de-dienstverlener-mtls)
  - [2.4 Mandaat in plaats van ondertekening door de zorgaanbieder](#24-mandaat-in-plaats-van-ondertekening-door-de-zorgaanbieder)
  - [2.5 Access token: uitgifte door de authorization server van de bron](#25-access-token-uitgifte-door-de-authorization-server-van-de-bron)
  - [2.6 Grant en RAR-object](#26-grant-en-rar-object)
  - [2.7 Voorstel voor mandaatcodes](#27-voorstel-voor-mandaatcodes)
- [Toetsing aan eisen en uitgangspunten](#3-toetsing-aan-eisen-en-uitgangspunten)
- [Verwerking van de reacties](#4-verwerking-van-de-reacties)
- [Conclusie en openstaande besluiten](#5-conclusie-en-openstaande-besluiten)
- [Bijlage: voorbeelden van de technische flow](#bijlage-voorbeelden-van-de-technische-flow)
  - [A. M2: mandaat in de lokale LRZa-replica](#a-m2-mandaat-in-de-lokale-lrza-replica)
  - [B. M1 en M3: mandaat als `subject_token`](#b-m1-en-m3-mandaat-als-subject_token)
- [Bijlage: mogelijke beveiligingsrisico's](#bijlage-mogelijke-beveiligingsrisicos)

# 1. Rollen: zorgaanbieder en dienstverlener
De oorspronkelijke notitie maakt geen onderscheid tussen de zorgaanbieder en de partij die de techniek levert. Dit voorstel onderscheidt twee rollen:

- **Zorgaanbieder:** de verwerkingsverantwoordelijke, geïdentificeerd met het URA. De zorgaanbieder bepaalt welke dienstverlener namens hem mag handelen en voor welke doelen (paragraaf 2.7).
- **Dienstverlener:** de partij die de technische voorziening levert en beheert, zoals een EPD-leverancier, SaaS-platform, knooppunt, of de zorgaanbieder zelf bij eigen beheer. Aan de opvragende kant beheert de dienstverlener de OAuth-client, aan de bronkant de authorization server en de resource server. De dienstverlener heeft een eigen certificaat, bijvoorbeeld een PKIoverheid-servercertificaat met zijn KvK-nummer of OIN.

Eén dienstverlener handelt doorgaans namens veel zorgaanbieders, en één zorgaanbieder kan meerdere dienstverleners hebben. Het mandaat legt per combinatie vast wat de dienstverlener mag.

Dit past bij GISA-keuze A44: het vertrouwen op de transportlaag ligt bij de verantwoordelijken voor de verbinding (de dienstverleners), het vertrouwen tussen verzender en ontvanger van gezondheidsgegevens op de applicatielaag (het mandaat). Het uitvoerende systeem wordt daarmee een herkenbare technische actor in de transactie en kan daardoor ook meegenomen worden in de logging.

# 2. Gewijzigde technische keuzes

## 2.1 Ongewijzigde keuzes
De volgende keuzes uit de notitie blijven van kracht: **OAuth 2.0** als basis; de beveiligingsmaatregelen uit **FAPI 2.0** (asymmetrische clientauthenticatie, *sender-constrained* access tokens, verplichte transportbeveiliging en strikte validatie); **Rich Authorization Requests** (RAR, [RFC 9396](https://www.rfc-editor.org/rfc/rfc9396)) voor zorgspecifieke attributen; en **mTLS op de transportlaag**, voorlopig met UZI-servercertificaten of PKIoverheid-certificaten.

## 2.2 Registratie van OAuth-clients
Een authorization server moet bij elk tokenrequest vaststellen welke client het verzoek doet en met welk sleutelmateriaal. FAPI 2.0 schrijft niet voor hoe clients worden geregistreerd. Twee oplossingen zijn beschouwd.

### Optie R1: Dynamic Client Registration naar voorbeeld van UDAP
De dienstverlener registreert zich bij elke authorization server via [Dynamic Client Registration](https://www.rfc-editor.org/rfc/rfc7591) (RFC 7591), geprofileerd volgens het HL7 [UDAP Security IG](https://hl7.org/fhir/us/udap-security/STU2/). Hij ondertekent een *software statement* met de sleutel van zijn certificaat, dat in `x5c` meereist. De authorization server valideert handtekening, certificaatketen en intrekkingsstatus en geeft een `client_id` uit. Bij elk volgend tokenrequest valideert de server de keten opnieuw. De Europese concept-specificatie [EU Health Data API](https://github.com/euridice-org/eu-health-data-api) gaat voor systeemkoppelingen uit van registratie buiten het protocol om. UDAP noemt zij alleen als mogelijkheid voor toegang op gebruikersniveau, die buiten haar scope valt.

- *Voordelen:* gestandaardiseerd protocol met een uitgewerkt zorgprofiel (UDAP STU2, december 2025), gebruikt in de Verenigde Staten, onder meer in TEFCA; de client is daarna bekend bij de server, zoals autorisatiesoftware verwacht; een software statement kan productnaam, versie of certificeringen vastleggen.
- *Nadelen:* een extra stap en extra 'state' aan client en server-zijde, want per authorization server een registratie en een `client_id`, met herregistratie bij certificaatvernieuwing.

### Optie R2: client-id afgeleid uit het clientcertificaat
De registratiestap vervalt. De authorization server leidt de `client_id` af uit een persistente identificatie in het certificaat van de dienstverlener: bij een PKIoverheid-certificaat het attribuut `organizationIdentifier` met KvK-nummer of OIN ([PKIoverheid PvE v5.4](https://cp.pkioverheid.nl/pkioverheid-por-v5.4.html), §7.1.4.2.2.10), bij een UZI-servercertificaat het URA in de `subjectAltName`. De client stuurt deze waarde als `client_id` mee, zoals [RFC 8705](https://www.rfc-editor.org/rfc/rfc8705) vraagt, en de server controleert of die overeenkomt met het certificaat.

Dit is de praktijk in het Europese betalingsverkeer. Onder PSD2 identificeert een bank een betaaldienstverlener (TPP) uitsluitend met diens eIDAS-certificaat; de Berlin Group-specificatie gebruikt het `organizationIdentifier` uit dat certificaat als `client_id` ([Berlin Group V2.4.1, §8.8](https://berlin-group.org/wp-content/uploads/2026/09/11c.-Berlin-Group-openFinance-API-Framework-Core-PSD2-Compliance-V2-Suite-Protocol-Functions-and-Security-Measures-V2.4.1-20260731.pdf)).

Voordelen:
- **Geen 'state'.** Clients en servers hoeven geen `client_id` uit te wisselen of bij te houden; er is geen registratie die kan verouderen. Maakt de autorisatiesoftware toch een clientrecord aan (zie de nadelen), dan is dat volledig af te leiden uit het certificaat.
- **Geen herregistratie.** De identificatie blijft gelijk bij certificaatvernieuwing.
- **Geen registratie-endpoint en geen software statements** om te beheren en te valideren.
- **Europese praktijk in bancaire sector** in een verplicht, grensoverschrijdend stelsel, en verenigbaar met FAPI 2.0.

Nadelen:
- Gangbare autorisatiesoftware verwacht vooraf geregistreerde clients. De server moet een client bij het eerste geldige verzoek automatisch kunnen aanmaken (*registratie bij eerste gebruik*); dat kan configuratie of een uitbreiding vragen.
- RFC 8705 vergelijkt het certificaat met één verwachte subject-waarde per client. Het afleiden van de `client_id` uit één attribuut is een profielregel die het stelsel moet vastleggen.
- Er is geen plek voor clientmetadata. Wat een dienstverlener mag, volgt uit het mandaat en de stelselafspraken.
- De `client_id` identificeert de dienstverlener als organisatie. Voor herleidbaarheid naar het systeem logt de ontvanger ook serienummer en domeinnaam (FQDN) van het certificaat.

### Software statements en certificering zijn niet nodig
Het belangrijkste voordeel van R1 is dat een software statement of certificering van de client kan worden vastgelegd. Echter, daar is geen noodzaak voor:

- NEN 7513 vraagt dat uit de logging kan worden vastgesteld welke externe systemen gegevens hebben ontvangen, maar schrijft niet voor dat softwareproduct, versie of kwalificatie worden vastgelegd. Het certificaat van de dienstverlener identificeert het externe systeem voldoende.
- De EHDS legt de verantwoordelijkheid voor conformiteit bij de fabrikant zelf, via een verplichte zelfbeoordeling: met de EU-conformiteitsverklaring "the manufacturer shall assume responsibility for the compliance" ([Verordening (EU) 2025/327](https://eur-lex.europa.eu/eli/reg/2025/327/oj), art. 39 lid 5). Een software statement van de dienstverlener zelf voegt daar voor de ontvanger weinig aan toe. Certificeringen door derden zijn in UDAP wel mogelijk, maar de EHDS vereist die niet.

### Voorstel
Optie R2: geen verplichte clientregistratie; de authorization server leidt de `client_id` af uit het certificaat van de dienstverlener. Naar analogie van het Europese betalingsverkeer/PSD2 mag een authorization server geen aanvullende registratie verplicht stellen. Een authorization server mag een dienstverlener wel lokaal blokkeren (paragraaf 2.3).

Om te voorkomen dat een `client_id` uit een verkeerd certificaat wordt afgeleid, gelden de volgende eisen:
- De authorization server accepteert alleen servercertificaten van een in het stelsel vastgelegde lijst van uitgevende CA's en certificaatbeleid: PKIoverheid-servercertificaten en UZI-servercertificaten (pastype `S`). Standaard-truststores van het besturingssysteem of de gateway worden niet gebruikt.
- Het certificaat bevat de *extended key usage* `clientAuth`.
- Persoonsgebonden certificaten worden geweigerd, ook als ze een `organizationIdentifier` of URA bevatten. Dat geldt voor PKIoverheid-persoonscertificaten en voor UZI-passen (pastypes `Z`, `N` en `M`).
- Of de client de zorgaanbieder zelf is (M0), volgt uit het certificaattype (een UZI-servercertificaat), niet uit een vergelijking van nummers.

## 2.3 Clientauthenticatie van de dienstverlener: mTLS
De dienstverlener authenticeert zich met zijn **eigen** certificaat, niet met de UZI-sleutel van de zorgaanbieder. Het voorstel is om voor clientauthenticatie én voor *sender-constrained* access tokens uitsluitend **mTLS** te gebruiken ([RFC 8705](https://www.rfc-editor.org/rfc/rfc8705)), in plaats van `private_key_jwt` en DPoP uit de notitie. De dienstverlener authenticeert zich met zijn certificaat in de TLS-verbinding die er volgens de GISA al is (`tls_client_auth`), en de authorization server bindt het access token aan dat certificaat (`cnf.x5t#S256`). FAPI 2.0 staat deze methode toe.

Deze keuze is mogelijk doordat de verbinding tussen dienstverleners en het vertrouwen tussen verzender en ontvanger (het mandaat) uit elkaar zijn gehaald. De notitie koos `private_key_jwt` onder meer omdat het transportcertificaat de zorgaanbieder niet altijd identificeert. Nu de dienstverlener zelf de client is, vervalt dat argument: het transportcertificaat identificeert juist de dienstverlener, die verantwoordelijk is voor de verbinding, en de identiteit van de zorgaanbieder wordt op de applicatielaag geborgd met het mandaat. Dit blijft binnen het juridisch kader en de GISA.

Voordelen:
- **Eén mechanisme** voor transport, clientauthenticatie en tokenbinding. Een JWKS-endpoint per zorgaanbieder, client assertions en DPoP-proofs zijn niet meer nodig.
- **Integriteit van het tokenrequest tijdens transport.** TLS beschermt alles wat over de verbinding gaat tegen wijziging, en bij mTLS heeft de dienstverlener zich in dezelfde verbinding met zijn certificaat geauthenticeerd. Zolang de verbinding niet onderweg wordt beëindigd, kan geen tussenpartij het tokenrequest, inclusief het RAR-object, ongemerkt wijzigen, en weet de authorization server dat het verzoek van de geauthenticeerde dienstverlener komt. Dit is geen ondertekening: achteraf kan de authorization server niet aan derden aantonen wat de dienstverlener precies heeft verzocht. Bij `private_key_jwt` is dat evenmin het geval, omdat de client assertion het RAR-object niet ondertekent.

Aandachtspunten:
- **Intrekkingscontrole van het clientcertificaat.** De authorization server en de resource server controleren de intrekkingsstatus van het certificaat van de dienstverlener via OCSP of de CRL van de vertrouwensdienstverlener. Het stelsel legt een maximale ouderdom van het OCSP-antwoord of de CRL vast, los van `nextUpdate`. Is de intrekkingsstatus onbekend of niet op te halen, dan weigert de server het verzoek (*fail-closed*). RFC 8705 laat het aan de server over of en hoe hij de intrekking controleert; het stelsel moet die controle daarom voorschrijven. Dit geldt voor alle mandaatvarianten. Omgekeerd controleert de opvragende dienstverlener op dezelfde manier de intrekkingsstatus van het servercertificaat van de dienstverlener van de bron, en of die dienstverlener is geschorst.
- **Schorsen van een dienstverlener.** Intrekken van zijn certificaat is de snelste manier om een gecompromitteerde dienstverlener af te sluiten, maar werkt pas als de vertrouwensdienstverlener de intrekking publiceert. Daarnaast komt er een stelselvoorziening om een dienstverlener te schorsen, bijvoorbeeld een status van de dienstverlener in de LRZa of het in één keer deactiveren van al zijn mandaten; authorization servers controleren die. Een authorization server mag een dienstverlener ook lokaal blokkeren.
- **Kortlevende access tokens.** Access tokens zijn kort geldig, in de orde van minuten, zodat een intrekking of schorsing snel doorwerkt.
- **TLS-terminatie.** mTLS moet doorlopen tot de authorization server en de resource server. Een doorgegeven clientcertificaat, bijvoorbeeld in een header volgens het informatieve [RFC 9440](https://www.rfc-editor.org/rfc/rfc9440), bevat alleen het publieke certificaat: wie die header kan zetten, kan zich voordoen als elke dienstverlener. Daarom:
  - TLS wordt alleen beëindigd binnen het eigen beheerdomein van de beheerder van de authorization server en de resource server.
  - Een knooppunt of intermediair van een andere partij beëindigt de TLS-verbinding niet, maar geeft die ongewijzigd door, of treedt zelf als OAuth-client op met een eigen mandaat.
  - Een interne gateway verwijdert of overschrijft binnenkomende certificaatheaders, valideert zelf keten, certificaatbeleid en intrekkingsstatus, en geeft het certificaat alleen via een geauthenticeerd kanaal door aan de achterliggende server.
  - De naleving wordt getoetst, onder meer met tests op het injecteren van certificaatheaders.
- Als GIS Veilig Netwerk in de toekomst certificaten voorschrijft die niet de dienstverlener zelf identificeren, moet deze keuze opnieuw worden bekeken.

## 2.4 Mandaat in plaats van ondertekening door de zorgaanbieder
Omdat niet elke dienstverlener het UZI-servercertificaat en de sleutel van de zorgaanbieder heeft, en dat ook niet wenselijk is, gaat het mandaatprincipe uit van ondertekening van het tokenrequest door de dienstverlener zelf. Het mandaat zorgt voor het vertrouwen tussen verzender en ontvanger van gezondheidsgegevens: het legt vast dat de zorgaanbieder de dienstverlener heeft aangewezen om namens hem te handelen.

Een mandaat bevat in alle varianten dezelfde gegevens. Die sluiten aan op de [`OrganizationAffiliation`](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/StructureDefinition-nl-gf-organizationaffiliation.html) uit de [Care Service Directory](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/csd.html), die in de LRZa al wordt gebruikt om dienstverleners te machtigen voor het beheer van adresgegevens.

| Gegeven | Ondertekend mandaat (JWT) | `OrganizationAffiliation` |
|---|---|---|
| Zorgaanbieder (mandaatgever) | `sub` (URA) | `organization` |
| Dienstverlener (gemandateerde) | `may_act.sub` (de `client_id`, bijvoorbeeld KvK-nummer) | `participatingOrganization` |
| Reikwijdte | `scope` (mandaatcodes, paragraaf 2.7) | `code` |
| Geldigheid | `nbf` en `exp` | `period` en `active` |
| Unieke referentie | `jti` | `identifier` |
| Ondertekenaar | `iss` en `x5c` | Zorgaanbieder via het LRZa-portaal; geauthenticeerd door eHerkenning |


### M0 — Dienstverlener ondertekent met het UZI-certificaat van de zorgaanbieder
De zorgaanbieder vraagt een UZI-servercertificaat aan en laat de sleutel beheren door de dienstverlener, die daarmee optreedt *als* de zorgaanbieder. Dit is de opzet zoals die in de originele notitie staat en dient hier als referentie/baseline.

- *Voordelen:* geen nieuwe techniek; het URA zit in het certificaat en de intrekking verloopt via het UZI-register.
- *Nadelen:* de dienstverlener beheert de private sleutel van de zorgaanbieder en is cryptografisch niet van hem te onderscheiden; meerdere dienstverleners betekent meerdere certificaten of een gedeelde sleutel; compromittering van een dienstverlener raakt al zijn zorgaanbieders. Hiertegen maken de meeste reacties bezwaar.

### M1 — Zorgaanbieder ondertekent het mandaat met zijn UZI-sleutel
De zorgaanbieder houdt de sleutel van zijn UZI-servercertificaat zelf in beheer (of bij een vertrouwde dienstverlener) en ondertekent daarmee periodiek, bijvoorbeeld eens per 3 maanden, een mandaat. Het mandaat is een JWT met het UZI-certificaat en de keten in de header:

```json
{
  "typ": "nl-gf-mandate+jwt",
  "alg": "RS256",
  "x5c": ["<UZI-servercertificaat van zorgaanbieder A>", "<UZI-register Server CA>"]
}
```

```json
{
  "iss": "urn:oid:2.16.528.1.1007.3.3.11111111",
  "sub": "urn:oid:2.16.528.1.1007.3.3.11111111",
  "may_act": { "sub": "NTRNL-90000001" },
  "scope": "TREAT-user TREAT-custodian",
  "iat": 1792108800,
  "nbf": 1792108800,
  "exp": 1799884800,
  "jti": "5f0c2a8e-3b7d-4c1e-9a6f-2d8b7e4c1a90",
  "status": {
    "status_list": { "idx": 412, "uri": "https://mandaten.zorgaanbieder-a.nl/statuslists/1" }
  }
}
```

Het mandaat gaat mee als parameter `subject_token` in een tokenrequest volgens OAuth 2.0 Token Exchange ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693)). De authorization server valideert de handtekening, de UZI-keten en de intrekkingsstatus, en controleert dat het URA in het certificaat gelijk is aan `sub` en dat `may_act.sub` gelijk is aan de geauthenticeerde `client_id`. Alleen een UZI-servercertificaat (pastype `S`) mag een mandaat ondertekenen. Een statusmechanisme voor tussentijdse intrekking is verplicht, bijvoorbeeld een statuslijst volgens [draft-ietf-oauth-status-list](https://datatracker.ietf.org/doc/draft-ietf-oauth-status-list/) (claim `status`). De statuslijst wordt ondertekend door de ondertekenaar van het mandaat (hetzelfde URA) of door een statusuitgever die het stelsel aanwijst, en niet door de gemandateerde dienstverlener. De authorization server controleert de status en de ondertekenaar daarvan bij elk tokenrequest, met een vastgestelde maximale cachetijd. Is de status onbekend of niet op te halen, dan weigert hij het verzoek (*fail-closed*). Zie de [bijlage](#b-m1-en-m3-mandaat-als-subject_token).

- *Voordelen:* federatief verifieerbaar, zonder bevraging van de LRZa of een andere mandaatvoorziening. De intrekkingsstatus van het UZI-certificaat vraagt wel een (cachebare) OCSP- of CRL-controle bij het UZI-register, een centrale voorziening. De dienstverlener heeft een eigen identiteit en de zorgaanbieder houdt de UZI-sleutel in eigen beheer.
- *Nadelen:* de zorgaanbieder heeft een UZI-servercertificaat en een **ondertekendienst** nodig. Die vraagt investering en doorlopend beheer: veilige sleutelopslag (HSM of cloud-KMS) met toegangsbeheer en back-up; software en procedures om mandaten op te stellen en te ondertekenen; het opnieuw ondertekenen van alle mandaten bij verloop en certificaatvernieuwing; een beschikbaar intrekkingsmechanisme; en opname in de NEN 7510-scope met audits en logging. Voor kleine zorgaanbieders, zoals in de VVT of de huisartsenzorg, is dit onevenredig, en niet alle zorgaanbieders hebben een UZI-servercertificaat. Beheert de dienstverlener in een SaaS-situatie toch de UZI-sleutel, dan kan hij zijn eigen mandaat ondertekenen en biedt M1 weinig meer dan M0. Het verplichte statusmechanisme moet de zorgaanbieder beschikbaar houden; de IETF-specificatie voor statuslijsten is nog een draft. Of het UZI-servercertificaat voor het ondertekenen van mandaten mag worden gebruikt, moet met het UZI-register (CIBG) worden afgestemd: het certificaatbeleid beschrijft dit certificaat voor de authenticatie van systemen en de beveiliging van communicatie.

### M2 — `OrganizationAffiliation` in de LRZa
De zorgaanbieder registreert het mandaat in het LRZa-portaal, na inloggen met eHerkenning, als `OrganizationAffiliation` met de dienstverlener als `participatingOrganization` en een mandaatcode als `code`. Een dienstverlener mag zichzelf niet kunnen mandateren. De LRZa accepteert deze registraties al alleen van zorgaanbieders, "not by the parties that are being authorized" ([Care Service Directory, Security](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/csd.html#security)). Dat is alleen sluitend met de volgende eisen, die een aanpassing van de Care Service Directory vragen:
- Mandaten met een mandaatcode worden uitsluitend via het LRZa-portaal geregistreerd, gewijzigd en ingetrokken, door de zorgaanbieder zelf na inloggen met eHerkenning op minimaal niveau EH3; het precieze niveau moet nog worden vastgesteld. De machine-interface voor gegevensbronnen (ITI-130-NL) accepteert geen `OrganizationAffiliation` met een mandaatcode.
- Inloggen met een eHerkenning-ketenmachtiging is voor deze dienst niet toegestaan. Het portaal weigert een registratie als de handelende organisatie niet de zorgaanbieder zelf is.
- Bij een nieuw mandaat stuurt de LRZa een melding naar contactgegevens van de zorgaanbieder die dienstverleners niet kunnen wijzigen, bijvoorbeeld uit het UZI-register of het Handelsregister, en niet uit `Organization.telecom`. Het mandaat wordt pas na een vaste wachttijd actief, zodat de zorgaanbieder kan ingrijpen.
- De zorgaanbieder ziet in het portaal een overzicht van alle mandaten die hij heeft gegeven.

Het mandaat wordt gerepliceerd naar de lokale LRZa-replica's van dienstverleners (ITI-91-NL). Zodat een wijziging of intrekking tijdig doorwerkt, gelden verder:
- De authorization server weigert verzoeken op basis van een mandaat als de laatste geslaagde synchronisatie van zijn replica ouder is dan een vastgestelde maximale ouderdom, bijvoorbeeld een uur. Dezelfde eis geldt voor de opvragende dienstverlener bij zijn controle van het mandaat van de bron.
- De authorization server controleert naast `active` ook de `period` van de `OrganizationAffiliation` en de status van de betrokken organisaties. De replica verwerkt ook verwijderingen.
- De LRZa deactiveert de mandaten van een zorgaanbieder als diens registratie in het UZI-register eindigt.

Bij het tokenrequest reist **geen mandaat** mee. De dienstverlener vermeldt in het RAR-object namens welke zorgaanbieder (`subject_organization_id`) en met welk doel (`purpose_of_use`) hij handelt. De controle gebeurt aan beide kanten in de lokale LRZa-replica:

- De **authorization server van de bron** controleert of er een actieve `OrganizationAffiliation` is van de opvragende zorgaanbieder aan de geauthenticeerde dienstverlener, met de mandaatcode die bij het doel hoort, bijvoorbeeld `TREAT-user`.
- De **opvragende dienstverlener** controleert vóór het verzoek dat het endpoint bij de bronhoudende zorgaanbieder hoort en dat de dienstverlener van de bron, herkenbaar aan zijn servercertificaat, door die zorgaanbieder is gemandateerd met de bijbehorende `custodian`-code, bijvoorbeeld `TREAT-custodian`.

Zie de [bijlage](#a-m2-mandaat-in-de-lokale-lrza-replica).

- *Voordelen:* de zorgaanbieder heeft alleen eHerkenning nodig, geen sleutel of ondertekendienst en, met het certificaat van de dienstverlener, ook geen UZI-servercertificaat; zelfmandatering wordt op één plek uitgesloten, mits aan de eisen hierboven is voldaan; geen mandaat in het tokenrequest en geen centrale bevraging tijdens de uitwisseling; het bouwt voort op de bestaande LRZa-registratie en replicatie; mandaten aan de opvragende en de bronkant worden op dezelfde manier vastgelegd en gecontroleerd.
- *Nadelen:*
  - Een mandaat kan alleen door de zorgaanbieder, na inloggen met eHerkenning, in de LRZa worden aangepast. Voor wijzigingen moeten het LRZa-portaal en eHerkenning beschikbaar zijn; tijdens de uitwisseling niet.
  - Wijziging en intrekking werken door na de volgende synchronisatie; een interval van ongeveer 15 minuten wordt geadviseerd.

### M3 — European Business Wallet
De dienstverlener stelt periodiek, bijvoorbeeld eens per drie maanden, een mandaat op en biedt dat de zorgaanbieder ter ondertekening aan. De zorgaanbieder ondertekent het met zijn European Business Wallet (EBW), die een gekwalificeerd elektronisch zegel kan plaatsen ([COM(2025) 838](https://www.eerstekamer.nl/bijlage/20251121/com_2025_838_proposal_for_a/document3/f=/vmsoctgrbbeb.pdf), art. 5 lid 1 onder d). Het mandaat bevat dezelfde claims als bij M1 en reist, net als bij M1, mee als `subject_token`.

- *Voordelen:* een blijvend federatieve oplossing, verifieerbaar tegen de Europese vertrouwenslijsten. De intrekkingsstatus van het zegelcertificaat vraagt wel een (cachebare) OCSP- of CRL-controle bij de vertrouwensdienstverlener die het certificaat heeft uitgegeven. De wallet levert het gekwalificeerde zegel, dus de investeringen en kosten voor de zorgaanbieder zijn naar verwachting beperkter dan bij M1. Het vereist wel een periodieke administratieve handeling van de zorgaanbieder. Sluit ook aan bij Europese walletontwikkeling.
- *Nadelen:*
  - **Nog niet operationeel.** Het voorstel voor de verordening dateert van 19 november 2025. Het Europees Parlement heeft op 7 oktober 2026 besloten de onderhandelingen met de Raad over de definitieve tekst te starten (de triloog, met de Europese Commissie als bemiddelaar; [procedure 2025/0358(COD)](https://oeil.europarl.europa.eu/oeil/en/procedure-file?reference=2025/0358(COD))). De verordening is dus nog niet aangenomen. Volgens het voorstel geldt ze één jaar na inwerkingtreding.
  - **Koppeling aan het URA.** Het zegel identificeert de zorgaanbieder met bedrijfsgegevens zoals het KvK-nummer, niet met het URA. Een vertaling via de LRZa, waarin een `Organization` beide bevat, is nodig.


### Vergelijking

| Variant | Zorgaanbieder heeft nodig | Kan de dienstverlener zichzelf mandateren? | Mandaat in het tokenrequest | Controle door de bron | Externe afhankelijkheid voor het mandaat (cachebaar) | Intrekking | Status |
|---|---|---|---|---|---|---|---|
| **M0** Dienstverlener ondertekent met UZI-sleutel van de zorgaanbieder | UZI-servercertificaat, sleutel bij de dienstverlener | Niet van toepassing: hij treedt op als de zorgaanbieder | Nee | UZI-keten, intrekkingsstatus en URA | OCSP of CRL van het UZI-register | Intrekken UZI-certificaat | Huidige praktijk |
| **M1** Zorgaanbieder ondertekent | UZI-servercertificaat en ondertekendienst | Ja, als hij de UZI-sleutel beheert | Ja, als `subject_token` | Handtekening, keten, intrekkingsstatus en `may_act` | OCSP of CRL van het UZI-register; statuslijst | Statuslijst (verplicht) of verloop | Techniek is bewezen/beschikbaar |
| **M2** `OrganizationAffiliation` in de LRZa | eHerkenning | Nee, mits alleen het portaal mandaten registreert, zonder ketenmachtiging | Nee; RAR verwijst naar de zorgaanbieder | Lokale LRZa-replica | Synchronisatie met de LRZa (maximale ouderdom) | Deactiveren in het portaal | Bouwt voort op de LRZa |
| **M3** European Business Wallet | Business wallet | Nee, als hij de wallet niet bedient | Ja, als `subject_token` | Zegel, vertrouwenslijst, intrekkingsstatus en URA-vertaling | OCSP of CRL van de vertrouwensdienstverlener; EU-vertrouwenslijsten; statusmechanisme | Status van de attestatie (verplicht) of verloop | Voorstel EU-verordening |

Geen van de varianten is dus volledig zonder centrale afhankelijkheid. De federatieve varianten M1 en M3 hebben geen centrale mandaatvoorziening nodig, maar wel de intrekkingsdienst van de certificaatuitgever. M2 heeft geen intrekkingscontrole voor het mandaat nodig, maar is afhankelijk van de synchronisatie van de replica met de LRZa. In alle varianten controleren de authorization server en de resource server daarnaast de intrekkingsstatus van het certificaat van de dienstverlener (paragraaf 2.3).

### Voorgestelde richting
Het voorstel is om op korte termijn **M2** te gebruiken. M2 vraagt van zorgaanbieders het minst, sluit zelfmandatering op één plek uit en bouwt voort op bestaande voorzieningen. Omdat alle varianten dezelfde mandaatgegevens gebruiken, kan een authorization server later ook mandaten volgens **M3** accepteren; dat is het groeipad naar een blijvend federatieve oplossing zodra de European Business Wallet operationeel is. **M0** blijft bruikbaar voor, bijvoorbeeld, zorgaanbieders die hun eigen IT-diensten beheren; de dienstverlener treedt op *als* de zorgaanbieder en mandatering is niet nodig.

## 2.5 Access token: uitgifte door de authorization server van de bron
In de notitie ondertekent de bronhoudende zorgaanbieder het access token met zijn UZI-sleutel, en valideert de client die handtekening. Reviewers wijzen erop dat dit afwijkt van gangbare standaarden; IHE IUA stelt "The token is opaque to the Authorization Client". Een authorization server voor veel zorgaanbieders zou bovendien per zorgaanbieder een UZI-sleutel moeten beheren. Het voorstel:

- De authorization server van de dienstverlener van de bron ondertekent het access token met **zijn eigen sleutel** en bindt het aan het certificaat van de client (`cnf.x5t#S256`, RFC 8705). De resource server controleert bij elk verzoek dat het clientcertificaat van de mTLS-verbinding overeenkomt met deze binding.
- Het access token is ***opaque* voor de client**. Hoe het wordt uitgegeven en gevalideerd, bepalen authorization server en resource server onderling.
- Het token legt vast namens welke zorgaanbieder toegang is verleend (`sub`, het URA) en welke dienstverlener handelt (`client_id`, en bij token exchange de claim `act`).
- De opvragende dienstverlener stelt de identiteit van de **bronhoudende zorgaanbieder** vóór het verzoek vast, en het servercertificaat van de dienstverlener van de bron bevestigt dat de verbinding met de gemandateerde partij is opgezet:
  - Bij M2 via de lokale LRZa-replica: het endpoint hoort bij de bronhoudende zorgaanbieder, en die heeft de dienstverlener van de bron gemandateerd.
  - Bij M1 en M3 via *Protected Resource Metadata* ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728)). Daarmee publiceert de resource server op `/.well-known/oauth-protected-resource` onder meer welke authorization servers bij het endpoint horen. De resource server publiceert hier ook het mandaat dat de bronhoudende zorgaanbieder aan zijn dienstverlener heeft gegeven. Hoe het mandaat in deze metadata opgenomen wordt, moet uitgewerkt worden. De opvragende dienstverlener cachet deze metadata ten hoogste een vastgestelde maximale tijd en controleert ook de status van het gepubliceerde mandaat.

Zo blijft eis 1 uit de notitie, het wederzijds vaststellen van de identiteit van de zorgaanbieder, vervuld. Er blijft één restrisico: de opvragende dienstverlener geeft zelf op namens welke zorgaanbieder hij handelt (paragraaf 2.6).

## 2.6 Grant en RAR-object
**Grant.** De notitie motiveerde de *client-credentials flow* met de stelling dat FAPI 2.0 die voorschrijft. Dat is onjuist: FAPI 2.0 sluit andere grants niet uit. De juiste motivatie is dat er geen interactieve gebruiker in de uitwisseling is: de zorgverlener is in het eigen domein geauthenticeerd en de uitwisseling verloopt van systeem tot systeem. Bij M0 en M2 blijft client credentials de grant; bij M1 en M3 reist het mandaat mee in een token exchange (RFC 8693), eveneens zonder interactieve gebruiker.

**RAR-object.** Het RAR-object van type `nl-gis-v1` blijft, met één aanvulling: `subject_organization_id`, het URA van de zorgaanbieder namens wie de dienstverlener handelt. Dit veld stond al in het sequentiediagram van de notitie, maar niet in het voorbeeld. De vereiste mandaatcode volgt uit `purpose_of_use` (paragraaf 2.7), zodat een apart veld voor het mandaattype niet nodig is.

```json
{
  "authorization_details": [
    {
      "type": "nl-gis-v1",
      "subject_organization_id": "urn:oid:2.16.528.1.1007.3.3.11111111",
      "purpose_of_use": "http://terminology.hl7.org/CodeSystem/v3-ActReason|TREAT",
      "locations_organization_id": "urn:oid:2.16.528.1.1007.3.3.12345678",
      "locations": ["https://fhir.zorgaanbieder-b.nl/fhir"]
    }
  ]
}
```

De authorization server controleert dat de zorgaanbieder in `subject_organization_id` de geauthenticeerde dienstverlener heeft gemandateerd met de mandaatcode die bij `purpose_of_use` hoort. Authenticeert de client zich met het UZI-servercertificaat van de zorgaanbieder zelf (M0), dan moet `subject_organization_id` gelijk zijn aan het URA in dat certificaat en is geen mandaat nodig.

Een dienstverlener die door meerdere zorgaanbieders is gemandateerd, zou namens de verkeerde zorgaanbieder kunnen handelen, bijvoorbeeld door een fout of door misbruik (een *confused deputy*). Daarom gelden aanvullend:
- Bij M1 en M3 moet `subject_organization_id` gelijk zijn aan `sub` van het mandaat. Het access token bevat één gezaghebbende claim voor de opvragende zorgaanbieder (`sub`), die de authorization server overneemt uit het gecontroleerde mandaat of, bij M2, uit de gecontroleerde `OrganizationAffiliation`.
- Het tokenrequest en het FHIR-verzoek dragen een correlatiekenmerk van de opvragende kant, bijvoorbeeld een W3C `traceparent`. Beide kanten loggen dat kenmerk, met het URA van de opvragende zorgaanbieder en de identiteit van de dienstverlener.
- Een dienstverlener die namens meerdere zorgaanbieders handelt, scheidt hun gegevens en verzoeken aantoonbaar. Die tenantscheiding wordt een toetredingseis en onderdeel van audits.
- De opvragende zorgaanbieder kan bij de bron inzien welke verzoeken namens hem zijn gedaan, via een kanaal dat niet via zijn eigen dienstverlener loopt, bijvoorbeeld een inzageverzoek bij de bron. Zo kan hij ook misbruik door zijn eigen dienstverlener herkennen.

Een restrisico blijft: de bron vertrouwt erop dat de dienstverlener, binnen de zorgaanbieders die hem hebben gemandateerd, de juiste zorgaanbieder opgeeft. Dat risico wordt afgedekt met toetredingseisen, audits en logging, zoals in het federatieve vertrouwensmodel van de notitie.

## 2.7 Voorstel voor mandaatcodes
Een mandaat heeft een reikwijdte: een dienstverlener handelt namens een zorgaanbieder, maar mag niet alles. De mandaatcodes zijn gebaseerd op de HL7-codelijst *PurposeOfUse* ([v3-ActReason](https://terminology.hl7.org/CodeSystem-v3-ActReason.html)), dezelfde codelijst als voor `purpose_of_use` in het RAR-object. Een mandaatcode bestaat uit een doel en een rol: `<doel>-<rol>`.

- **Doel:** een code uit PurposeOfUse. Voorgesteld worden de algemene codes van het hoogste niveau van de codelijst. Een mandaat voor een doel geldt ook voor de specialisaties ervan: `TREAT` omvat bijvoorbeeld spoed (`ETREAT`) en zorgcoördinatie (`COC`). Voor beheer wordt `HSYSADMIN` (*health system administration*) gebruikt, een code onder `HOPERAT` (*healthcare operations*).
- **Rol:** dezelfde rollen als in [GF Lokalisatie](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/localization.html):
  - `user`: gegevens opvragen en ontvangen namens de zorgaanbieder, doorgaans als OAuth-client;
  - `custodian`: als bronhouder gegevens beschikbaar stellen of registreren namens de zorgaanbieder, doorgaans als authorization server en resource server; bij registratie in de LRZa of de NVI als client van die voorziening.

| Doel (PurposeOfUse) | `<doel>-user`: de dienstverlener mag namens de zorgaanbieder… | `<doel>-custodian`: de dienstverlener mag namens de zorgaanbieder… |
|---|---|---|
| `TREAT` — behandeling | gegevens opvragen voor de behandeling van patiënten, zoals BgZ, European Patient Summary, eOverdracht, Medicatieoverdracht, geboortezorg en spoed, en daarvoor de NVI doorzoeken. | gegevens beschikbaar stellen voor de behandeling van patiënten, daarvoor toestemmingen raadplegen bij de OTV, en patiënten registreren bij de NVI (lokalisatie). |
| `PATRQT` — op verzoek van de patiënt | gegevens opvragen op verzoek van de patiënt. | gegevens beschikbaar stellen aan de patiënt of diens persoonlijke gezondheidsomgeving (PGO). |
| `HRESCH` — onderzoek | gegevens opvragen voor (medisch-wetenschappelijk) onderzoek. | gegevens uitgeven voor onderzoek, en datasetbeschrijvingen bijwerken in de catalogus van de Health Data Access Body (HDAB, EHDS). |
| `PUBHLTH` — publieke gezondheid | gegevens opvragen voor publieke gezondheid. | gegevens verstrekken voor publieke gezondheid, zoals meldingen van infectieziekten. |
| `HSYSADMIN` — beheer | gegevens van de zorgaanbieder opvragen uit de LRZa (adressering) en bijwerken van 'eigen' resources (b.v. Endpoints) in het LRZa  | gegevens van de zorgaanbieder registreren en bijwerken in de LRZa (adressering). |

Dit levert tien codes op: `TREAT-user`, `TREAT-custodian`, `PATRQT-user`, `PATRQT-custodian`, `HRESCH-user`, `HRESCH-custodian`, `PUBHLTH-user`, `PUBHLTH-custodian`, `HSYSADMIN-user` en `HSYSADMIN-custodian`.

- **Doel en mandaat hangen samen.** De authorization server van de bron leidt de vereiste mandaatcode af uit `purpose_of_use` in het RAR-object: een verzoek met doel `TREAT` vraagt een mandaat `TREAT-user` van de opvragende zorgaanbieder aan zijn dienstverlener. Omgekeerd controleert de opvragende dienstverlener dat de dienstverlener van de bron het mandaat `TREAT-custodian` heeft.
- **Bewust algemeen.** Eén code dekt alle zorgtoepassingen met hetzelfde doel. Zorgaanbieders begrijpen het mandaat daardoor makkelijk en hoeven het niet bij elke nieuwe zorgtoepassing aan te passen. Waar fijnere mandatering nodig blijkt, bijvoorbeeld alleen voor spoed, kan een specialisatie als eigen code worden toegevoegd (`ETREAT-user`). Andere doelen uit de codelijst, zoals betaling (`HPAYMT`), kunnen worden toegevoegd zodra een zorgtoepassing erom vraagt.
- **Beheercodes in de LRZa.** De `HSYSADMIN`-codes overlappen met de bestaande codes `lrza-careprovider-admin` en `lrza-endpoint-admin` in [`NlGfAuthorizationTypeCS`](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/CodeSystem-nl-gf-authorization-type-cs.html). Voorgesteld wordt de oude codes te vervangen.


# 3. Toetsing aan eisen en uitgangspunten

| Eis of uitgangspunt (notitie, hoofdstuk 5) | Invulling in dit voorstel |
|---|---|
| 1. Wederzijds vaststellen van de identiteit van de zorgaanbieder | Via het mandaat en het certificaat van de dienstverlener, aan beide kanten |
| 2. Geen authenticatie van individuele zorgverleners of systemen | Ongewijzigd; de dienstverlener is wel herkenbaar als technische actor (NEN 7513, externe systemen) |
| 3. Expliciet meedragen van het doel | Ongewijzigd: `purpose_of_use` in het RAR-object; het doel bepaalt ook welke mandaatcode vereist is |
| GIS07 en GIS03/HA3: bestaande, open standaarden | OAuth 2.0, FAPI 2.0, RFC 8693, RFC 8705 en RFC 9396, met een *opaque* access token; client-id uit het certificaat volgens de Europese praktijk |
| HA7: GIS Veilig Netwerk met mTLS | Ongewijzigd; de mTLS-verbinding tussen de dienstverleners dient ook voor clientauthenticatie en tokenbinding, mits die doorloopt tot authorization server en resource server (paragraaf 2.3) |
| GIS02 en A44: scheiding van transport- en applicatievertrouwen | Transportvertrouwen tussen dienstverleners; applicatievertrouwen tussen verzender en ontvanger via het mandaat |
| HA5, A12/A13: claims-based access control | Claims in het RAR-object en in het mandaat |

# 4. Verwerking van de reacties

| Reactie | Kern | Paragraaf |
|---|---|---|
| Silizo 1; Nuts 3.1 | Geen private UZI-sleutels bij leveranciers; langdurige, ondertekende mandaten | 2.4 |
| Silizo 2; Nuts 3.3 | Uitvoerend systeem als afzonderlijke OAuth-client | 1, 2.3 |
| Silizo 3; ChipSoft 1; Twiin 4 | Access token niet door de zorgaanbieder ondertekenen; *opaque* voor de client | 2.5 |
| Silizo 4 | Vertrouwen in endpoint en authorization server via mandaat en RFC 9728 | 2.5 |
| Silizo 5; ChipSoft 2 | Geautomatiseerde clientregistratie | 2.2 |
| Silizo 6 | Onjuiste motivatie van client credentials | 2.6 |
| ChipSoft 1 en 3 | Mandaat via token exchange; rollen verduidelijken; mTLS met eigen certificaat van de dienstverlener | 1, 2.3, 2.4 |
| Nedap | Sleutelbeheer bij meerdere leveranciers; zorgaanbieders zonder UZI-servercertificaat | 2.4 (bij M2 geen UZI-servercertificaat nodig) |

# 5. Conclusie en openstaande besluiten
Een dienstverlener handelt met een eigen identiteit, op basis van een mandaat van de zorgaanbieder, en hoeft niet meer over de UZI-sleutel van de zorgaanbieder te beschikken. Een authorization server herkent de dienstverlener aan zijn certificaat, zonder aparte registratiestap, naar voorbeeld van het Europese betalingsverkeer. Het access token wordt uitgegeven zoals gangbaar in OAuth. Het federatieve vertrouwensmodel, het juridisch kader en de eisen uit de notitie blijven ongewijzigd.

Voor vaststelling zijn de volgende besluiten nodig:

1. **Mandaatvariant:** M2 op korte termijn, met M3 als federatief groeipad? Of M1 als federatieve variant op basis van bestaande standaarden?
2. **Clientregistratie:** geen verplichte registratie; het stelsel legt vast welke certificaten dienstverleners gebruiken en hoe de client-id daaruit wordt afgeleid (paragraaf 2.2).
3. **Clientauthenticatie:** mTLS voor clientauthenticatie en tokenbinding, in plaats van `private_key_jwt` en DPoP?
4. **Mandaatcodes:** vaststellen van de voorgestelde codes op basis van PurposeOfUse.
5. **Productondersteuning:** kan gangbare autorisatiesoftware registratie bij eerste gebruik en token exchange ondersteunen?
6. **Beveiligingseisen:** vaststellen van de eisen aan certificaten (paragraaf 2.2), TLS-terminatie, intrekking en schorsing (paragraaf 2.3), registratie en actualiteit van mandaten (paragraaf 2.4) en de vertegenwoordigde zorgaanbieder (paragraaf 2.6), en besluiten over de resterende risico's in de [bijlage](#bijlage-mogelijke-beveiligingsrisicos).


# Bijlage: voorbeelden van de technische flow

## A. M2: mandaat in de lokale LRZa-replica

```mermaid
sequenceDiagram
    autonumber
    actor ZA as Zorgaanbieder A (URA-A)
    participant LRZa as LRZa (portaal en Directory)
    participant DA as Dienstverlener A (opvragend)
    participant RepA as LRZa-replica (A)
    participant RepB as LRZa-replica (B)
    participant AS as Authorization Server (dienstverlener B)
    participant RS as Resource Server (dienstverlener B)

    Note over ZA,LRZa: Eenmalig, en bij wijziging
    ZA->>LRZa: Inloggen met eHerkenning<br/>mandaat registreren: dienstverlener A, code TREAT-user
    LRZa->>LRZa: OrganizationAffiliation vastleggen
    LRZa-->>RepA: Synchronisatie (ITI-91-NL)
    LRZa-->>RepB: Synchronisatie (ITI-91-NL)

    Note over ZA,RS: Bij elke uitwisseling, alle verbindingen over mTLS
    ZA->>DA: Test-zorgvraag: BgZ van patiënt X<br/>ophalen bij zorgaanbieder B
    DA->>RepA: Zoek Endpoint van zorgaanbieder B<br/>(Organization URA-B, payloadType voor de BgZ)
    RepA-->>DA: Endpoint-adres van de resource server<br/>(managingOrganization: dienstverlener B)
    DA->>RepA: Actieve OrganizationAffiliation (URA-B, dienstverlener B, TREAT-custodian)?<br/>Past dienstverlener B bij het servercertificaat?
    DA->>AS: POST /token, client credentials<br/>RAR: subject_organization_id=URA-A,<br/>purpose_of_use=TREAT
    AS->>AS: client_id afleiden uit certificaat dienstverlener A<br/>en intrekkingsstatus controleren (OCSP/CRL, cachebaar)
    AS->>RepB: Replica actueel? Actieve OrganizationAffiliation<br/>(URA-A, dienstverlener A, TREAT-user)?
    AS-->>DA: access_token (opaque, gebonden aan certificaat dienstverlener A)
    DA->>RS: FHIR-verzoek met access token
    RS->>RS: Token geldig en gebonden aan het clientcertificaat?
    RS-->>DA: 200 OK, FHIR-resource
    DA-->>ZA: BgZ van patiënt X tonen
    Note over ZA,RS: Beide kanten loggen zorgaanbieder, dienstverlener en certificaatgegevens (NEN 7513)
```

## B. M1 en M3: mandaat als `subject_token`
Het tokenrequest met het mandaat, bij M1 ondertekend met de UZI-sleutel van de zorgaanbieder en bij M3 ondertekend met diens European Business Wallet. Dienstverlener A haalt eerst het endpoint van zorgaanbieder B op uit zijn LRZa-replica (stap 5 en 6 in het diagram). Daarna stelt hij met *Protected Resource Metadata* vast dat het endpoint bij zorgaanbieder B hoort (paragraaf 2.5; stap 7 tot en met 9):

```
POST /token HTTP/1.1
Host: as.dienstverlener-b.nl
Content-Type: application/x-www-form-urlencoded

grant_type=urn:ietf:params:oauth:grant-type:token-exchange
&client_id=NTRNL-90000001
&subject_token=eyJ0eXAiOiJubC1nZi1tYW5kYXRlK2p3dCIs...
&subject_token_type=urn:ietf:params:oauth:token-type:jwt
&authorization_details=%5B%7B%22type%22%3A%22nl-gis-v1%22...%7D%5D
```

```mermaid
sequenceDiagram
    autonumber
    actor ZA as Zorgaanbieder A
    participant DA as Dienstverlener A (opvragend)
    participant RepA as LRZa-replica (A)
    participant AS as Authorization Server (dienstverlener B)
    participant RS as Resource Server (dienstverlener B)

    Note over ZA,DA: Periodiek, bijvoorbeeld eens per drie maanden
    DA->>ZA: Mandaat ter ondertekening aanbieden
    ZA->>ZA: Ondertekenen met UZI-sleutel (M1)<br/>of ondertekenen met business wallet (M3)
    ZA-->>DA: Ondertekend mandaat

    Note over ZA,RS: Bij elke uitwisseling, alle verbindingen over mTLS
    ZA->>DA: Test-zorgvraag: BgZ van patiënt X<br/>ophalen bij zorgaanbieder B
    DA->>RepA: Zoek Endpoint van zorgaanbieder B<br/>(Organization URA-B, payloadType voor de BgZ)
    RepA-->>DA: Endpoint-adres van de resource server<br/>(managingOrganization: dienstverlener B)
    DA->>RS: GET /.well-known/oauth-protected-resource<br/>(Protected Resource Metadata, RFC 9728 (cachebaar))
    RS-->>DA: authorization_servers en mandaat van zorgaanbieder B<br/>aan dienstverlener B (scope TREAT-custodian)
    DA->>DA: Mandaat van zorgaanbieder B geldig (handtekening, keten)?<br/>may_act = servercertificaat dienstverlener B?<br/>AS staat in authorization_servers?
    DA->>AS: POST /token, token exchange<br/>subject_token=mandaat, RAR
    AS->>AS: Intrekkingsstatus certificaat dienstverlener A (OCSP/CRL)<br/>Handtekening, keten en intrekking van het mandaat (OCSP/CRL, statuslijst)<br/>may_act = client_id dienstverlener A?<br/>sub = subject_organization_id?<br/>scope bevat TREAT-user (doel uit RAR)?
    AS-->>DA: access_token (sub=URA-A, act=dienstverlener A,<br/>gebonden aan certificaat dienstverlener A)
    DA->>RS: FHIR-verzoek met access token
    RS->>RS: Token geldig en gebonden aan het clientcertificaat?
    RS-->>DA: 200 OK, FHIR-resource
    DA-->>ZA: BgZ van patiënt X tonen
```

# Bijlage: mogelijke beveiligingsrisico's
Een beveiligingsreview van dit voorstel (oktober 2026) heeft gezocht naar kwetsbaarheden die niet al door FAPI 2.0 worden afgedekt. Een deel van de bevindingen is in het voorstel verwerkt: eisen aan certificaten (paragraaf 2.2), TLS-terminatie, intrekking en schorsing (paragraaf 2.3), registratie en actualiteit van mandaten (paragraaf 2.4) en de vertegenwoordigde zorgaanbieder (paragraaf 2.6). De risico's hieronder zijn nog niet verwerkt. De ernst is beoordeeld na de verwerkte maatregelen. Per risico moet worden besloten of een maatregel wordt opgenomen of het risico wordt geaccepteerd.

| Nr. | Ernst | Risico | Paragraaf |
|---|---|---|---|
| 1 | Middel | De hiërarchie van doelcodes verruimt mandaten | 2.7 |
| 2 | Middel | Mandaten in de LRZa zijn niet ondertekend | 2.4 (M2) |
| 3 | Middel | Mandaten steunen op LRZa-identificaties die dienstverleners kunnen wijzigen | 2.4, 2.7 |
| 4 | Middel | Het access token is niet gebonden aan de bronhoudende zorgaanbieder | 2.5, 2.6 |
| 5 | Laag | De afleiding en reikwijdte van de client-id zijn nog niet volledig vastgelegd | 2.2 |
| 6 | Laag | Een algemeen custodian-mandaat maakt het mogelijk een endpoint van de bron over te nemen | 2.4, 2.7 |
| 7 | Laag | `HSYSADMIN-user` geeft schrijfrechten, en de overgang van de huidige LRZa-codes is niet vastgelegd | 2.7 |

## 1. De hiërarchie van doelcodes verruimt mandaten
Een mandaat voor een doel geldt ook voor de specialisaties ervan, en de authorization server leidt de vereiste mandaatcode af uit het opgegeven `purpose_of_use`. `TREAT` omvat in de codelijst onder meer `ETREAT`, `BTG` (*break the glass*), `POPHLTH` en `CLINTRL`; `PATRQT` omvat `FAMRQT`, `PWATRNY` en `SUPNWK`. Een dienstverlener met alleen `TREAT-user` kan daardoor een verzoek doen met `purpose_of_use` `BTG` of `POPHLTH`. Als de bron voor zulke doelen soepelere regels hanteert, bijvoorbeeld bij spoed, krijgt de dienstverlener zo een bevoegdheid die de zorgaanbieder niet bewust heeft gegeven. Een fijnere code zoals `ETREAT-user` kan alleen minder toestaan; ze kan `BTG` niet uitsluiten voor wie `TREAT-user` heeft.

*Mogelijke maatregel:* koppel doelen en mandaatcodes met een expliciete lijst in plaats van de hiërarchie. Sluit `BTG`, `POPHLTH`, `CLINTRL`, `FAMRQT`, `PWATRNY` en `SUPNWK` uit, tenzij ze expliciet zijn gemandateerd, en laat de bron doelen zonder koppeling weigeren.

## 2. Mandaten in de LRZa zijn niet ondertekend
Bij M2 vertrouwt de authorization server op de `OrganizationAffiliation` in zijn replica. Verzegeling door de LRZa is bewust niet opgenomen (paragraaf 2.4). Wie schrijftoegang krijgt tot de LRZa, het portaal of de replicatie, kan daardoor mandaten toevoegen en namens elke zorgaanbieder gegevens opvragen. Zulke vervalsingen zijn achteraf niet van echte mandaten te onderscheiden, en in een geschil is er geen verifieerbaar bewijs dat een mandaat bestond. De melding en het overzicht in het portaal komen van de LRZa zelf en signaleren een compromittering van de LRZa dus niet.

*Mogelijke maatregel:* laat de LRZa elk mandaat verzegelen, met een sleutel in een HSM die gescheiden is van het portaal, en laat authorization servers de verzegeling controleren. Een alternatief is een ondertekend, alleen-toevoegen-logboek van mandaten. Zonder maatregel wordt dit vastgelegd als geaccepteerd risico.

## 3. Mandaten steunen op LRZa-identificaties die dienstverleners kunnen wijzigen
Zorgaanbieders en dienstverleners worden in de LRZa gevonden via `Organization.identifier` en `partOf`. Dienstverleners met beheerrechten voor een zorgaanbieder kunnen deze velden wijzigen. Bij M3 kan een dienstverlener zijn eigen KvK-nummer toevoegen aan de `Organization` van een zorgaanbieder, en vervolgens met zijn eigen business wallet een mandaat aan zichzelf verzegelen. De authorization server vertaalt dat KvK-nummer via de LRZa naar het URA van de zorgaanbieder en accepteert het mandaat. Bij M2 kan een sub-organisatie met het URA van een andere zorgaanbieder de zoekacties dubbelzinnig maken.

*Mogelijke maatregel:* neem URA's, KvK-nummers en de koppeling daartussen alleen over uit de authentieke registers (UZI-register en Handelsregister), maak ze niet wijzigbaar via ITI-130-NL en dwing uniciteit af. Sta mandaten alleen toe voor organisaties op het hoogste niveau met een URA uit het register.

## 4. Het access token is niet gebonden aan de bronhoudende zorgaanbieder
Het access token legt de opvragende zorgaanbieder (`sub`) en de dienstverlener vast, maar niet voor welke bronhoudende zorgaanbieder het geldt. In de oorspronkelijke notitie bond de UZI-handtekening van de bron het token aan die bron; die binding vervalt. Bij een authorization server en resource server die namens meerdere zorgaanbieders werken, kan een token dat voor zorgaanbieder B2 is uitgegeven, worden gebruikt voor gegevens van zorgaanbieder B1. Daarmee wordt een beslissing van B1 omzeild, bijvoorbeeld een ingetrokken custodian-mandaat.

*Mogelijke maatregel:* neem de bronhoudende zorgaanbieder (`locations_organization_id`) en het doel op in het access token of in het introspectieantwoord. Laat de authorization server controleren dat hij namens die zorgaanbieder optreedt, en laat de resource server elk verzoek tot die zorgaanbieder beperken.

## 5. De afleiding en reikwijdte van de client-id zijn nog niet volledig vastgelegd
De eisen in paragraaf 2.2 sluiten persoonsgebonden certificaten uit en bepalen M0 aan de hand van het certificaattype. Drie punten staan nog open:
- Het formaat van de client-id (KvK-nummer, OIN of URA) en de vergelijking met `participatingOrganization` in de LRZa zijn nog niet vastgelegd.
- Alle servercertificaten van een organisatie met dezelfde identificatie leiden tot dezelfde client-id en krijgen alle mandaten van die organisatie. Een sleutel die is gestolen van een ander systeem van die organisatie, geeft dus toegang tot alle mandaten.
- Niet vastgelegd is welke rechten een automatisch aangemaakte client standaard krijgt.

*Mogelijke maatregel:* leg de client-id vast als getypeerde identificatie (systeem en waarde) en vergelijk op beide. Laat een dienstverlener eventueel in de LRZa vastleggen welke certificaten of domeinnamen hij voor deze uitwisselingen gebruikt. Geef automatisch aangemaakte clients geen rechten buiten wat de mandaatcontrole toestaat.

## 6. Een algemeen custodian-mandaat maakt het mogelijk een endpoint van de bron over te nemen
`TREAT-custodian` is niet gebonden aan een endpoint of payload type, en een organisatie kan meerdere geldige endpoints voor hetzelfde payload type hebben. Een dienstverlener die door een zorgaanbieder voor één kleine toepassing als custodian is gemandateerd, en die schrijfrechten in de LRZa heeft, kan een BgZ- of eOverdracht-endpoint voor die zorgaanbieder registreren. Opvragende dienstverleners accepteren dat endpoint en sturen er verzoeken met patiëntgegevens naar. Het risico is laag, omdat de aanvaller al door de zorgaanbieder gemandateerd moet zijn.

*Mogelijke maatregel:* laat de LRZa per organisatie en payload type ten hoogste één geldig endpoint toestaan, of maak het mogelijk een custodian-mandaat te beperken tot een endpoint of payload type.
