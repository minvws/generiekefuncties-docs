**Concept** · 11 november 2026

Deze notitie is een vervolg op de notitie [*Harmonisatie van authenticatie en autorisatie voor de gegevensuitwisselingen BgZ en eOverdracht*](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html) (versie 0.95, hierna: de notitie). Op het concept van de notitie hebben onder meer Silizo, ChipSoft, Twiin, UMCG, Nedap, de Nuts Kring Techniek, VZVZ (AORTA/LSP) en RSO Nederland gereageerd. Deze notitie gaat over de twee punten die in vrijwel alle inhoudelijke reacties terugkomen.
{: .ig-lead}

- **Sleutelbeheer en machtiging.** De notitie laat de zorgaanbieder het tokenrequest én het access token ondertekenen met de sleutel van zijn UZI-servercertificaat. In de praktijk beheert vaak een dienstverlener die sleutel: een leverancier, SaaS-platform of knooppunt. Reviewers stellen voor dat de dienstverlener met een eigen identiteit handelt, op basis van een machtiging van de zorgaanbieder.
- **Clientregistratie.** De notitie beschrijft niet hoe een authorization server een OAuth-client herkent. FAPI 2.0 gaat uit van een bekende *confidential client*, en handmatige, bilaterale registratie schaalt niet in een netwerk met veel partijen.

Deze notitie scherpt hoofdstuk 6 (*Technische keuzes en onderbouwing*) van de notitie aan. Het juridisch kader (hoofdstuk 4) en de eisen en GISA-uitgangspunten (hoofdstuk 5) blijven ongewijzigd. Daarvoor zijn onder meer machtiging van dienstverleners, (dynamische) clientregistratie en andere stelsels verkend, zoals iSHARE, PSD2 en OpenID Federation. De oplossing moet in het eerste kwartaal van 2027 (Q1 2027) werken voor de eOverdracht, en kunnen meegroeien naar de European Business Wallet (EBW).

- [Paragraaf 2.2](#22-machtiging-in-plaats-van-ondertekening-door-de-zorgaanbieder) beschrijft acht varianten voor de machtiging (M0 tot en met M7). Ze zijn afgewogen op haalbaarheid in Q1 2027, op wat de zorgaanbieder en de dienstverlener moeten doen, op operationele afhankelijkheden, en op beveiliging, zoals het effect van een gecompromitteerde partij. De lijst is niet uitputtend.
- [Paragraaf 2.3](#23-voorstel-voor-machtigingscodes) stelt de reikwijdte van een machtiging vast met machtigingscodes.
- [Paragraaf 2.4](#24-registratie-van-oauth-clients) beschrijft vijf opties voor clientregistratie (R1 tot en met R5): registratie, waarbij metadata van de client wordt vastgelegd, of geen registratie, met identificatie van de client aan zijn certificaat.
- Paragraaf 2.5 tot en met 2.7 werken de gevolgen uit voor de clientauthenticatie, het access token en de grant.

De [ontwerpbeslissingen](./authenticatie-en-autorisatie-ontwerpbeslissingen.html) vatten deze notitie samen en doen een voorstel. [GF Authentication](./authentication.html) specificeert dat voorstel, met voorbeelden. De risico's per variant staan in de [beveiligingsreview](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/authenticatie-en-autorisatie-security-review.html).

# Documenthistorie

| Versie | Status | Datum | Auteur | Wijziging |
|--------|--------|-------|--------|-----------|
| 0.1.0 | Concept | 16 oktober 2026 | VWS | eerste versie voor review expertgroep|
| 0.2.0 | Concept | 30 oktober 2026 | VWS | aanpassing variant M1 en M2 n.a.v. expertgroep op 23 oktober; 'mandaat' vervangen door 'machtiging' |
| 0.3.0 | Concept | 5 november 2026 | VWS | toevoeging variant M6 n.a.v. email/voorstel Nuts van 4 november |
| 0.4.0 | Concept | 11 november 2026 | VWS | presentatie van de machtiging als `vp_token`, uitbreidbaar naar meer attestaties; opties R3, R4 en R5 voor clientregistratie; bijlage C over de impact op authorization servers |
| 0.5.0 | Concept | 11 november 2026 | VWS | variant M7, conform het voorstel in de ontwerpbeslissingen; ingekort; bijlage A vervalt: de technische uitwerking en de voorbeelden staan in GF Authentication |

# Inhoudsopgave

- [Rollen: zorgaanbieder en dienstverlener](#1-rollen-zorgaanbieder-en-dienstverlener)
- [Gewijzigde technische keuzes](#2-gewijzigde-technische-keuzes)
  - [2.1 Ongewijzigde keuzes](#21-ongewijzigde-keuzes)
  - [2.2 Machtiging in plaats van ondertekening door de zorgaanbieder](#22-machtiging-in-plaats-van-ondertekening-door-de-zorgaanbieder)
  - [2.3 Voorstel voor machtigingscodes](#23-voorstel-voor-machtigingscodes)
  - [2.4 Registratie van OAuth-clients](#24-registratie-van-oauth-clients)
  - [2.5 Clientauthenticatie van de dienstverlener: mTLS](#25-clientauthenticatie-van-de-dienstverlener-mtls)
  - [2.6 Access token: uitgifte door de authorization server van de bron](#26-access-token-uitgifte-door-de-authorization-server-van-de-bron)
  - [2.7 Grant en RAR-object](#27-grant-en-rar-object)
- [Bijlage B: attestaties in de European Business Wallet](#bijlage-b-attestaties-in-de-european-business-wallet)
- [Bijlage C: impact op authorization servers](#bijlage-c-impact-op-authorization-servers)

# 1. Rollen: zorgaanbieder en dienstverlener
De oorspronkelijke notitie maakt geen onderscheid tussen de zorgaanbieder en de partij die de techniek levert. Dit voorstel onderscheidt twee rollen:

- **Zorgaanbieder:** de verwerkingsverantwoordelijke, geïdentificeerd met het URA. Hij bepaalt welke dienstverlener namens hem mag handelen, en voor welke doelen (paragraaf 2.3).
- **Dienstverlener:** de partij die de technische voorziening levert en beheert, zoals een EPD-leverancier, SaaS-platform, knooppunt, of de zorgaanbieder zelf bij eigen beheer. Aan de opvragende kant beheert hij de OAuth-client, aan de bronkant de authorization server en de resource server. Hij heeft een eigen certificaat, bijvoorbeeld een PKIoverheid-servercertificaat met zijn KvK-nummer of OIN.

Eén dienstverlener handelt doorgaans namens veel zorgaanbieders, en één zorgaanbieder kan meerdere dienstverleners hebben. De machtiging legt per combinatie vast wat de dienstverlener mag. De afspraken horen bij het Gezondheidsinformatiestelsel (GIS), het landelijke stelsel waaronder stelselpartijen zoals Nuts, VZVZ (LSP) en Twiin opereren.

Dit past bij GISA-keuze A44: het vertrouwen op de transportlaag ligt bij de verantwoordelijken voor de verbinding (de dienstverleners), het vertrouwen tussen verzender en ontvanger op de applicatielaag (de machtiging). Het uitvoerende systeem wordt zo een herkenbare actor in de transactie en in de logging.

# 2. Gewijzigde technische keuzes

## 2.1 Ongewijzigde keuzes
De volgende keuzes uit de notitie blijven van kracht: **OAuth 2.0** als basis; de beveiligingsmaatregelen uit **FAPI 2.0** (asymmetrische clientauthenticatie, *sender-constrained* access tokens, verplichte transportbeveiliging en strikte validatie); **Rich Authorization Requests** (RAR, [RFC 9396](https://www.rfc-editor.org/rfc/rfc9396)) voor zorgspecifieke attributen; en **mTLS op de transportlaag**, voorlopig met UZI-servercertificaten of PKIoverheid-certificaten.

## 2.2 Machtiging in plaats van ondertekening door de zorgaanbieder
Niet elke dienstverlener heeft het UZI-servercertificaat en de sleutel van de zorgaanbieder, en dat is ook niet wenselijk. Daarom handelt de dienstverlener met zijn eigen certificaat, en legt een machtiging vast dat de zorgaanbieder hem heeft aangewezen om namens hem te handelen. De machtiging zorgt zo voor het vertrouwen tussen verzender en ontvanger.

Een machtiging bevat in alle varianten dezelfde gegevens. Die sluiten aan op de [`OrganizationAffiliation`](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/StructureDefinition-nl-gf-organizationaffiliation.html) uit de [Care Service Directory](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/csd.html), die de LRZa al gebruikt om dienstverleners te machtigen voor het beheer van adresgegevens.

| Gegeven | Machtiging als attestatie (M1, M2, M6 en M7) | `OrganizationAffiliation` (M3 tot en met M5) |
|---|---|---|
| Zorgaanbieder (machtiginggever) | `sub` (URA) | `organization` |
| Dienstverlener (gemachtigde) | `may_act.sub` (de identificatie uit zijn certificaat, bijvoorbeeld het KvK-nummer; paragraaf 2.4) | `participatingOrganization` |
| Reikwijdte | `scope` (machtigingscodes, paragraaf 2.3) | `code` |
| Geldigheid | `nbf` en `exp` (looptijd: zie de keuzes bij M1) | `period` en `active` |
| Unieke referentie | `jti` | `identifier` |
| Ondertekenaar | `iss` en `x5c`: bij M1 en M7 de vertrouwde dienstverlener, met het UZI-certificaat van de zorgaanbieder; bij M2 een erkende uitgever; bij M6 een notaris, naast een identiteitsattestatie met het UZI-certificaat | De zorgaanbieder via het LRZa-portaal, met eHerkenning; bij M4 en M5 daarnaast een ondertekende `Provenance` |

### M0 — Dienstverlener ondertekent met het UZI-certificaat van de zorgaanbieder
De zorgaanbieder laat de sleutel van zijn UZI-servercertificaat beheren door de dienstverlener, die daarmee optreedt *als* de zorgaanbieder. Dit is de opzet uit de notitie, en dient als referentie.

- *Voordelen:* geen nieuwe techniek; het URA zit in het certificaat, en de intrekking verloopt via het UZI-register.
- *Nadelen:* de dienstverlener beheert de private sleutel van de zorgaanbieder en is cryptografisch niet van hem te onderscheiden; meerdere dienstverleners betekent meerdere certificaten of een gedeelde sleutel; compromittering van een dienstverlener raakt al zijn zorgaanbieders. Hiertegen maken de meeste reacties bezwaar.

### M1 — Vertrouwde dienstverlener geeft machtigingen uit met de UZI-sleutel van de zorgaanbieder
De zorgaanbieder wijst één vertrouwde dienstverlener aan, bijvoorbeeld zijn EPD-leverancier, of voert die rol zelf uit. Die beheert het UZI-servercertificaat van de zorgaanbieder, en geeft daarmee namens hem machtigingen uit, aan zichzelf en aan de andere dienstverleners van de zorgaanbieder. Andere dienstverleners hebben dus geen UZI-certificaat nodig. De machtiging is een attestatie zoals een EBW die straks kan uitgeven ([bijlage B](#bijlage-b-attestaties-in-de-european-business-wallet)). [GF Authentication](./authentication.html#mandate) specificeert de machtiging; bij M1 komt daar de binding aan een sleutel bij.

- **Uitgifte.** Een dienstverlener vraagt de machtiging met OpenID4VCI aan bij de vertrouwde dienstverlener, en authenticeert zich met zijn certificaat. De zorgaanbieder keurt de machtigingscodes en de geldigheid goed, bijvoorbeeld in de applicatie van de vertrouwde dienstverlener. Die legt elke goedkeuring vast en biedt de zorgaanbieder een overzicht.
- **Attestatie.** Een SD-JWT VC met de gegevens uit de tabel hierboven, ondertekend met de sleutel van het UZI-servercertificaat van de zorgaanbieder.
- **Aanwijzing in de LRZa.** De zorgaanbieder legt in de LRZa vast bij welk `Endpoint` machtigingen kunnen worden aangevraagd. De LRZa dient alleen om dat te vinden; de controle steunt op de ondertekening.
- **Binding aan de dienstverlener.** De machtiging is gebonden aan een aparte sleutel van de dienstverlener (`cnf`), niet aan die van zijn TLS-certificaat, die vaak in een proxy of HSM zit. Bij een nieuwe sleutel wordt de machtiging opnieuw uitgegeven, zonder nieuwe goedkeuring.
- **Presentatie.** Bij elk tokenrequest presenteert de dienstverlener de machtiging in een token exchange ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693)). Het `subject_token` is een `vp_token` zoals in [OpenID4VP 1.0](https://openid.net/specs/openid-4-verifiable-presentations-1_0.html): een JSON-object met per attestatietype een lijst van presentaties, hier `machtiging`, met de machtiging gevolgd door een *key binding*-JWT ([RFC 9901](https://www.rfc-editor.org/rfc/rfc9901), paragraaf 4.3). Het `subject_token_type` is voorlopig `urn:nl:gis:token-type:vp_token`. De *key binding*-JWT bevat `aud` (de authorization server), `iat`, `sd_hash`, een `nonce` die de dienstverlener zelf kiest en die de authorization server binnen de geldigheid van `iat` maar één keer accepteert, en in `transaction_data_hashes` de hash van het RAR-object. Die laatste claim uit OpenID4VP (paragraaf 8.4) wordt omgekeerd gebruikt: de authorization server berekent de hash over `authorization_details` zoals hij die ontvangt. Zo is het verzoek achteraf aantoonbaar. Andere attestaties kunnen later als extra sleutels in hetzelfde object worden meegestuurd, gebonden aan dezelfde sleutel.
- **Controle.** De authorization server controleert de handtekening met het UZI-certificaat, de geldigheid, de *key binding*-JWT, en of de machtiging past bij de geauthenticeerde dienstverlener en het doel. De opvragende dienstverlener controleert de machtiging van de bron op dezelfde manier (paragraaf 2.6).
- **Geldigheid en intrekking.** Een machtiging heeft een beperkte looptijd (*keuze 1*). Trekt de zorgaanbieder zijn goedkeuring in, dan wordt zij niet meer vernieuwd en vervalt zij aan het einde van de looptijd. Een statuslijst wordt voorlopig niet gebruikt: de specificatie is nog geen RFC, en zo blijft de investering voor deze korte-termijnoplossing beperkt.
- **Invoering op korte termijn.** M1 vraagt geen nieuwe partij of nieuw vertrouwensstelsel. Veel zorgaanbieders laten hun UZI-servercertificaat nu al beheren door één leverancier (M0), die vertrouwde dienstverlener kan worden. Het vertrouwen steunt op het wettelijk verankerde UZI-register (Wabvpz). Elke vertrouwde dienstverlener bouwt de uitgifte in zijn eigen software, met bestaande bibliotheken, onder meer uit de EUDI-referentie-implementatie ([eudi-lib-jvm-sdjwt-kt](https://github.com/eu-digital-identity-wallet/eudi-lib-jvm-sdjwt-kt), [eudi-srv-issuer-oidc-py](https://github.com/eu-digital-identity-wallet/eudi-srv-issuer-oidc-py)). Invoering in Q1 2027 is daarmee mogelijk, mits het UZI-register (CIBG) op tijd instemt met het gebruik van het UZI-servercertificaat voor het ondertekenen van machtigingen.
- **Groeipad naar de EBW.** Zodra de EBW operationeel is, geeft de zorgaanbieder hetzelfde type attestatie zelf uit vanuit zijn wallet. Schema, formaat en controle blijven naar verwachting gelijk. De ondertekenaar verandert, er komt een statuslijst bij, en authorization servers controleren tegen de Europese vertrouwenslijsten, met een koppeling aan het URA, bijvoorbeeld via het Dezi-register. Machtigingen van de vertrouwde dienstverlener, of bij M2 van de uitgevers, worden daarna vanaf een vaste datum niet meer geaccepteerd.

**Keuzes binnen M1.**

*Keuze 1: de looptijd van een machtiging.* Zolang de goedkeuring geldt, geeft de vertrouwde dienstverlener na afloop een nieuwe machtiging uit, zonder nieuwe goedkeuring. De ontwerpbeslissingen kiezen ongeveer 3 maanden.

| Looptijd | Voordelen | Nadelen |
|---|---|---|
| **Ongeveer 2 jaar** | Overbrugt de tijd tot de EBW; geen automatische vernieuwing nodig. | Na een wisseling van dienstverlener blijft de oude machtiging tot 2 jaar geldig; intrekken kan alleen door een certificaat in te trekken. Bij vernieuwing van het UZI-certificaat moeten alle machtigingen opnieuw worden uitgegeven. |
| **Ongeveer 3 maanden** | Een ongewenste machtiging blijft hooguit enkele maanden geldig; de vernieuwing staat los van de uitwisseling. | Automatische vernieuwing moet worden gebouwd, bij de vertrouwde dienstverlener en bij de dienstverleners. |
| **Kort, bijvoorbeeld 5 minuten** | Een ingetrokken goedkeuring werkt vrijwel direct door. | De uitgifte wordt onderdeel van elke uitwisseling, met dezelfde eisen aan beschikbaarheid en capaciteit. |

*Keuze 2: wie de machtigingen ondertekent.*
- **De dienstverlener van de zorgaanbieder,** bijvoorbeeld zijn EPD-leverancier, zoals nu bij M0.
- **Een stelselpartij,** zoals Twiin, Nuts of VZVZ, die namens zorgaanbieders een UZI-servercertificaat beheert. Anders dan een uitgever bij M2 kan zij alleen ondertekenen voor zorgaanbieders die haar een UZI-certificaat geven. Met de sleutels van veel zorgaanbieders wordt zij wel een aantrekkelijk doelwit.

Een **open-source ondertekenservice**, beschikbaar gesteld en onderhouden door een nog aan te wijzen partij, kan voor beide de investering verlagen en zorgt voor een eenduidige invulling van de afspraken.

- *Voordelen:*
  - **Op korte termijn haalbaar,** zonder nieuwe partij, erkenning of centrale voorziening.
  - **Geen register in de controle.** De authorization server heeft geen LRZa-replica of machtigingsvoorziening nodig, alleen de intrekkingsstatus van de certificaten. Een compromittering van de LRZa kan hooguit naar een verkeerd uitgifte-endpoint verwijzen, maar geen geldige machtigingen maken.
  - **Eén sleutelhouder.** Alleen de vertrouwde dienstverlener heeft de UZI-sleutel.
  - **Ondertekend verzoek,** inclusief het RAR-object.
  - **In lijn met de EBW:** formaat, binding en uitgifteprotocol zijn die van attestaties uit een wallet.
- *Nadelen:*
  - **Vertrouwen in de sleutelhouder.** De vertrouwde dienstverlener kan zichzelf en anderen machtigen, en de goedkeuring verloopt via zijn applicatie; voor hem is het vertrouwen even groot als bij M0.
  - **UZI-servercertificaat nodig,** en het gebruik daarvan voor het ondertekenen moet met het CIBG worden afgestemd.
  - **Geen tussentijdse intrekking.** Direct afsluiten kan alleen door een certificaat in te trekken, en dat raakt meer dan één machtiging.
  - **Eigen profiel.** SD-JWT VC is nog een draft, en de presentatie in een token exchange, met het meetekenen van het RAR-object, is een eigen profiel. Gangbare authorization servers controleren dat niet zonder uitbreiding ([bijlage C](#bijlage-c-impact-op-authorization-servers)).

### M2 — Variant van M1: tijdelijke uitgifte door vertrouwde uitgevers
Zoals M1, maar enkele door het GIS erkende uitgevers ondertekenen de machtiging met hun eigen certificaat. Aanleiding was de expertgroep van 23 oktober 2026. Daar is voorgesteld machtigingen tot de komst van de EBW te laten uitgeven door bestaande stelselpartijen, zoals Twiin, VZVZ en Nuts, bij voorkeur weinig en met een gemeenschappelijke certificaathiërarchie.

Ten opzichte van M1 verandert het volgende:
- **Uitgifte.** De dienstverlener vraagt de machtiging aan bij een erkende uitgever, bijvoorbeeld die van zijn stelselpartij; een aanwijzing in de LRZa is niet nodig. Een medewerker van de zorgaanbieder logt daar in met eHerkenning en keurt de aanvraag goed. Het URA haalt de uitgever uit het UZI-register.
- **Ondertekening en controle.** De uitgever ondertekent met zijn eigen certificaat. De authorization server controleert of de uitgever op de vertrouwenslijst van het GIS staat, en vertrouwt hem voor de koppeling tussen zorgaanbieder en dienstverlener. Een gemeenschappelijke CA bevestigt alleen de identiteit van een uitgever, niet zijn erkenning; daarom is een vertrouwenslijst nodig, of een CA die alleen erkende uitgevers een certificaat geeft.
- **Erkenning.** Het GIS legt voor alle uitgevers dezelfde eisen vast: het vaststellen van de zorgaanbieder en zijn goedkeuring, functiescheiding (geen machtigingen aan zichzelf of aan een dienstverlener die bij hem hoort), beschikbaarheid, logging en audits.
- **Wettelijke status.** Het uitgeven van attestaties is een vertrouwensdienst ([eIDAS](https://eur-lex.europa.eu/legal-content/NL/TXT/?uri=CELEX:02014R0910-20241018), art. 3, punt 16, onder g). Een uitgever wordt daarmee vertrouwensdienstverlener, met risicobeheer, een meldplicht binnen 24 uur, toezicht door de [RDI](https://www.rdi.nl/onderwerpen/digitale-weerbaarheid/elektronische-vertrouwensdiensten) en NIS2 ([Richtlijn (EU) 2022/2555](https://eur-lex.europa.eu/legal-content/NL/TXT/?uri=CELEX:32022L2555); in Nederland de Cyberbeveiligingswet). Het GIS kan daarnaast kwalificatie (QTSP) eisen, met een audit en een besluit van de RDI binnen drie maanden. De details staan in de [beveiligingsreview](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/authenticatie-en-autorisatie-security-review.html#legal-and-regulatory-obligations).
- **Dezi-register.** Op termijn kan het Dezi-register de enige uitgever worden; het is ook de bron van het URA, zodat een vertrouwenslijst niet nodig is. Voor Q1 2027 is dat geen optie: de Tweede Kamer heeft de Wet DIAZ op 6 oktober 2026 aangenomen, maar die is nog niet in werking, en het vastleggen van machtigingen vraagt mogelijk een aanvulling op de wettelijke taak.

- *Voordelen ten opzichte van M1:* de zorgaanbieder heeft alleen eHerkenning nodig, en geen dienstverlener beheert zijn UZI-sleutel; geen zelfmachtiging, omdat de zorgaanbieder goedkeurt bij een uitgever die geen dienstverlener van hem is; aansluiting bij de stelselpartijen waarbij partijen al zijn aangesloten.
- *Nadelen ten opzichte van M1:*
  - **De zwakste uitgever bepaalt het geheel.** Controleurs zien alleen de handtekening van de uitgever, niet de authenticatie van de zorgaanbieder. Een uitgever kan technisch voor elke zorgaanbieder machtigingen uitgeven, dus een fout of compromittering bij één uitgever raakt alle zorgaanbieders, vergelijkbaar met een gecompromitteerde LRZa bij M3. Bij M1 kan de vertrouwde dienstverlener dat alleen voor zijn eigen zorgaanbieders.
  - **Het bewijs van de goedkeuring ligt bij de uitgever.** De machtiging is een verklaring van de uitgever, niet ondertekend door de zorgaanbieder.
  - **Niet haalbaar in Q1 2027.** De uitgevers moeten nog worden gekozen, onderzocht en erkend (NEN 7512, 6.1.3), met gelijke eisen, toezicht en aansprakelijkheid. Elke uitgever moet een nieuwe voorziening bouwen (OpenID4VCI, eHerkenning, vernieuwing, logging), iemand moet de vertrouwenslijst beheren, en elke zorgaanbieder moet bij een uitgever terechtkunnen, ook zonder aansluiting bij een stelselpartij. Kwalificatie, als het GIS die eist, kost daarnaast maanden.

### M3 — `OrganizationAffiliation` in de LRZa
De zorgaanbieder registreert de machtiging in het LRZa-portaal, na inloggen met eHerkenning, als `OrganizationAffiliation` met de dienstverlener als `participatingOrganization` en een machtigingscode als `code`. Een dienstverlener mag zichzelf niet kunnen machtigen. De machtiging wordt gerepliceerd naar de LRZa-replica's van dienstverleners (ITI-91-NL).

Bij het tokenrequest reist geen machtiging mee. De dienstverlener vraagt een token aan met *client credentials*, en vermeldt in het RAR-object namens welke zorgaanbieder (`subject_organization_id`) en met welk doel (`purpose_of_use`) hij handelt. De controle gebeurt aan beide kanten in de LRZa-replica:
- De **opvragende dienstverlener** controleert vóór het verzoek dat het endpoint bij de bronhoudende zorgaanbieder hoort, en dat die de dienstverlener van de bron, herkenbaar aan zijn servercertificaat, heeft gemachtigd met bijvoorbeeld `TREAT-custodian`.
- De **authorization server van de bron** controleert of de opvragende zorgaanbieder de geauthenticeerde dienstverlener heeft gemachtigd met de code die bij het doel hoort, bijvoorbeeld `TREAT-user`.

De uitwisseling verloopt verder zoals in het [voorbeeld in GF Authentication](./authentication.html#use-case-retrieving-a-nursing-handover), maar zonder *Protected Resource Metadata* en Client ID Metadata Document.

- *Voordelen:* de zorgaanbieder heeft alleen eHerkenning nodig, geen UZI-servercertificaat of ondertekendienst; geen centrale bevraging tijdens de uitwisseling; een centraal overzicht van machtigingen; het bouwt voort op de LRZa; machtigingen aan beide kanten worden op dezelfde manier vastgelegd en gecontroleerd.
- *Nadelen:* wijziging en intrekking werken door na de volgende synchronisatie (geadviseerd: ongeveer 15 minuten); de machtigingen staan in een centrale dienst, zodat een compromittering van de LRZa machtigingen kan aanmaken en wijzigen zonder dat anderen dat kunnen verifiëren.

### M4 — Combinatie van M1 en M3: één dienstverlener ondertekent machtigingen met het UZI-certificaat van de zorgaanbieder
Zoals M3, maar elke machtiging is ondertekend met het UZI-servercertificaat van de zorgaanbieder, dat, net als bij M1, één vertrouwde dienstverlener beheert. De zorgaanbieder machtigt hem eenmalig in het LRZa-portaal voor het beheer van zijn LRZa-gegevens (`HSYSADMIN-custodian`). Daarna registreert de vertrouwde dienstverlener de machtigingen via de LRZa-API (ITI-130-NL), elk met een ondertekende `Provenance` volgens [Resource signing](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/signing.html), een optie die de Care Service Directory al kent ([Mutation signing](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/csd.html#mutation-signing-optional)). Controleurs controleren ook de `Provenance`: de handtekening, de UZI-keten, de intrekkingsstatus en of het URA gelijk is aan `organization`.

- *Voordelen ten opzichte van M3:* een compromittering van de LRZa, het portaal of een replica kan geen geldige machtigingen toevoegen; de zorgaanbieder gebruikt het portaal alleen voor de vertrouwde dienstverlener.
- *Nadelen ten opzichte van M3:* de vertrouwde dienstverlener kan zichzelf en anderen machtigen, zoals bij M0; de zorgaanbieder heeft een UZI-servercertificaat nodig, waarvan het gebruik met het CIBG moet worden afgestemd; de controle hangt ook af van de intrekkingsstatus van het UZI-certificaat.

### M5 — Variant van M3 met de European Business Wallet
Zoals M3, maar de zorgaanbieder verzegelt de `OrganizationAffiliation` in het LRZa-portaal met zijn EBW, in een `Provenance` volgens Resource signing. Controleurs controleren het zegel tegen de Europese vertrouwenslijsten, inclusief de intrekkingsstatus, en of het KvK-nummer of de EUID in het zegel bij het URA hoort.

- *Voordelen ten opzichte van M3:* een compromittering van de LRZa kan geen geldige machtigingen toevoegen, en het gekwalificeerde zegel levert bewijs in een geschil; er is geen UZI-servercertificaat nodig.
- *Nadelen ten opzichte van M3:* nog niet operationeel ([bijlage B](#bijlage-b-attestaties-in-de-european-business-wallet)); het LRZa-portaal moet de wallet ondersteunen; de controle hangt ook af van de intrekkingsstatus van het zegelcertificaat.

### M6 — Variant van M1 en M2: identiteit en machtiging als twee attestaties
De Nuts Kring Techniek stelde deze variant op 4 november 2026 voor. M6 scheidt twee vragen die bij M1 en M2 in één machtiging samenkomen: *wie is de zorgaanbieder?* en *wat mag de dienstverlener namens hem?* De dienstverlener krijgt daarvoor twee attestaties van twee onafhankelijke uitgevers, gebonden aan dezelfde sleutel. Hetzelfde patroon gebruiken de EUDI-wallet en iSHARE.

- **Identiteitsattestatie.** Koppelt een sleutel van de dienstverlener aan het URA, ondertekend met de UZI-sleutel van de zorgaanbieder, zoals de machtiging bij M1. Andere dienstverleners krijgen haar, net als bij M1, van de vertrouwde dienstverlener, na goedkeuring door de zorgaanbieder; anders zou elke dienstverlener een UZI-certificaat nodig hebben. Zij is dus een machtiging volgens M1 zonder machtigingscodes.
- **Machtiging door een notaris.** Uitgegeven zoals bij M2, maar door een *notaris*: een uitgever die geen UZI-sleutels beheert, geen dienstverlener in de uitwisseling is, en geen machtiging aan zichzelf of een eigen dienst uitgeeft. De zorgaanbieder keurt goed bij de notaris, buiten de dienstverlener om, met eHerkenning of een ander geaccepteerd proces.
- **Presentatie en controle.** De dienstverlener presenteert beide attestaties bij elk tokenrequest. De authorization server controleert de identiteitsattestatie zoals bij M1, de machtiging zoals bij M2, en of URA en sleutel in beide gelijk zijn. De bron publiceert beide in zijn *Protected Resource Metadata*.
- **Geldigheid, erkenning en status.** Looptijd en vernieuwing zoals bij M1; intrekken bij één van beide uitgevers is genoeg. De kaderstellende partijen erkennen de notarissen; Nuts bouwt er een voor zijn deelnemers, en Twiin en VZVZ kunnen dat ook. Het voorstel gaat ervan uit dat een notaris in de pilots onder de uitzondering voor gesloten systemen valt (eIDAS, art. 2, lid 2); anders gelden de verplichtingen van M2.

- *Voordelen:* geen zelfmachtiging door de vertrouwde dienstverlener, omdat de notaris de machtiging uitgeeft en het bewijs van de goedkeuring bewaart; stapsgewijs in te voeren vanuit M1; uitbreidbaar met andere attestaties, zoals deelname aan een stelselpartij.
- *Nadelen:*
  - **Beide voorzieningen nodig:** een UZI-servercertificaat en een aanwijzing in de LRZa (M1), én eHerkenning bij een notaris (M2). Verifiers gebruiken twee soorten vertrouwensankers.
  - **Twee goedkeuringen per dienstverlener.** Geeft de vertrouwde dienstverlener een identiteitsattestatie uit op basis van alleen de machtiging van de notaris, dan kan één notaris weer geldige combinaties maken, zoals een uitgever bij M2.
  - **Meer werk dan M1:** het werk van M1 plus dat van de uitgevers bij M2.
  - **Voorwaarde:** verifiers accepteren voor een zorgaanbieder geen clientauthenticatie met zijn UZI-certificaat (M0) en geen machtigingen volgens M1 meer; anders kan de vertrouwde dienstverlener de notaris omzeilen.
  - **Nog niet uitgewerkt:** de presentatie van beide attestaties, certificaatvernieuwing, registratie bij een notaris, de aansluiting van de twee goedkeuringen, en de wettelijke status van notarissen.

### M7 — Machtiging in het Client ID Metadata Document en de Protected Resource Metadata
Beide dienstverleners publiceren de machtiging van hun zorgaanbieder in de OAuth-metadata: de opvragende dienstverlener in een Client ID Metadata Document ([optie R5](#optie-r5-client-id-metadata-document)), de bron in zijn *Protected Resource Metadata* (paragraaf 2.6). Het tokenrequest is een gewone aanvraag met *client credentials*. Dit is het voorstel in de [ontwerpbeslissingen](./authenticatie-en-autorisatie-ontwerpbeslissingen.html); [GF Authentication](./authentication.html) specificeert het, met voorbeelden.

- **Uitgifte.** Zoals bij M1: de vertrouwde dienstverlener geeft de machtiging uit met OpenID4VCI, na goedkeuring door de zorgaanbieder, en ondertekent haar met de UZI-sleutel van de zorgaanbieder. Zij is ten hoogste 3 maanden geldig, zonder statuslijst. De machtiging is niet gebonden aan een sleutel van de dienstverlener (geen `cnf`), maar via `may_act.sub` aan zijn certificaat.
- **Publicatie.** De opvragende dienstverlener publiceert per zorgaanbieder een document met een eigen `client_id`, bijvoorbeeld `https://dienstverlener-a.nl/oauth/clients/ura-11111111`, met de machtiging als `software_statement` ([RFC 7591](https://www.rfc-editor.org/rfc/rfc7591), paragraaf 2.3). Die client staat voor 'dienstverlener A namens zorgaanbieder X'. Het `scope` in de machtiging gaat voor op dat in het document, zodat de dienstverlener zichzelf geen ruimere reikwijdte kan geven. De host van de `client_id` staat als DNS-naam in het certificaat van de dienstverlener.
- **Tokenrequest.** *Client credentials* met mTLS (`tls_client_auth`), de `client_id` van het document en het RAR-object. Een token exchange, een *key binding*-JWT en een eigen sleutel van de dienstverlener zijn niet nodig.
- **Controle.** De authorization server haalt het document op over mTLS, en controleert de handtekening van de machtiging, de UZI-keten en het URA tegen `sub`. Bij elk tokenrequest controleert hij de *subject DN* en de host van de `client_id` tegen het certificaat, de geldigheid van de machtiging, de intrekkingsstatus van het UZI-certificaat, `may_act.sub` tegen de identificatie uit het certificaat, en of `purpose_of_use` bij de machtigingscodes past en `subject_organization_id` bij `sub`.
- **Vernieuwen.** De dienstverlener zet een nieuwe machtiging in zijn document ten minste de maximale cacheduur voordat de oude verloopt.
- **Uitbreiding.** Blijken later andere attestaties per verzoek nodig, zoals een bewijs van de behandelrelatie, dan kan de *client-credentials*-flow worden vervangen door de token exchange uit M1 en M6. Het `subject_token` bevat dan alleen die andere attestaties, elk met een *key binding*-JWT; de machtiging staat al in het Client ID Metadata Document.

- *Voordelen ten opzichte van M1:*
  - **Standaard tokenrequest.** *Client credentials* met mTLS en RAR, zonder token exchange, *key binding*-JWT, eigen sleutel of administratie van `nonce`-waarden. De dienstverlener kan elke OAuth-clientbibliotheek met mTLS gebruiken.
  - **Registratie en publicatie vallen samen.** De authorization server leert de client en zijn machtiging uit hetzelfde document, en controleert de handtekening één keer per cacheduur.
  - **Symmetrie.** Beide dienstverleners publiceren de machtiging op dezelfde manier, in de metadata die OAuth daarvoor kent.
  - **Dezelfde uitgifte en hetzelfde groeipad naar de EBW** als bij M1.
- *Nadelen ten opzichte van M1:*
  - **Afhankelijk van R5:** een draft, jonge ondersteuning in producten, uitgaande verbindingen en de bereikbaarheid van het document. Geen van de onderzochte producten haalt bij *client credentials* een Client ID Metadata Document op, en de controle van de machtiging blijft maatwerk ([bijlage C](#bijlage-c-impact-op-authorization-servers)).
  - **Geen ondertekend verzoek.** mTLS beschermt het verzoek en het RAR-object alleen onderweg, en de TLS-sleutel is de enige sleutel die de machtigingen beschermt.
  - **Eén controle draagt de binding.** De machtiging is voor alle deelnemers leesbaar. Mist een authorization server de controle van `may_act.sub` tegen het certificaat, dan kan elke deelnemer haar gebruiken.
  - **Veel clients.** Een authorization server krijgt een client per combinatie van dienstverlener en zorgaanbieder.

### Vergelijking

| Variant | Zorgaanbieder heeft nodig | Vindplaats van de machtiging | Externe afhankelijkheid (cachebaar) | Intrekking |
|---|---|---|---|---|
| **M0** UZI-sleutel bij de dienstverlener | UZI-servercertificaat, sleutel bij de dienstverlener | Niet van toepassing | OCSP of CRL van het UZI-register | Intrekken UZI-certificaat |
| **M1** Vertrouwde dienstverlener geeft uit | UZI-servercertificaat (sleutel bij de vertrouwde dienstverlener) en eHerkenning (aanwijzing in de LRZa) | Bij de dienstverlener, gepresenteerd in het tokenrequest; die van de bron in de *Protected Resource Metadata* | OCSP of CRL van het UZI-register | Verloop aan het einde van de looptijd (*keuze 1*); direct alleen door intrekken van een certificaat |
| **M2** Erkende uitgevers (tijdelijk) | eHerkenning (goedkeuring bij een uitgever) | Zoals M1 | Vertrouwenslijst van uitgevers; OCSP of CRL van het certificaat van de uitgever | Zoals M1 |
| **M3** `OrganizationAffiliation` in de LRZa | eHerkenning | LRZa-replica | Synchronisatie met de LRZa | Deactiveren in het portaal |
| **M4** Combinatie van M1 en M3 | UZI-servercertificaat (sleutel bij één dienstverlener) en eHerkenning | LRZa-replica, met `Provenance` | Synchronisatie met de LRZa; OCSP of CRL van het UZI-register | Deactiveren; intrekken UZI-certificaat |
| **M5** M3 met de EBW | Business wallet | LRZa-replica, met `Provenance` | Synchronisatie met de LRZa; EU-vertrouwenslijsten | Deactiveren in het portaal |
| **M6** Identiteit en machtiging gescheiden | Zoals M1, plus eHerkenning bij een notaris | Zoals M1, met een identiteitsattestatie en een machtiging | OCSP of CRL van het UZI-register en van de notaris; vertrouwenslijst van notarissen | Vernieuwing weigeren bij een van beide uitgevers; direct alleen door intrekken van een certificaat |
| **M7** Machtiging in de OAuth-metadata | Zoals M1 | Bij de dienstverlener, in een Client ID Metadata Document per zorgaanbieder; die van de bron in de *Protected Resource Metadata* | Client ID Metadata Document van de dienstverlener; OCSP of CRL van het UZI-register | Zoals M1 |

Geen variant is dus volledig zonder centrale afhankelijkheid. Bij M1, M2, M6 en M7 staat geen register in de controle, maar wel de intrekkingsdienst van de certificaatuitgever van de ondertekenaar; zonder statuslijst vervalt een machtiging pas als zij verloopt. Bij M7 hangt de authorization server ook af van de bereikbaarheid van het Client ID Metadata Document. M3 hangt af van de synchronisatie met de LRZa, M4 en M5 daarnaast van de intrekkingsdienst. In alle varianten controleren de authorization server en de resource server de intrekkingsstatus van het certificaat van de dienstverlener (paragraaf 2.5). De beveiligingsrisico's per variant staan in de [beveiligingsreview](https://build.fhir.org/ig/minvws/generiekefuncties-docs/branches/authn-for-push/en/authenticatie-en-autorisatie-security-review.html).

## 2.3 Voorstel voor machtigingscodes
Uitgangspunt is dat een code alleen wordt toegevoegd als die een dienstverlener beperkt tot wat hij voor zijn taak nodig heeft. Een code die dat niet doet, levert alleen administratie en foutkans op.

Binnen eOverdracht en de BgZ-MSZ is behandeling het enige doel, maar daarbuiten lopen de taken van dienstverleners uiteen. Een viewer waarmee zorgverleners gegevens bij andere zorgaanbieders inzien, heeft alleen `TREAT-user` nodig; de toestemming van de patiënt controleert de bron (`TREAT-custodian`). Een dienstverlener die gegevens uitgeeft aan onderzoekers, heeft `HRESCH-custodian` nodig, maar hoeft geen BgZ te kunnen ophalen. Zonder onderscheid naar doel zou hij gegevens kunnen verzamelen onder de noemer behandeling, in strijd met de doelbinding ([AVG](https://eur-lex.europa.eu/eli/reg/2016/679/oj), art. 5 lid 1 onder b).

Ook het onderscheid tussen `user` en `custodian` draagt bij. Een viewer, of een portaal waarmee een zorgaanbieder overdrachten alleen ontvangt, heeft alleen `TREAT-user` nodig; een archief alleen `TREAT-custodian`. Een EPD-leverancier die beide doet, krijgt beide codes in één machtiging, zonder extra administratie. Krijgen in de praktijk vrijwel alle dienstverleners beide codes, dan kunnen ze worden samengevoegd.

Een machtigingscode bestaat uit een doel en een rol: `<doel>-<rol>`.
- **Doel:** een code van het hoogste niveau uit de HL7-codelijst *PurposeOfUse* ([v3-ActReason](https://terminology.hl7.org/CodeSystem-v3-ActReason.html)), dezelfde codelijst als voor `purpose_of_use` in het RAR-object. Een machtiging voor een doel geldt ook voor de specialisaties ervan: `TREAT` omvat bijvoorbeeld spoed (`ETREAT`) en zorgcoördinatie (`COC`). Voor beheer wordt `HSYSADMIN` (*health system administration*) gebruikt, een code onder `HOPERAT`.
- **Rol:** `user`, gegevens opvragen en ontvangen namens de zorgaanbieder, doorgaans als OAuth-client; of `custodian`, als bronhouder gegevens beschikbaar stellen of registreren namens de zorgaanbieder, doorgaans als authorization server en resource server, en bij registratie in de LRZa of de NVI als client van die voorziening.

| Doel (PurposeOfUse) | `<doel>-user`: de dienstverlener mag namens de zorgaanbieder… | `<doel>-custodian`: de dienstverlener mag namens de zorgaanbieder… |
|---|---|---|
| `TREAT` — behandeling | gegevens opvragen voor de behandeling van patiënten, zoals BgZ, European Patient Summary, eOverdracht, Medicatieoverdracht, geboortezorg en spoed, en daarvoor de NVI doorzoeken. | gegevens beschikbaar stellen voor de behandeling van patiënten, daarvoor toestemmingen raadplegen bij de OTV, en patiënten registreren bij de NVI (lokalisatie). |
| `PATRQT` — op verzoek van de patiënt | gegevens opvragen op verzoek van de patiënt. | gegevens beschikbaar stellen aan de patiënt of diens persoonlijke gezondheidsomgeving (PGO). |
| `HRESCH` — onderzoek | gegevens opvragen voor (medisch-wetenschappelijk) onderzoek. | gegevens uitgeven voor onderzoek, en datasetbeschrijvingen bijwerken in de catalogus van de Health Data Access Body (HDAB, EHDS). |
| `PUBHLTH` — publieke gezondheid | gegevens opvragen voor publieke gezondheid. | gegevens verstrekken voor publieke gezondheid, zoals meldingen van infectieziekten. |
| `HSYSADMIN` — beheer | gegevens van de zorgaanbieder opvragen uit de LRZa (adressering) en bijwerken van 'eigen' resources (b.v. Endpoints) in het LRZa  | gegevens van de zorgaanbieder registreren en bijwerken in de LRZa (adressering). |

Dit levert tien codes op: `TREAT-user`, `TREAT-custodian`, `PATRQT-user`, `PATRQT-custodian`, `HRESCH-user`, `HRESCH-custodian`, `PUBHLTH-user`, `PUBHLTH-custodian`, `HSYSADMIN-user` en `HSYSADMIN-custodian`.

- **Doel en machtiging hangen samen.** De authorization server van de bron leidt de vereiste code af uit `purpose_of_use` in het RAR-object: een verzoek met doel `TREAT` vraagt `TREAT-user`. Omgekeerd controleert de opvragende dienstverlener dat de dienstverlener van de bron `TREAT-custodian` heeft.
- **Bewust algemeen.** Eén code dekt alle zorgtoepassingen met hetzelfde doel, zodat zorgaanbieders de machtiging niet bij elke nieuwe toepassing hoeven aan te passen. Een fijnere code, zoals `ETREAT-user`, of een ander doel, zoals betaling (`HPAYMT`), kan worden toegevoegd als een toepassing erom vraagt.

## 2.4 Registratie van OAuth-clients
Een authorization server moet bij elk tokenrequest vaststellen welke client het verzoek doet, en met welk sleutelmateriaal. FAPI 2.0 schrijft niet voor hoe clients worden geregistreerd. Vijf opties zijn beschouwd.

### Optie R1: Dynamic Client Registration naar voorbeeld van UDAP
De dienstverlener registreert zich bij elke authorization server via [Dynamic Client Registration](https://www.rfc-editor.org/rfc/rfc7591) (RFC 7591), geprofileerd volgens het HL7 [UDAP Security IG](https://hl7.org/fhir/us/udap-security/STU2/). Hij ondertekent een *software statement* met de sleutel van zijn certificaat; de server valideert handtekening, keten en intrekkingsstatus, en geeft een `client_id` uit. De Europese concept-specificatie [EU Health Data API](https://github.com/euridice-org/eu-health-data-api) gaat voor systeemkoppelingen uit van registratie buiten het protocol om.

- *Voordelen:* een gestandaardiseerd protocol met een uitgewerkt zorgprofiel (UDAP STU2, december 2025), gebruikt in de Verenigde Staten, onder meer in TEFCA; de client is daarna bekend bij de server; een software statement kan product, versie of certificeringen vastleggen.
- *Nadelen:* per authorization server een registratie en een `client_id`, met herregistratie bij certificaatvernieuwing; UDAP is in de onderzochte producten niet ingebouwd.

### Optie R2: client-id afgeleid uit het clientcertificaat
De registratiestap vervalt. De authorization server leidt de `client_id` af uit een persistente identificatie in het certificaat van de dienstverlener, zoals het KvK-nummer, de OIN of het URA, en controleert dat de `client_id` in het verzoek daarmee overeenkomt ([GF Authentication](./authentication.html#service-provider-identifier)). Zo werkt ook PSD2: een bank identificeert een betaaldienstverlener met diens eIDAS-certificaat, en de Berlin Group gebruikt het `organizationIdentifier` uit dat certificaat als `client_id` ([Berlin Group V2.4.1, §8.8](https://berlin-group.org/wp-content/uploads/2026/09/11c.-Berlin-Group-openFinance-API-Framework-Core-PSD2-Compliance-V2-Suite-Protocol-Functions-and-Security-Measures-V2.4.1-20260731.pdf)).

Wat R1 daarnaast biedt, een software statement, is niet nodig. NEN 7513 vraagt niet om product, versie of kwalificatie in de logging; het certificaat identificeert het externe systeem voldoende. De EHDS legt de conformiteit bij de fabrikant ([Verordening (EU) 2025/327](https://eur-lex.europa.eu/eli/reg/2025/327/oj), art. 39 lid 5).

- *Voordelen:* geen 'state': clients en servers wisselen geen `client_id` uit, en een clientrecord is volledig af te leiden uit het certificaat; geen herregistratie, want de identificatie blijft gelijk bij certificaatvernieuwing; geen registratie-endpoint en geen software statements.
- *Nadelen:* de meeste authorization servers kennen alleen vooraf geregistreerde clients. Vooraf registreren door de beheerder vraagt een lijst van deelnemers, bijvoorbeeld uit de LRZa, en dus een extra functie voor de LRZa en doorlopend werk. De server moet de client daarom bij elk verzoek uit het certificaat afleiden, en hem zo nodig bij het eerste gebruik aanmaken; dat vraagt een uitbreiding ([bijlage C](#bijlage-c-impact-op-authorization-servers)). Het afleiden is een profielregel die het GIS moet vastleggen.

### Optie R3: vereenvoudigde registratie met een eigen client-id
Een variant van R1 zonder software statement en zonder 'state' bij de client. De dienstverlener gebruikt als `client_id` de waarde uit R2. Krijgt hij `invalid_client`, dan registreert hij zich via RFC 7591 over mTLS, met `tls_client_auth`, en doet hij het verzoek opnieuw; een bestaande registratie geldt als geslaagd.

Beschouwd is ook *idempotente registratie*: de server kent de `client_id` toe, maar geeft bij hetzelfde certificaat steeds dezelfde client terug. RFC 7591 (paragraaf 3.2.1) staat dat toe, maar beschrijft niet wanneer twee registraties dezelfde client zijn. Vergelijkt de server de *subject DN*, dan levert elke certificaatvernieuwing met een andere DN een nieuwe client op; vergelijkt hij het KvK-nummer, de OIN of het URA, dan is het de afleidingsregel van R2, met een registratiestap ervoor. Omdat RFC 8705 de `client_id` in het tokenrequest vraagt, bewaart de client die alsnog, of registreert hij zich vóór elk tokenrequest. De onderzochte producten ondersteunen het niet: Keycloak maakt bij elke registratie een nieuwe client ([bijlage C](#bijlage-c-impact-op-authorization-servers)).

- *Voordelen:* geen 'state' bij de client; de server gebruikt zijn registratie-endpoint, in plaats van een uitbreiding van de clientauthenticatie.
- *Nadelen:*
  - **Geen standaard.** In RFC 7591 kiest de server de `client_id`. Het OIDC-registratie-endpoint van Keycloak weigert een verzoek met een `client_id`, en alleen het eigen registratieformaat van Keycloak accepteert er een; in Duende moet de generatie van client-id's worden aangepast. Een client moet dus per product een ander verzoek doen.
  - **Geen koppeling met het certificaat.** Geen van de producten controleert of de gevraagde `client_id` past bij het certificaat van de verbinding. Zonder die controle kan een andere deelnemer de `client_id` van een dienstverlener vooraf registreren met zijn eigen certificaat, en hem zo buitensluiten.
  - **Werk bij elke client:** de registratie en de foutafhandeling.

R3 vervangt de uitbreiding uit R2 dus door twee andere, een eigen client-id en de controle op het certificaat, en vraagt meer werk dan R2.

### Optie R4: vereenvoudigde registratie met een toegekende client-id
Een variant van R1 zonder software statement, waarin de server de `client_id` toekent, zoals RFC 7591 voorschrijft. De dienstverlener vindt het `registration_endpoint` via de *Protected Resource Metadata* en de metadata van de authorization server ([RFC 8414](https://www.rfc-editor.org/rfc/rfc8414)). Hij registreert zich bij een server die hem nog niet kent, over mTLS, met alleen de metadata die M1 gebruikt: `grant_types`, `tls_client_auth` met `tls_client_auth_subject_dn` ([RFC 8705](https://www.rfc-editor.org/rfc/rfc8705), paragraaf 2.1.2), `tls_client_certificate_bound_access_tokens` en `authorization_details_types`. Hij bewaart per server de `client_id`. Een *registration access token* ([RFC 7592](https://www.rfc-editor.org/rfc/rfc7592)) mag hij bewaren als hij dat veilig kan; daarmee kan hij de registratie bijwerken, bijvoorbeeld na certificaatvernieuwing, of verwijderen. Anders registreert hij zich opnieuw bij `invalid_client`.

De registratie hoeft niet te worden beveiligd: alleen wie de private sleutel van het certificaat heeft, kan de client gebruiken. Wel moet de machtiging worden vergeleken met de identificatie uit het certificaat ([GF Authentication](./authentication.html#service-provider-identifier)), en niet met de toegekende `client_id`, die per server verschilt.

- *Voordelen:* standaard registratie (RFC 7591 met RFC 8705); weinig werk in de authorization server: in Keycloak configuratie, in Duende een kleine aanpassing ([bijlage C](#bijlage-c-impact-op-authorization-servers)); de client is bekend bij de server.
- *Nadelen:* 'state' bij de client: per server een `client_id`, en eventueel een *registration access token*, dat een geheim is; werk bij elke client; open registratie, die de server moet beperken in aantal en tot de toegestane CA's; een vastgelegde schrijfwijze van de *subject DN*; niet mogelijk in Microsoft Entra ID en de Nuts-node.

### Optie R5: Client ID Metadata Document
De registratiestap vervalt, zoals bij R2, maar met een gestandaardiseerde client-id: de `client_id` is een HTTPS-URL op een domein van de dienstverlener, waar hij zijn clientmetadata publiceert ([OAuth Client ID Metadata Document](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/), IETF-draft, versie 03 van november 2026). De authorization server haalt het document op bij het eerste verzoek, en bewaart het volgens de HTTP-cache-headers. Veel authorization servers ondersteunen het al, vooral voor koppelingen met MCP-servers ([implementaties](https://oauth.net/2/client-id-metadata-document/)); [Parecki](https://aaronparecki.com/2026/07/29/19/cimd-over-dcr) beschrijft waarom het in open netwerken de voorkeur heeft boven RFC 7591. Het GIS legt vast dat de host van de `client_id` als DNS-naam in het certificaat van de dienstverlener staat; zo hoort de `client_id` bij de houder van het certificaat. [GF Authentication](./authentication.html#client-id-metadata-document) geeft een voorbeeld.

- *Voordelen:* geen registratie en geen 'state'; een standaard in plaats van een profielregel per product; de dienstverlener beheert zijn eigen metadata, bijvoorbeeld na certificaatvernieuwing; weinig werk bij de client.
- *Nadelen:* nog niet volwassen: een draft, in Keycloak experimenteel en beschreven voor autorisatieverzoeken, in Duende en de Nuts-node niet ondersteund ([bijlage C](#bijlage-c-impact-op-authorization-servers)); uitgaande verbindingen van de authorization server, met maatregelen tegen *server-side request forgery*; afhankelijk van de bereikbaarheid van het document; de machtiging en de logging hebben nog steeds de identificatie uit het certificaat nodig; een vastgelegde schrijfwijze van de *subject DN*.

R5 is daarmee de gestandaardiseerde vorm van R2.

### Vergelijking van R1 tot en met R5
| | R1 (UDAP) | R2 (uit het certificaat) | R3 (eigen client-id) | R4 (toegekende client-id) | R5 (Client ID Metadata Document) |
|---|---|---|---|---|---|
| **Werk bij de client** | Registratie met software statement, `client_id` per server bewaren | Geen | Registratie bij `invalid_client`; per product een ander verzoek | Registratie bij `invalid_client`, `client_id` (en eventueel het *registration access token*) per server bewaren | Eén document publiceren op het eigen domein |
| **Werk in de authorization server** | UDAP-ondersteuning; in de onderzochte producten niet ingebouwd | Uitbreiding: de client bij elk verzoek uit het certificaat afleiden (niet nodig in de Nuts-node) | Uitbreiding voor een eigen client-id en voor de controle op het certificaat | Configuratie (Keycloak) of een kleine aanpassing (Duende) | Ondersteuning van de draft (in Keycloak experimenteel, in Duende een eigen client store), plus de controle van de host tegen het certificaat |
| **Standaard** | RFC 7591 met UDAP | Profielregel van het GIS | RFC 7591 met een afwijking | RFC 7591 en RFC 8705 | IETF-draft met RFC 8705 |

Alle opties gebruiken dezelfde lijst van toegestane CA's en certificaatbeleid ([GF Authentication](./authentication.html#transport-and-certificates)).

### Voorstel
Optie R2: geen clientregistratie; de authorization server leidt de `client_id` af uit het certificaat van de dienstverlener. Naar analogie van PSD2 stelt een authorization server geen aanvullende registratie verplicht, maar mag hij een dienstverlener wel lokaal blokkeren. Het GIS stelt eisen aan de certificaten, zoals een vaste lijst van uitgevende CA's en het weigeren van persoonsgebonden certificaten ([GF Authentication](./authentication.html#transport-and-certificates)). Clients worden niet vooraf geregistreerd, ook niet door de beheerder; dat vraagt in de meeste producten een uitbreiding ([bijlage C](#bijlage-c-impact-op-authorization-servers)).

De [ontwerpbeslissingen](./authenticatie-en-autorisatie-ontwerpbeslissingen.html) kiezen inmiddels R5, in combinatie met M7: de gestandaardiseerde vorm van dezelfde gedachte.

## 2.5 Clientauthenticatie van de dienstverlener: mTLS
De dienstverlener authenticeert zich met zijn **eigen** certificaat, niet met de UZI-sleutel van de zorgaanbieder. Voor clientauthenticatie én *sender-constrained* access tokens wordt uitsluitend **mTLS** gebruikt ([RFC 8705](https://www.rfc-editor.org/rfc/rfc8705)), in plaats van `private_key_jwt` en DPoP uit de notitie; FAPI 2.0 staat dat toe. De notitie koos `private_key_jwt` onder meer omdat het transportcertificaat de zorgaanbieder niet altijd identificeert. Nu de dienstverlener zelf de client is, vervalt dat argument: het certificaat identificeert de dienstverlener, die verantwoordelijk is voor de verbinding, en de machtiging de zorgaanbieder. Dit blijft binnen het juridisch kader en de GISA.

- **Eén mechanisme** voor transport, clientauthenticatie en tokenbinding. Een JWKS-endpoint per zorgaanbieder, client assertions en DPoP-proofs zijn niet meer nodig.
- **Integriteit onderweg.** TLS beschermt het tokenrequest, inclusief het RAR-object, tegen wijziging, en de authorization server weet dat het van de geauthenticeerde dienstverlener komt. Dat is geen ondertekening: achteraf kan de server niet aan derden aantonen wat er is verzocht, en bij `private_key_jwt` evenmin. Bij M1, M2 en M6 ondertekent de dienstverlener het verzoek wel.
- **Intrekkingscontrole.** De authorization server en de resource server controleren de intrekkingsstatus van het certificaat van de dienstverlener, en de opvragende dienstverlener die van het servercertificaat van de bron. Is de status onbekend, dan wordt het verzoek geweigerd (*fail-closed*).
- **TLS-terminatie.** mTLS loopt door tot de authorization server en de resource server; een tussenpartij mag de verbinding niet beëindigen.

De technische eisen staan in [GF Authentication](./authentication.html#transport-and-certificates).

## 2.6 Access token: uitgifte door de authorization server van de bron
In de notitie ondertekent de bronhoudende zorgaanbieder het access token met zijn UZI-sleutel, en valideert de client die handtekening. Reviewers wijzen erop dat dit afwijkt van gangbare standaarden; IHE IUA stelt "The token is opaque to the Authorization Client". Een authorization server voor veel zorgaanbieders zou bovendien per zorgaanbieder een UZI-sleutel moeten beheren. Het voorstel:
- De authorization server van de bron ondertekent het access token met **zijn eigen sleutel**, en bindt het aan het certificaat van de client; de resource server controleert die binding bij elk verzoek.
- Het access token is ***opaque* voor de client**, en legt vast namens welke zorgaanbieder toegang is verleend en welke dienstverlener handelt. Hoe het wordt uitgegeven en gevalideerd, bepalen authorization server en resource server onderling.
- De opvragende dienstverlener stelt de **bronhoudende zorgaanbieder** vóór het verzoek vast. Bij M1, M2, M6 en M7 publiceert de resource server daarvoor de machtiging van die zorgaanbieder in zijn *Protected Resource Metadata* ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728)), met de authorization servers van het endpoint; bij M3 tot en met M5 controleert de dienstverlener dat in zijn LRZa-replica. Het servercertificaat bevestigt dat de verbinding met de gemachtigde dienstverlener is opgezet.

Zo blijft eis 1 uit de notitie, het wederzijds vaststellen van de identiteit van de zorgaanbieder, vervuld. Voor eOverdracht controleert de resource server daarnaast dat de `HealthcareService` in `Task.owner` hoort bij de zorgaanbieder namens wie wordt opgevraagd ([GF Authentication](./authentication.html#validation-by-the-resource-server)). De technische uitwerking, met een voorbeeld van de metadata, staat in [GF Authentication](./authentication.html#gf-autn-3-get-protected-resource-metadata). Eén restrisico blijft: de opvragende dienstverlener geeft zelf op namens welke zorgaanbieder hij handelt (paragraaf 2.7).

## 2.7 Grant en RAR-object
**Grant.** De notitie motiveerde de *client-credentials flow* met de stelling dat FAPI 2.0 die voorschrijft. Dat is onjuist: FAPI 2.0 sluit andere grants niet uit. De juiste motivatie is dat er geen interactieve gebruiker in de uitwisseling is: de zorgverlener is in het eigen domein geauthenticeerd, en de uitwisseling verloopt van systeem tot systeem. Bij M0, M3, M4 en M5 blijft *client credentials* de grant, en ook bij M7, waar de machtiging in het Client ID Metadata Document staat. Bij M1, M2 en M6 reist de machtiging mee in een token exchange ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693)).

**RAR-object.** Het RAR-object van type `nl-gis-v1` blijft, met één aanvulling: `subject_organization_id`, het URA van de zorgaanbieder namens wie de dienstverlener handelt. De vereiste machtigingscode volgt uit `purpose_of_use` (paragraaf 2.3), zodat een apart veld voor het machtigingstype niet nodig is. De authorization server controleert dat de zorgaanbieder in `subject_organization_id` de geauthenticeerde dienstverlener heeft gemachtigd met die code. Authenticeert de client zich met het UZI-servercertificaat van de zorgaanbieder zelf (M0), dan moet `subject_organization_id` gelijk zijn aan het URA in dat certificaat, en is geen machtiging nodig. Een voorbeeld staat in [GF Authentication](./authentication.html#rar-object).

# Bijlage B: attestaties in de European Business Wallet
Volgens het voorstel voor de EBW-verordening ([COM(2025) 838](https://www.eerstekamer.nl/bijlage/20251121/com_2025_838_proposal_for_a/document3/f=/vmsoctgrbbeb.pdf)) kan een EBW elektronische attestaties van attributen uitgeven aan andere EBW's en aan EUDI-wallets (art. 5 lid 1 onder f), ook gekoppeld aan andere attestaties in een keten (onder g), en attestaties bewaren en presenteren (onder a). Het begrip 'mandate' uit het voorstel (art. 2, punt 19) is iets anders: dat machtigt een vertegenwoordiger om de wallet te bedienen. Een machtiging voor gegevensuitwisseling past daarom als attestatie die de zorgaanbieder aan de dienstverlener uitgeeft.

De standaarden komen in uitvoeringshandelingen (art. 5 lid 5). Omdat een EBW attestaties moet kunnen uitwisselen met EUDI-wallets (art. 5 lid 1 onder c), ligt het voor de hand dat dezelfde standaarden gelden als in het [Architecture and Reference Framework](https://eu-digital-identity-wallet.github.io/eudi-doc-architecture-and-reference-framework/) (ARF) van de EUDI-wallet:
- SD-JWT VC of ISO mdoc als formaat, met het HAIP-profiel;
- OpenID4VCI voor uitgifte en OpenID4VP voor presentatie;
- een statuslijst voor intrekking, als een attestatie langer dan 24 uur geldig is;
- attestatieschema's in de catalogus van de Europese Commissie ([Uitvoeringsverordening (EU) 2025/1569](http://data.europa.eu/eli/reg_impl/2025/1569/oj), art. 8).

**Status.** Het voorstel dateert van 19 november 2025. Het Europees Parlement besloot op 7 oktober 2026 de onderhandelingen met de Raad te starten (de triloog; [procedure 2025/0358(COD)](https://oeil.europarl.europa.eu/oeil/en/procedure-file?reference=2025/0358(COD))). De verordening is dus nog niet aangenomen, en geldt volgens het voorstel één jaar na inwerkingtreding.

M1, M2, M6 en M7 nemen het formaat, de uitgifte en het attestatieschema over. Voor intrekking wijken ze voorlopig af: een machtiging heeft een beperkte looptijd in plaats van een statuslijst (M1, *keuze 1*). Bij een looptijd van minuten past dat bij het ARF; bij een looptijd van maanden of jaren is uiterlijk bij de overstap naar de EBW een statuslijst nodig.