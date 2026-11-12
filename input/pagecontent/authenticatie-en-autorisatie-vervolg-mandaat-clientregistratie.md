**Concept** · 12 november 2026

Dit document legt de ontwerpbeslissingen vast voor de machtiging van dienstverleners en de registratie van OAuth-clients bij de gegevensuitwisselingen BgZ en eOverdracht, en sluit af met een voorstel. Het bouwt voort op de notitie [*Harmonisatie van authenticatie en autorisatie voor de gegevensuitwisselingen BgZ en eOverdracht*](./authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html) (versie 0.95, hierna: de notitie), en past de technische keuzes uit hoofdstuk 6 van die notitie aan. Per beslissing staan de vraag, de opties, het besluit, de reden en de gevolgen. De bijlagen beschrijven de onderzochte alternatieven, met wat de implementatie vraagt en de grootste beveiligingsrisico's.
{: .ig-lead}

# Documenthistorie

| Versie | Status | Datum | Auteur | Wijziging |
|--------|--------|-------|--------|-----------|
| 0.1.0 | Concept | 16 oktober 2026 | VWS | eerste versie voor review expertgroep|
| 0.2.0 | Concept | 30 oktober 2026 | VWS | aanpassing variant M1 en M2 n.a.v. expertgroep op 23 oktober; 'mandaat' vervangen door 'machtiging' |
| 0.3.0 | Concept | 5 november 2026 | VWS | toevoeging variant M6 n.a.v. email/voorstel Nuts van 4 november |
| 0.4.0 | Concept | 12 november 2026 | VWS | presentatie van de machtiging als `vp_token` in M1, uitbreidbaar naar meer attestaties; opties R3, R4 en R5 voor clientregistratie; variant M7; analyse impact op authorization servers; herstructurering/invoegen van ontwerpbeslissingen  |

# Inhoudsopgave

- [Aanleiding](#aanleiding)
- [Uitgangspunten](#uitgangspunten)
- [Begrippen](#begrippen)
- [Ontwerpbeslissingen](#ontwerpbeslissingen)
  - [GF-AUTN-ADR-1: Waar staat de machtiging?](#gf-autn-adr-1-waar-staat-de-machtiging)
  - [GF-AUTN-ADR-2: Wie ondertekent de machtiging?](#gf-autn-adr-2-wie-ondertekent-de-machtiging)
  - [GF-AUTN-ADR-3: Hoe ziet de machtiging eruit?](#gf-autn-adr-3-hoe-ziet-de-machtiging-eruit)
  - [GF-AUTN-ADR-4: Wat mag de dienstverlener namens de zorgaanbieder?](#gf-autn-adr-4-wat-mag-de-dienstverlener-namens-de-zorgaanbieder)
  - [GF-AUTN-ADR-5: Intrekken of laten verlopen?](#gf-autn-adr-5-intrekken-of-laten-verlopen)
  - [GF-AUTN-ADR-6: Hoe worden clients geregistreerd?](#gf-autn-adr-6-hoe-worden-clients-geregistreerd)
  - [GF-AUTN-ADR-7: Welke grant?](#gf-autn-adr-7-welke-grant)
  - [Overige technische keuzes](#overige-technische-keuzes)
- [Voorstel: machtiging in Client ID Metadata Document en Protected Resource Metadata](#voorstel-machtiging-in-client-id-metadata-document-en-protected-resource-metadata)
  - [Werking](#werking)
  - [Blijft het een eenvoudige client-credentials-flow?](#blijft-het-een-eenvoudige-client-credentials-flow)
  - [Wat er moet gebeuren in Keycloak en Duende IdentityServer](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)
  - [Uitbreidbaarheid met andere attestaties](#uitbreidbaarheid-met-andere-attestaties)
- [Bijlage A: Varianten voor de machtiging](#bijlage-a-varianten-voor-de-machtiging)
  - [M0: Dienstverlener gebruikt de UZI-sleutel van de zorgaanbieder](#m0-dienstverlener-gebruikt-de-uzi-sleutel-van-de-zorgaanbieder)
  - [M1: Vertrouwde dienstverlener geeft machtigingen uit](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit)
  - [M2: Erkende uitgevers geven machtigingen uit](#m2-erkende-uitgevers-geven-machtigingen-uit)
  - [M3: Machtiging in de LRZa](#m3-machtiging-in-de-lrza)
  - [M4: Machtiging in de LRZa, ondertekend met de UZI-sleutel](#m4-machtiging-in-de-lrza-ondertekend-met-de-uzi-sleutel)
  - [M5: Machtiging in de LRZa, verzegeld met de EBW](#m5-machtiging-in-de-lrza-verzegeld-met-de-ebw)
  - [M6: Identiteit en machtiging als twee attestaties](#m6-identiteit-en-machtiging-als-twee-attestaties)
  - [M7: Machtiging in de OAuth-metadata (voorstel)](#m7-machtiging-in-de-oauth-metadata-voorstel)
  - [Vergelijking van de varianten](#vergelijking-van-de-varianten)
- [Bijlage B: Opties voor clientregistratie](#bijlage-b-opties-voor-clientregistratie)
  - [R1: Registratie volgens UDAP](#r1-registratie-volgens-udap)
  - [R2a: Client-id uit het certificaat](#r2a-client-id-uit-het-certificaat)
  - [R2b: Clients vooraf registreren](#r2b-clients-vooraf-registreren)
  - [R3: Registratie met een eigen client-id](#r3-registratie-met-een-eigen-client-id)
  - [R4: Registratie met een toegekende client-id](#r4-registratie-met-een-toegekende-client-id)
  - [R5: Client ID Metadata Document (voorstel)](#r5-client-id-metadata-document-voorstel)
- [Bijlage C: Beveiligingsrisico's](#bijlage-c-beveiligingsrisicos)

# Aanleiding
Op het concept van de notitie hebben onder meer Silizo, ChipSoft, Twiin, UMCG, Nedap, de Nuts Kring Techniek, VZVZ (AORTA/LSP) en RSO Nederland gereageerd. Twee punten kwamen in vrijwel alle inhoudelijke reacties terug:
- **Sleutelbeheer en machtiging.** De notitie laat de zorgaanbieder het tokenrequest én het access token ondertekenen met de sleutel van zijn UZI-servercertificaat. In de praktijk beheert vaak een dienstverlener die sleutel: een leverancier, SaaS-platform of knooppunt. Reviewers stellen voor dat de dienstverlener met een eigen identiteit handelt, op basis van een machtiging van de zorgaanbieder.
- **Clientregistratie.** De notitie beschrijft niet hoe een authorization server een OAuth-client herkent. FAPI 2.0 gaat uit van een bekende client, en handmatige, bilaterale registratie schaalt niet in een netwerk met veel partijen.

Het juridisch kader, de eisen en de GISA-uitgangspunten uit de notitie (hoofdstuk 4 en 5) blijven ongewijzigd.

# Uitgangspunten
- **Eigen identiteit.** De dienstverlener handelt met een eigen identiteit, zijn certificaat, op basis van een machtiging van de zorgaanbieder. Dat past bij GISA-keuze A44: het vertrouwen op de transportlaag ligt bij de verantwoordelijken voor de verbinding, het vertrouwen tussen verzender en ontvanger op de applicatielaag.
- **Haalbaar in Q1 2027.** De eOverdracht moet in het eerste kwartaal van 2027 werken.
- **Groeipad naar de EBW.** De oplossing moet kunnen meegroeien naar de European Business Wallet (EBW).
- **Standaarden boven maatwerk.** Bij voorkeur wordt een vastgestelde standaard gebruikt, zoals een RFC. Is die er niet, dan liever een draft-standaard dan een eigen ontwikkeling: een draft heeft meestal al implementaties en een weg naar vaststelling, terwijl maatwerk door het GIS zelf moet worden gespecificeerd en onderhouden, en in elk product apart moet worden gebouwd. Dit sluit aan bij de GISA-principes GIS03 (open, internationaal erkende standaarden) en GIS07 (hergebruik van bestaande oplossingen).

# Begrippen

| Begrip | Betekenis |
|---|---|
| Zorgaanbieder | De organisatie die zorg verleent en verwerkingsverantwoordelijke is voor de gezondheidsgegevens; geïdentificeerd met het URA. |
| URA | UZI-Register Abonneenummer: de identificatie van een zorgaanbieder in het UZI-register. Het URA staat in het UZI-servercertificaat van de zorgaanbieder. |
| Dienstverlener | De organisatie die technische voorzieningen levert en beheert voor zorgaanbieders, zoals een EPD-leverancier, SaaS-platform of knooppunt. Hij heeft een eigen certificaat, bijvoorbeeld een PKIoverheid-servercertificaat met zijn KvK-nummer of OIN, en handelt doorgaans namens veel zorgaanbieders. Een dienstverlener beheert bijvoorbeeld een client, of een authorization server en een resource server, maar dat is niet altijd zo: een zorgaanbieder kan die ook zelf beheren. |
| Vertrouwde dienstverlener | De dienstverlener die een zorgaanbieder aanwijst om namens hem machtigingen uit te geven, met de sleutel van zijn UZI-servercertificaat. De zorgaanbieder kan die rol ook zelf invullen. De vertrouwde dienstverlener is uitgever van machtigingen, en hoeft zelf geen client te beheren. Het kan een IT-leverancier zijn, maar ook een stelselpartij, zoals Twiin, Nuts of VZVZ. |
| Machtiging | Een ondertekende verklaring waarmee een zorgaanbieder een dienstverlener toestaat namens hem te handelen, voor een of meer machtigingscodes. |
| Machtigingscode | De reikwijdte van een machtiging, als `<doel>-<rol>`, bijvoorbeeld `TREAT-user` ([GF-AUTN-ADR-4](#gf-autn-adr-4-wat-mag-de-dienstverlener-namens-de-zorgaanbieder)). |
| Client | De OAuth-client die namens een zorgaanbieder een access token aanvraagt en gegevens opvraagt; in GF Authentication de *Authorization Client*. Hij authenticeert zich met mTLS, met het certificaat van de organisatie die hem beheert, meestal een dienstverlener. |
| Authorization server | De OAuth-server van de bron die access tokens uitgeeft, na controle van de client en zijn machtiging. |
| Resource server | De FHIR-API van de bron, die de gegevens levert en zijn *Protected Resource Metadata* publiceert. |
| Bron | De bronhoudende zorgaanbieder, met de authorization server en de resource server die namens hem gegevens beschikbaar stellen. |
| LRZa | Het Landelijk Register Zorgaanbieders, met onder meer de adressering van zorgaanbieders. Clients en resource servers gebruiken een lokale replica ([GF Care Service Directory](./csd.html)). |
| GIS | Het Gezondheidsinformatiestelsel: het landelijke stelsel waaronder de afspraken vallen, en waaronder stelselpartijen zoals Nuts, VZVZ (LSP) en Twiin opereren. |
| Client ID Metadata Document | Een JSON-document met de metadata van een OAuth-client, dat de client publiceert op de URL die zijn `client_id` is ([IETF-draft](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/)). |
| *Protected Resource Metadata* | De metadata van een resource server, met onder meer de authorization servers die bij het endpoint horen ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728)). |
| RAR-object | Het object in `authorization_details` ([RFC 9396](https://www.rfc-editor.org/rfc/rfc9396)) waarmee de client aangeeft namens welke zorgaanbieder (`subject_organization_id`) en met welk doel (`purpose_of_use`) hij een token aanvraagt. |

# Ontwerpbeslissingen
Hieronder staan zeven ontwerpbeslissingen (*architecture decision records*). Elke beslissing beschrijft de vraag, de opties, het besluit, de reden en de gevolgen. De opties verwijzen naar de onderzochte varianten: M0 tot en met M7 voor de machtiging ([bijlage A](#bijlage-a-varianten-voor-de-machtiging)) en R1 tot en met R5 voor de clientregistratie ([bijlage B](#bijlage-b-opties-voor-clientregistratie)). Daar staan per variant de werking, wat de implementatie vraagt en de grootste beveiligingsrisico's; die risico's zijn genummerd S1 tot en met S26 ([bijlage C](#bijlage-c-beveiligingsrisicos)). De tabel vat de besluiten samen.

| ADR | Vraag | Besluit |
|---|---|---|
| [GF-AUTN-ADR-1](#gf-autn-adr-1-waar-staat-de-machtiging) | Waar staat de machtiging? | Bij de gemachtigde dienstverlener, gepubliceerd in de OAuth-metadata: in het Client ID Metadata Document van de client en in de *Protected Resource Metadata* van de resource server |
| [GF-AUTN-ADR-2](#gf-autn-adr-2-wie-ondertekent-de-machtiging) | Wie ondertekent de machtiging? | De vertrouwde dienstverlener, met de sleutel van het UZI-servercertificaat van de zorgaanbieder; de zorgaanbieder kan die rol ook zelf invullen |
| [GF-AUTN-ADR-3](#gf-autn-adr-3-hoe-ziet-de-machtiging-eruit) | Hoe ziet de machtiging eruit? | Een SD-JWT VC, uitgegeven met OpenID4VCI |
| [GF-AUTN-ADR-4](#gf-autn-adr-4-wat-mag-de-dienstverlener-namens-de-zorgaanbieder) | Wat mag de dienstverlener namens de zorgaanbieder? | Machtigingscodes `<doel>-<rol>`, met het doel uit PurposeOfUse en de rol `user` of `custodian` |
| [GF-AUTN-ADR-5](#gf-autn-adr-5-intrekken-of-laten-verlopen) | Hoe wordt een machtiging ingetrokken? | Door haar te laten verlopen: ten hoogste 3 maanden geldig, en vernieuwd zolang de goedkeuring geldt; geen statuslijst |
| [GF-AUTN-ADR-6](#gf-autn-adr-6-hoe-worden-clients-geregistreerd) | Hoe worden clients geregistreerd? | Met een Client ID Metadata Document per zorgaanbieder, met de machtiging als `software_statement` |
| [GF-AUTN-ADR-7](#gf-autn-adr-7-welke-grant) | Welke grant? | *Client credentials*, met mTLS en een RAR-object |

Daarnaast veranderen enkele andere technische keuzes uit de notitie ([overige technische keuzes](#overige-technische-keuzes)). Het [voorstel](#voorstel-machtiging-in-client-id-metadata-document-en-protected-resource-metadata) combineert alles.

## GF-AUTN-ADR-1: Waar staat de machtiging?
**Vraag.** Staat de machtiging in een centraal register, de LRZa, of bij de dienstverlener die haar gebruikt?

**Opties.**
- *In de LRZa* ([M3](#m3-machtiging-in-de-lrza) tot en met [M5](#m5-machtiging-in-de-lrza-verzegeld-met-de-ebw)): de zorgaanbieder registreert een `OrganizationAffiliation`, en de authorization server controleert die in zijn lokale replica.
- *Bij de dienstverlener* ([M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit), [M2](#m2-erkende-uitgevers-geven-machtigingen-uit), [M6](#m6-identiteit-en-machtiging-als-twee-attestaties) en [M7](#m7-machtiging-in-de-oauth-metadata-voorstel)): de machtiging is een ondertekende attestatie die de dienstverlener bewaart en laat zien.

**Besluit.** Bij de dienstverlener. De machtiging van de opvragende zorgaanbieder staat in het Client ID Metadata Document van de client ([GF-AUTN-ADR-6](#gf-autn-adr-6-hoe-worden-clients-geregistreerd)); de resource server van de bron publiceert de machtiging van de bronhoudende zorgaanbieder in zijn *Protected Resource Metadata* ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728)).

**Waarom.**
- Er staat geen (centraal) register in de controle: de authorization server hoeft geen replica actueel te houden.
- Een compromittering van de LRZa kan geen geldige machtigingen maken, omdat de controle steunt op de handtekening.


**Gevolgen.**
- De LRZa wordt alleen gebruikt om de vertrouwde dienstverlener van een zorgaanbieder te vinden, bij wie machtigingen kunnen worden aangevraagd. De zorgaanbieder wijst hem aan met een `OrganizationAffiliation` met de code `URA-signed-mandate`, die verwijst naar het `Endpoint` waar machtigingen worden aangevraagd, met connectionType `openid4vci` en payloadType `URA-signed-mandate`.

## GF-AUTN-ADR-2: Wie ondertekent de machtiging?
**Vraag.** Wie geeft de machtiging uit, en met welke sleutel wordt zij ondertekend?

**Opties.** 
- De vertrouwde dienstverlener met de UZI-sleutel van de zorgaanbieder ([M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit)). 
- erkende uitgevers met een eigen sleutel ([M2](#m2-erkende-uitgevers-geven-machtigingen-uit)). 
- een identiteitsattestatie met de UZI-sleutel naast een machtiging van een onafhankelijke notaris ([M6](#m6-identiteit-en-machtiging-als-twee-attestaties)). 
- de zorgaanbieder zelf vanuit de EBW (later).

**Besluit.** De vertrouwde dienstverlener ([M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit)). De zorgaanbieder wijst hem aan in de LRZa en keurt elke machtiging bij de vertrouwde dienstverlener goed. Een zorgaanbieder die zijn UZI-servercertificaat zelf beheert, kan deze rol ook zelf invullen.

**Waarom.** Dit lijkt in Q1 2027 haalbaar: er is geen nieuwe partij of erkenning nodig, het vertrouwen steunt op het wettelijk verankerde UZI-register, en veel zorgaanbieders laten hun UZI-servercertificaat nu al beheren door één leverancier.

**Gevolgen.**
- De vertrouwde dienstverlener kan zichzelf en anderen machtigen. Het vertrouwen in hem is even groot als nu, nu hij de UZI-sleutel beheert. Vult de zorgaanbieder de rol zelf in, dan beheert geen dienstverlener zijn sleutel en kan geen dienstverlener zichzelf machtigen.
- [M6](#m6-identiteit-en-machtiging-als-twee-attestaties) blijft een mogelijke vervolgstap om zelfmachtiging uit te sluiten.

## GF-AUTN-ADR-3: Hoe ziet de machtiging eruit?
**Vraag.** Welk formaat heeft de machtiging, en bereidt dat voor op de EBW?

**Opties.** 
- Een eigen JWT. 
- Een FHIR-resource met een ondertekende `Provenance`.
- Een SD-JWT VC.

**Besluit.** Een SD-JWT VC ([draft-ietf-oauth-sd-jwt-vc](https://datatracker.ietf.org/doc/draft-ietf-oauth-sd-jwt-vc/)) met de zorgaanbieder (`sub`), de dienstverlener (`may_act.sub`), de machtigingscodes (`scope`), de geldigheid (`nbf`, `exp`) en een kenmerk (`jti`). Het type (`vct`) is `https://fhir.generiekefuncties.nl/vct/URA-signed-mandate.json`; het attestatieschema is vastgelegd in de Type Metadata die op die URL wordt gepubliceerd. De dienstverlener vraagt de machtiging aan met OpenID4VCI. De reikwijdte staat in [GF-AUTN-ADR-4](#gf-autn-adr-4-wat-mag-de-dienstverlener-namens-de-zorgaanbieder), de geldigheid en de intrekking in [GF-AUTN-ADR-5](#gf-autn-adr-5-intrekken-of-laten-verlopen).

**Waarom.** SD-JWT VC is het formaat van attestaties in de EUDI-wallet, met beschikbare bibliotheken en een weg naar vaststelling. Een eigen JWT-formaat zou maatwerk zijn, en een FHIR-resource met een `Provenance` sluit niet aan op de EBW (uitgangspunt *standaarden boven maatwerk*).

**Bereidt dit voor op de EBW?** Grotendeels:
- De EUDI-wallet gebruikt volgens het *Architecture and Reference Framework* SD-JWT VC of ISO mdoc, met OpenID4VCI en OpenID4VP. Omdat een EBW attestaties moet kunnen uitwisselen met EUDI-wallets, ligt het voor de hand dat de EBW dezelfde standaarden gebruikt, maar deze standaarden liggen nog niet vast. 
- Bij de overstap veranderen in elk geval de ondertekenaar (de wallet van de zorgaanbieder), het vertrouwensanker (de Europese vertrouwenslijsten, met een koppeling van KvK-nummer of EUID aan het URA) en de intrekking (een statuslijst). Het formaat en het schema kunnen gelijk blijven.

**Gevolgen.** SD-JWT VC is een IETF-draft; bibliotheken zijn beschikbaar, onder meer uit de EUDI-referentie-implementatie.

## GF-AUTN-ADR-4: Wat mag de dienstverlener namens de zorgaanbieder?
**Vraag.** Hoe legt een machtiging vast wat de dienstverlener namens de zorgaanbieder mag?

**Opties.**
- *Geen reikwijdte:* een machtiging geldt voor alle uitwisselingen. Eenvoudig, maar alle dienstverleners van een zorgaanbieder krijgen dezelfde rechten.
- *Een code per zorgtoepassing,* zoals eOverdracht of BgZ: fijnmazig, maar de zorgaanbieder moet zijn machtigingen bij elke nieuwe toepassing aanpassen.
- *Technische scopes per FHIR-resource of operatie,* zoals bij SMART on FHIR: voor een zorgaanbieder moeilijk te beoordelen, en welke resources een verzoek mag raken, bepaalt de bron per toepassing.
- *Doel en rol:* een code `<doel>-<rol>`, met het doel uit de HL7-codelijst PurposeOfUse.

**Besluit.** Doel en rol. Het doel is een code uit HL7 waardenlijst [PurposeOfUse](https://terminology.hl7.org/en/ValueSet-v3-PurposeOfUse.html): `TREAT`, `ETREAT`, `PATRQT`, `HRESCH` of `HSYSADMIN`. Deze doelen staan in de ValueSet [NL GF Purpose of Use](./ValueSet-nl-gf-purpose-of-use-vs.html). Een code geeft geen rechten voor de onderliggende codes in de hiërarchie van PurposeOfUse: een machtiging voor `TREAT` dekt dus niet ook `ETREAT`, `BTG` of `POPHLTH`, en een doel dat niet in de ValueSet staat, wordt geweigerd. De rol is `user`, gegevens opvragen en ontvangen, doorgaans met een client, of `custodian`, als bronhouder gegevens beschikbaar stellen of registreren, doorgaans met een authorization server en een resource server. Dat geeft tien codes, zoals `TREAT-user`. Een machtiging kan meerdere codes bevatten (`scope`). De authorization server leidt de vereiste code af uit `purpose_of_use` in het RAR-object; de client controleert dat de bron de bijbehorende `custodian`-code heeft.

| Doel (PurposeOfUse) | Grondslag | `<doel>-user`: de dienstverlener mag namens de zorgaanbieder… | `<doel>-custodian`: de dienstverlener mag namens de zorgaanbieder… |
|---|---|---|---|
| `TREAT` — behandeling | Verstrekking aan wie rechtstreeks betrokken is bij de uitvoering van de behandelingsovereenkomst ([WGBO](https://wetten.overheid.nl/BWBR0005290/), art. 7:457 lid 2); AVG, art. 9 lid 2 onder h, met [UAVG](https://wetten.overheid.nl/BWBR0040940/), art. 30 lid 3 onder a. | gegevens opvragen voor de behandeling van patiënten, zoals BgZ, European Patient Summary, eOverdracht, Medicatieoverdracht en geboortezorg, en daarvoor de NVI doorzoeken. | gegevens beschikbaar stellen voor de behandeling van patiënten, daarvoor toestemmingen raadplegen bij de OTV, en patiënten registreren bij de NVI (lokalisatie). |
| `ETREAT` — spoedeisende behandeling | Zoals bij `TREAT`, ook als er geen behandelingsovereenkomst is, bijvoorbeeld bij een bewusteloze patiënt (WGBO, art. 7:464). Daarnaast mag een zorgverlener volgens de [EHDS](https://eur-lex.europa.eu/eli/reg/2025/327/oj) ter bescherming van de vitale belangen van de patiënt ook gegevens inzien die de patiënt heeft afgeschermd (art. 11 lid 5), en kan de nationale wet toegang toestaan ondanks een opt-out (art. 10 lid 2). | gegevens opvragen voor de spoedeisende behandeling van patiënten, zoals in de acute zorg. | gegevens beschikbaar stellen voor de spoedeisende behandeling van patiënten. |
| `PATRQT` — op verzoek van de patiënt | Het recht van de patiënt op inzage, afschrift en overdraagbaarheid (AVG, art. 15 en 20; WGBO, art. 7:456), elektronisch en kosteloos, en op het delen met zijn PGO (Wabvpz, art. 15d en 15ea). | gegevens opvragen op verzoek van de patiënt. | gegevens beschikbaar stellen aan de patiënt of diens persoonlijke gezondheidsomgeving (PGO). |
| `HRESCH` — onderzoek | Verstrekking voor wetenschappelijk onderzoek, onder voorwaarden ook zonder toestemming (WGBO, art. 7:458; AVG, art. 9 lid 2 onder j en art. 89, met UAVG, art. 24); voor secundair gebruik daarnaast de EHDS ([Verordening (EU) 2025/327](https://eur-lex.europa.eu/eli/reg/2025/327/oj)). | gegevens opvragen voor (medisch-wetenschappelijk) onderzoek. | gegevens uitgeven voor onderzoek, en datasetbeschrijvingen bijwerken in de catalogus van de Health Data Access Body (HDAB, EHDS). |
| `HSYSADMIN` — beheer | Geen gezondheidsgegevens, grondslag niet van toepassing | gegevens van de zorgaanbieder opvragen uit de LRZa (adressering) en bijwerken van 'eigen' resources (b.v. Endpoints) in het LRZa  | gegevens van de zorgaanbieder registreren en bijwerken in de LRZa (adressering). |

**Waarom.**
- *Aansluiting op de grondslag.* PurposeOfUse is de internationale HL7-codelijst voor het doel van een uitwisseling; o.a. het IHE IUA profile noemt deze `purpose_of_use`. Elke gekozen code sluit aan op een wettelijke grondslag (zie de tabel), zodat de bron zijn autorisatiebesluit kan baseren op de grondslag die bij het doel hoort, zoals eis 3 uit de notitie vraagt.
- *Spoed apart.* `ETREAT` heeft een eigen code: de grondslag is die van `TREAT`, maar de EHDS staat bij spoed, ter bescherming van de vitale belangen van de patiënt, toegang toe tot gegevens die hij heeft afgeschermd, en mogelijk ondanks een opt-out. De bron kan voor spoed dus andere regels toepassen. Een zorgaanbieder kan een dienstverlener zo ook alleen voor spoed machtigen.
- *Doelbinding.* Een dienstverlener die gegevens uitgeeft voor onderzoek (`HRESCH-custodian`), kan geen gegevens verzamelen onder de noemer behandeling ([AVG](https://eur-lex.europa.eu/eli/reg/2016/679/oj), art. 5 lid 1 onder b).
- *Beperkte gevolgen.* Een viewer krijgt alleen `TREAT-user`, een archief alleen `TREAT-custodian`, zodat een fout of inbraak bij zo'n dienstverlener alleen die rol raakt. Een EPD-leverancier krijgt beide codes in één machtiging, zonder extra administratie.
- *Begrijpelijk en stabiel.* Eén code dekt alle zorgtoepassingen met hetzelfde doel, zodat een zorgaanbieder zijn machtigingen niet bij elke nieuwe toepassing hoeft aan te passen.
- *Eén codelijst.* Machtiging en verzoek gebruiken dezelfde codelijst, zodat het RAR-object geen apart veld voor het machtigingstype nodig heeft.

**Gevolgen.**
- Wil een zorgaanbieder een dienstverlener zowel voor behandeling als voor spoed machtigen, dan geeft hij beide codes, bijvoorbeeld `TREAT-user` en `ETREAT-user`.
- Een ander doel, zoals publieke gezondheid (`PUBHLTH`) of betaling (`HPAYMT`), kan later worden toegevoegd, met de grondslag die daarbij hoort. Krijgen vrijwel alle dienstverleners beide rollen, dan kunnen `user` en `custodian` worden samengevoegd.

## GF-AUTN-ADR-5: Intrekken of laten verlopen?
**Vraag.** Hoe trekt een zorgaanbieder een machtiging in, bijvoorbeeld als hij de samenwerking met een dienstverlener beëindigt, en hoe lang is een machtiging daarom geldig?

**Opties.**
- *Intrekken met een statuslijst* ([Token Status List](https://datatracker.ietf.org/doc/draft-ietf-oauth-status-list/)): de uitgever publiceert de status van elke machtiging, en controleurs raadplegen die, met een cache. Een machtiging kan dan lang geldig zijn, en een intrekking werkt door binnen de cacheduur.
- *Intrekken met een eigen weigerlijst:* de uitgever of het GIS publiceert ingetrokken machtigingen. Dat werkt als een statuslijst, maar zonder standaard.
- *Laten verlopen:* een machtiging heeft een beperkte looptijd en wordt automatisch vernieuwd zolang de goedkeuring geldt. Intrekken betekent: niet meer vernieuwen.

**Besluit.** Laten verlopen, met een looptijd van ten hoogste 3 maanden. De vertrouwde dienstverlener geeft tijdig een nieuwe machtiging uit, bijvoorbeeld een maand voor het verlopen, zonder nieuwe goedkeuring. `exp` ligt niet na het einde van de geldigheid van het UZI-certificaat waarmee de machtiging is ondertekend.

**Waarom.**
- *Geen nieuwe afhankelijkheid.* Controleurs raadplegen alleen de intrekkingsstatus van certificaten, die ze nu al controleren. Met een statuslijst komt de voorziening van de vertrouwde dienstverlener in het controlepad: is die onbereikbaar en de cache verlopen, dan moeten authorization servers kiezen tussen weigeren en accepteren zonder controle.
- *Geen extra draft voor Q1 2027.* Laten verlopen gebruikt alleen `nbf` en `exp` uit SD-JWT VC. De Token Status List is nog een draft, en zou bij elke uitgever en elke controleur moeten worden gebouwd.
- *3 maanden als afweging.*
  - Bij ongeveer 2 jaar blijft de machtiging van een vorige dienstverlener na een wisseling tot 2 jaar geldig, en kan zij het UZI-certificaat overleven.
  - Bij een looptijd van minuten wordt de uitgifte onderdeel van elke uitwisseling, met dezelfde eisen aan beschikbaarheid en capaciteit, en wordt zij een doelwit voor aanvallen.
  - Bij 3 maanden blijft een ongewenste machtiging hooguit enkele maanden geldig, en staat de vernieuwing los van de uitwisseling.

**Gevolgen.**
- Een ingetrokken goedkeuring werkt pas door aan het einde van de looptijd, dus na hooguit 3 maanden. Zorgaanbieders die van dienstverlener wisselen, moeten daar rekening mee houden (risico S1, zie [bijlage C](#bijlage-c-beveiligingsrisicos)).
- Direct afsluiten kan alleen door een certificaat in te trekken: dat van de dienstverlener sluit hem voor alle zorgaanbieders af, het UZI-certificaat van de zorgaanbieder maakt al zijn machtigingen ongeldig.
- Vernieuwen moet automatisch gaan: de vertrouwde dienstverlener geeft de nieuwe machtiging uit, en de beheerder van de client zet haar in het Client ID Metadata Document, ten minste 24 uur (de maximale cacheduur) voordat de oude verloopt. Voor de *Protected Resource Metadata* van de resource server geldt hetzelfde.
- De authorization server controleert de geldigheid van de machtiging en de intrekkingsstatus van het UZI-certificaat bij elk tokenrequest, zodat de cache van het document de intrekking niet vertraagt.
- Bij de overstap naar de EBW, kan een statuslijst worden toegevoegd; het ARF van de EUDI-wallet vraagt die voor attestaties die langer dan 24 uur geldig zijn. De looptijd kan dan langer worden.

## GF-AUTN-ADR-6: Hoe worden clients geregistreerd?
**Vraag.** Hoe weet een authorization server welke client een verzoek doet, zonder handmatige registratie in een netwerk met veel partijen?

**Opties.**

| Optie | Werking | Bezwaar |
|---|---|---|
| [R1](#r1-registratie-volgens-udap): dynamische registratie volgens UDAP | De client registreert zich met een ondertekend *software statement* | Per authorization server een `client_id` bewaren; UDAP is in de onderzochte producten (Keycloak, Duende) niet ingebouwd |
| [R2a](#r2a-client-id-uit-het-certificaat): uit het certificaat | De authorization server leidt de `client_id` af uit het certificaat | Geen standaard: maatwerk in elke authorization server |
| [R2b](#r2b-clients-vooraf-registreren): geen dynamische registratie, maar vooraf | De beheerder maakt clients aan uit een lijst van deelnemers, bijvoorbeeld afgeleid uit de LRZa | Een extra functie voor de LRZa, blijvend werk om de clients bij te houden, en een nieuwe deelnemer moet wachten totdat alle authorization server beheerders haar clients bijgewerkt hebben |
| [R3](#r3-registratie-met-een-eigen-client-id): registratie met een eigen client-id | Bij een onbekende authorization server registreert de client zich volgens DCR (RFC 7591), met een `client_id` die hij zelf afleidt uit zijn certificaat | Geen standaard, en geen koppeling tussen de gevraagde `client_id` en het certificaat (zie hieronder) |
| [R3](#r3-registratie-met-een-eigen-client-id) met idempotente registratie | De authorization server kent de `client_id` toe, maar geeft bij een nieuwe registratie met hetzelfde certificaat de bestaande client terug | Niet ondersteund in de onderzochte producten; DCR (RFC 7591) staat het toe, maar beschrijft niet hoe (zie hieronder) |
| [R4](#r4-registratie-met-een-toegekende-client-id): registratie met een toegekende client-id | Bij een onbekende authorization server registreert de client zich volgens DCR (RFC 7591); de server kent de `client_id` toe | Per authorization server een `client_id`, en eventueel een *registration access token*, bewaren; open registratie|
| [R5](#r5-client-id-metadata-document-voorstel): Client ID Metadata Document | De `client_id` is een URL waar de client zijn metadata publiceert | Een IETF-draft; de authorization server haalt het document op |

**Nadelen van een eigen client-id (R3).**
- *Geen standaard.* In RFC 7591 kiest de authorization server de `client_id`; het registratieverzoek heeft er geen veld voor. Het OIDC-registratie-endpoint van Keycloak weigert een verzoek met een `client_id`, en alleen het eigen registratieformaat van Keycloak accepteert er een. In Duende IdentityServer moet de generatie van client-id's worden aangepast. Een client moet dus per product een ander verzoek doen, of het GIS schrijft een uitbreiding voor die elk product moet bouwen.
- *Geen koppeling met het certificaat.* Geen van de producten controleert bij de registratie of de gevraagde `client_id` past bij het certificaat van de verbinding. Zonder die controle kan een andere deelnemer de `client_id` van een andere client vooraf registreren met zijn eigen certificaat, en die client zo buitensluiten. De controle is dezelfde profielregel als bij R2, en vraagt dus dezelfde uitbreiding.
- *Meer werk dan R2.* De authorization server heeft twee uitbreidingen nodig, een eigen client-id en de controle op het certificaat, in plaats van één. Elke client bouwt daarnaast de registratie en de foutafhandeling.

**Nadelen van idempotente registratie.** Hierbij kent de authorization server de `client_id` toe, maar levert een nieuwe registratie met hetzelfde certificaat dezelfde client op, zodat de client niets hoeft te bewaren. RFC 7591 (paragraaf 3.2.1) staat toe dat een server dezelfde `client_id` aan meerdere instanties van een client uitgeeft, maar beschrijft niet wanneer twee registraties dezelfde client zijn.
- *Niet ondersteund.* Keycloak en Duende IdentityServer maken bij elke registratie een nieuwe client met een nieuwe `client_id`. Een bestaande client herkennen vraagt in elk product maatwerk in het registratie-endpoint, inclusief het voorkomen van dubbele clients bij gelijktijdige registraties.
- *Dezelfde profielregel als R2.* De server moet bepalen wanneer twee registraties 'hetzelfde certificaat' hebben. Vergelijkt hij de *subject DN*, dan levert elke certificaatvernieuwing met een andere DN een nieuwe client op, en blijft de oude achter. Vergelijkt hij het KvK-nummer, de OIN of het URA, dan is het de afleidingsregel van R2, met een registratiestap ervoor.
- *Toch 'state' of een extra verzoek.* RFC 8705 vraagt de `client_id` in het tokenrequest. De client bewaart die dus alsnog, of registreert zich opnieuw vóór elk tokenrequest of na elke herstart.
- *Ongedefinieerd registration access token.* Of de server bij een nieuwe registratie van dezelfde client een nieuw *registration access token* uitgeeft, en wat er dan met het oude gebeurt, is niet vastgelegd.

Beide varianten verplaatsen de afleiding uit het certificaat (R2) naar het registratie-endpoint en voegen een registratiestap toe. Ze vragen daarmee meer werk dan R2, zonder dat het daardoor een standaard wordt.

**Besluit.** R5: een [Client ID Metadata Document](#r5-client-id-metadata-document-voorstel) per zorgaanbieder, met de machtiging als `software_statement` ([M7](#m7-machtiging-in-de-oauth-metadata-voorstel)). Daarmee vallen registratie en publicatie van de machtiging samen: de authorization server registreert de client en zijn machtiging op basis van hetzelfde document, zoals de client de machtiging van de bron controleert op basis van de *Protected Resource Metadata*.

**Waarom.**
- Er is geen registratie-transactie/endpoint/state, en client en authorization server hoeven niets over elkaar op te slaan.
- Het is een standaard, zij het een draft, in plaats van een eigen profielregel per product (uitgangspunt *standaarden boven maatwerk*).
- Wie de client beheert, beheert ook zijn metadata: na certificaatvernieuwing of een nieuwe machtiging past hij alleen het document aan.

**Gevolgen.**
- De host van de `client_id` staat als DNS-naam in het clientcertificaat, en het document noemt die host in `tls_client_auth_san_dns` ([RFC 8705](https://www.rfc-editor.org/rfc/rfc8705), §2.1.2) in plaats van de *subject DN*. Zo speelt de schrijfwijze van de *subject DN* geen rol (S26), en verandert het document niet bij een certificaatvernieuwing. De authorization server cachet het document hoogstens 24 uur en leest hoogstens 32 kB.
- De authorization server maakt uitgaande verbindingen naar de documenten van clients, over mTLS en met maatregelen tegen *server-side request forgery*.
- De specificatie is een draft (versie 03, november 2026), en de ondersteuning in producten is nog jong (zie het [voorstel](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- Een authorization server krijgt een client per combinatie van dienstverlener en zorgaanbieder.

## GF-AUTN-ADR-7: Welke grant?
**Vraag.** Met welke grant vraagt de client een access token aan: een standaardgrant, of een grant waarin hij de machtiging en andere attestaties bij elk verzoek presenteert?

**Opties.**
- *Client credentials* ([RFC 6749](https://www.rfc-editor.org/rfc/rfc6749), paragraaf 4.4): de machtiging staat in het Client ID Metadata Document, en het verzoek bevat alleen mTLS en het RAR-object.
- *Token exchange* ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693)) met een `vp_token` ([M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit)): de machtiging en eventuele andere attestaties reizen mee in het `subject_token`, elk met een *key binding*-JWT.

**Besluit.** *Client credentials*.

**Waarom.**
- *Geen interactieve gebruiker.* De zorgverlener is in het eigen domein geauthenticeerd, en de uitwisseling verloopt van systeem tot systeem. De notitie noemde FAPI 2.0 als reden voor *client credentials*, maar FAPI 2.0 sluit andere grants niet uit.
- *Standaard.* Gangbare authorization servers ondersteunen *client credentials* met mTLS, beide vastgestelde standaarden, en voor de client volstaat elke OAuth-clientbibliotheek. Een token exchange met een eigen `subject_token_type` is een eigen profiel, en vraagt in elke authorization server een grant-uitbreiding, en in elke client een eigen sleutel, *key binding*-JWT's en een administratie van gebruikte `nonce`-waarden.
- *Haalbaar in Q1 2027.* Het maatwerk blijft beperkt tot het laden en controleren van de client ([voorstel](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- *Geen voorschot op de EBW.* Een presentatie uit een wallet gaat vermoedelijk via OpenID4VP, met eisen uit HAIP, maar de kans is klein dat een eigen token-exchangeprofiel bij de introductie van de EBW volledig compliant is (en dus alsnog een change veroorzaakt). N.B. Bij het opvragen van de machtiging, en de machtiging zelf (zie [ADR 3](#gf-autn-adr-3-hoe-ziet-de-machtiging-eruit)) is er wel een voorschot genomen op EBW ontwikkelingen. 
- *Uitbreidbaar via de metadata.* Andere vaste attestaties over de dienstverlener kunnen in de clientmetadata worden gepubliceerd, zonder dat het tokenrequest verandert ([uitbreidbaarheid](#uitbreidbaarheid-met-andere-attestaties)).

**Gevolgen.**
- Het verzoek en het RAR-object zijn niet ondertekend; mTLS beschermt ze alleen onderweg. De sleutel van het clientcertificaat is de enige sleutel die de machtigingen beschermt.
- Attestaties die per verzoek verschillen, zijn in deze opzet niet voorzien; eOverdracht en BgZ hebben ze niet nodig. Zo nodig kan de custom *token exchange* later de *client-credentials*-flow vervangen.

## Overige technische keuzes
De notitie koos in hoofdstuk 6 voor OAuth 2.0 met de beveiligingsmaatregelen uit FAPI 2.0, voor Rich Authorization Requests en voor mTLS op de transportlaag, voorlopig met UZI-servercertificaten of PKIoverheid-certificaten. Die keuzes blijven. Omdat de dienstverlener met een eigen identiteit handelt, veranderen de volgende keuzes:

| Onderwerp | Keuze | Reden |
|---|---|---|
| Clientauthenticatie | mTLS met het eigen certificaat van de organisatie die de client beheert (`tls_client_auth`, [RFC 8705](https://www.rfc-editor.org/rfc/rfc8705)), in plaats van `private_key_jwt`. Het access token is aan dat certificaat gebonden, in plaats van met DPoP. | De notitie koos `private_key_jwt` omdat het transportcertificaat de zorgaanbieder niet altijd identificeert. Nu de client het certificaat van zijn eigen beheerder gebruikt, meestal een dienstverlener, identificeert het certificaat juist de partij die verantwoordelijk is voor de verbinding, en de machtiging de zorgaanbieder. Eén mechanisme voor transport, clientauthenticatie en tokenbinding; FAPI 2.0 staat het toe. |
| Access token | De authorization server van de bron geeft het uit, met zijn eigen sleutel. Het is ondoorzichtig (*opaque*) voor de client, en legt de zorgaanbieder, de client, de dienstverlener die hem beheert en het RAR-object vast. | In de notitie ondertekent de bronhoudende zorgaanbieder het access token met zijn UZI-sleutel. Dat wijkt af van gangbare standaarden (IHE IUA: "The token is opaque to the Authorization Client"), en een authorization server voor veel zorgaanbieders zou dan per zorgaanbieder een UZI-sleutel moeten beheren. |
| RAR-object | Type `nl-gis-v1`, aangevuld met `subject_organization_id`: het URA van de zorgaanbieder namens wie de client het token aanvraagt. | De authorization server toetst de zorgaanbieder en `purpose_of_use` aan de machtiging. |
| Vaststellen van de bron | De client controleert vóór het verzoek de machtiging van de bron in de *Protected Resource Metadata* van de resource server, en of het servercertificaat van de resource server bij de gemachtigde dienstverlener hoort. | Zo blijft eis 1 uit de notitie vervuld: het wederzijds vaststellen van de identiteit van de zorgaanbieder. |
| Intrekking en TLS-terminatie | De authorization server en de resource server controleren de intrekkingsstatus van het clientcertificaat, en weigeren als die onbekend is. Alleen de bron, dat wil zeggen de zorgaanbieder of zijn dienstverlener met een *custodian*-machtiging, of een voorziening in hun eigen domein, zoals een load balancer, beëindigt de TLS-verbinding en geeft het certificaat door volgens [RFC 9440](https://www.rfc-editor.org/rfc/rfc9440). Een andere tussenpartij doet dat niet. Een tussenpartij aan de kant van de aanvrager is zelf de client, met een eigen certificaat en een eigen machtiging. | RFC 8705 laat de intrekkingscontrole aan de server over. Een doorgegeven certificaat bewijst niet dat de afzender de bijbehorende sleutel heeft: wie het doorgeeft, kan zich voordoen als elke dienstverlener. Dat is alleen aanvaardbaar bij een partij waarvoor de bron verantwoordelijk is. |

# Voorstel: machtiging in Client ID Metadata Document en Protected Resource Metadata
Het voorstel combineert de zeven beslissingen. De machtigingen staan in de OAuth-metadata: die van de opvragende zorgaanbieder in het Client ID Metadata Document van de client, die van de bronhoudende zorgaanbieder in de *Protected Resource Metadata* van de resource server. Daarmee ligt ook de clientregistratie vast, en blijft het tokenrequest een gewone aanvraag met *client credentials*. De specificatie staat in [GF Authentication (V&O)](./authentication.html); de grootste risico's staan bij [M7](#m7-machtiging-in-de-oauth-metadata-voorstel) en [R5](#r5-client-id-metadata-document-voorstel) in de bijlagen.

## Werking
1. **Uitgifte.** De dienstverlener die de client beheert, vraagt een machtiging aan (OpenID4VCI) bij de vertrouwde dienstverlener van zijn zorgaanbieder, of bij de zorgaanbieder zelf als die deze rol invult. De zorgaanbieder keurt goed, en de machtiging wordt ondertekend met zijn UZI-sleutel.
2. **Publicatie voor de client.** Per zorgaanbieder is er een Client ID Metadata Document van de client, bijvoorbeeld op `https://dienstverlener-a.nl/oauth/clients/ura-11111111`, met de machtiging als `software_statement`.
3. **Publicatie door de bron.** De resource server publiceert de machtiging van de bronhoudende zorgaanbieder in zijn *Protected Resource Metadata*.
4. **Controle van de bron.** De client vindt het endpoint van de bron in zijn LRZa-replica, haalt de *Protected Resource Metadata* op en controleert de machtiging van de bron (`TREAT-custodian`, met `may_act.sub` tegen het servercertificaat).
5. **Tokenrequest.**

   ```
   POST /token HTTP/1.1                      (mTLS met het certificaat van dienstverlener A)
   Host: as.dienstverlener-b.nl
   Content-Type: application/x-www-form-urlencoded

   grant_type=client_credentials
   &client_id=https%3A%2F%2Fdienstverlener-a.nl%2Foauth%2Fclients%2Fura-11111111   (zie stap 2)
   &authorization_details=%5B%7B%22type%22%3A%22nl-gis-v1%22...%7D%5D
   ```

6. **Controle door de authorization server.** Hij controleert eerst het certificaat, en of de host van de `client_id` als DNS-naam in dat certificaat staat. Bij een onbekende of verlopen client haalt hij daarna het document op, over mTLS, en controleert hij de handtekening van de machtiging, de UZI-keten en het URA tegen `sub`. Bij elk tokenrequest controleert hij mTLS met de host in `tls_client_auth_san_dns`, de geldigheid van de machtiging, de intrekkingsstatus van het UZI-certificaat, `may_act.sub` tegen de identificatie uit het certificaat, en of `purpose_of_use` in het RAR-object past bij de machtigingscodes en `subject_organization_id` bij `sub`.
7. **Access token.** Gebonden aan het certificaat (`cnf.x5t#S256`), met de zorgaanbieder, de client, de dienstverlener en het RAR-object. De resource server controleert bij elk verzoek het token, de binding aan het certificaat en de intrekkingsstatus van het certificaat, en neemt zijn autorisatiebeslissing op basis van `purpose_of_use` en `subject_organization_id`.

## Blijft het een eenvoudige client-credentials-flow?
**Op de lijn: ja.** Het tokenrequest gebruikt alleen standaarden:
- *client credentials* (RFC 6749, paragraaf 4.4) met `tls_client_auth` en certificaatgebonden tokens (RFC 8705);
- `authorization_details` in het tokenrequest. RFC 9396 (paragraaf 6) bepaalt dat de authorization server bij *client credentials* de gevraagde `authorization_details` toetst aan het beleid voor de client; hier is dat de machtiging;
- een `client_id` uit een Client ID Metadata Document. De draft beschrijft vooral de autorisatiecodeflow, maar sluit *client credentials* niet uit: hij beperkt de grants tot wat document en server allebei ondersteunen, en beschrijft de foutafhandeling bij het token-endpoint.

Voor de client volstaat dus elke OAuth-clientbibliotheek die mTLS ondersteunt.

**In de authorization server: niet zonder maatwerk.**
- Geen van de onderzochte producten haalt bij *client credentials* een Client ID Metadata Document op. Keycloak ondersteunt het experimenteel en alleen bij een autorisatieverzoek; Duende IdentityServer ondersteunt het niet.
- Geen van de producten controleert een machtiging in een `software_statement`, of toetst `authorization_details` aan een machtiging.

Het maatwerk zit bij het laden en controleren van de client, en bij de verwerking van het RAR-object. Een eigen grant is niet nodig.

## Wat er moet gebeuren in Keycloak en Duende IdentityServer
Voor een paar Authorization Server producten, waarvan bekend is dat ze binnen de zorgsector gebruikt worden, is een inschatting gemaakt van de benodigde werkzaamheden voor bovenstaand voorstel. De selectie van Keycloak en Duende is arbitrair. Microsoft Entra ID en de Nuts node zijn ook onderzocht. Microsoft Entra ID lijkt diverse protocollen NIET te ondersteunen en is hiervoor niet aan te passen; er zijn beschrijvingen gevonden waarin proxies en/of andere AS-producten (waaronder Duende) gebruikt worden die een 'brugfunctie' naar Entra ID invullen. Entra ID is daarom niet opgenomen in onderstaande tabel. De Nuts node lijkt (ook) diverse protocollen NIET te ondersteunen. Echter, hier wordt de aanname gedaan dat de ontwikkelaars van de Nuts node in staat zijn om deze functionaliteit in te bouwen; iets dergelijks heeft men al gedaan in Proof-of-Concepts voor de Generieke Functies (zie [Nuts Knooppunt](https://github.com/nuts-foundation/nuts-knooppunt)). Ook de Nuts Node komt daarom niet terug in onderstaande tabel.  

| Onderdeel | Keycloak | Duende IdentityServer |
|---|---|---|
| **Document ophalen en client aanmaken** | Een eigen clientauthenticator in de clientauthenticatieflow van de realm (Java, intern uitbreidingspunt). Bij een `client_id` die een HTTPS-URL is, haalt hij het document op en maakt of werkt hij de client bij: *client credentials*, X.509-clientauthenticatie, certificaatgebonden tokens. De eigen clientauthenticator controleert de DNS-naam uit `tls_client_auth_san_dns` in het certificaat; de ingebouwde X.509-authenticator vergelijkt alleen de *subject DN*. De ingebouwde CIMD-ondersteuning (feature `cimd`) werkt alleen bij een autorisatieverzoek, maar de logica voor het ophalen en controleren is mogelijk herbruikbaar. | Een eigen client store (`IClientStore`, gedocumenteerd uitbreidingspunt). Bij een `client_id` die een HTTPS-URL is, haalt hij het document op en bouwt hij de client: *client credentials* en een *secret* met de DNS-naam uit `tls_client_auth_san_dns`, gecontroleerd door een eigen *secret validator* (`ISecretValidator`), omdat de ingebouwde typen de *subject DN* of de thumbprint vergelijken. Duende kan geladen clients cachen; de cacheduur volgt de afspraken. |
| **mTLS en gebonden token** | Ingebouwd. | Ingebouwd (`AddMutualTlsSecretValidators`); het token wordt automatisch aan het certificaat gebonden. |
| **Machtiging controleren** | In de eigen clientauthenticator: de handtekening, de UZI-keten met de intrekkingsstatus, de geldigheid, `may_act.sub` en de host tegen het certificaat. Het URA en de machtigingscodes worden vastgelegd als attributen van de client. | In de eigen client store: de handtekening, de UZI-keten met de intrekkingsstatus en de geldigheid; het URA en de machtigingscodes worden vastgelegd als claims van de client. De controle van `may_act.sub` en de host tegen het certificaat van de verbinding gebeurt per verzoek in een `ICustomTokenRequestValidator` (gedocumenteerd uitbreidingspunt). |
| **RAR-object toetsen** | Keycloak bewaart `authorization_details` bij *client credentials* als notitie voor eigen *protocol mappers*. Een eigen *client policy executor* (intern uitbreidingspunt) weigert het verzoek als `purpose_of_use` niet bij de machtigingscodes past of `subject_organization_id` niet bij het URA. | In dezelfde `ICustomTokenRequestValidator`: `authorization_details` lezen, toetsen aan de machtigingscodes en het URA, en zo nodig weigeren. |
| **Claims in het access token** | Eigen *protocol mapper*: de zorgaanbieder, de dienstverlener die de client beheert, en `authorization_details`. | In de `ICustomTokenRequestValidator`: claims toevoegen aan het token. |
| **Configuratie** | De feature `cimd` is niet nodig als de eigen clientauthenticator het document zelf ophaalt. Vertrouwde CA's (PKIoverheid en UZI), intrekkingscontrole, beperking van uitgaande verbindingen. | Vertrouwde CA's, intrekkingscontrole, beperking van uitgaande verbindingen. |

De controle van de machtiging is in beide producten dezelfde logica. Een gedeelde, open-source verificatiecomponent beperkt het werk per product tot een dunne koppeling.

Aan de kant van de client is weinig bijzonders nodig: de beheerder haalt machtigingen op met OpenID4VCI en publiceert een document per zorgaanbieder, en de client controleert de machtiging van de bron in de *Protected Resource Metadata* en is verder een standaard OAuth-client met mTLS.

## Uitbreidbaarheid met andere attestaties
Andere attestaties over de dienstverlener kunnen op dezelfde manier als de machtiging in de metadata worden gepubliceerd, zonder dat het tokenrequest verandert. Voorbeelden zijn een verklaring van deelname aan een afsprakenstelsel, waarmee een bron vóór elke uitwisseling kan controleren of de dienstverlener is aangesloten, of de identiteitsattestatie uit [M6](#m6-identiteit-en-machtiging-als-twee-attestaties).
- Het Client ID Metadata Document krijgt daarvoor een eigen metadata-eigenschap, met dezelfde indeling als in de *Protected Resource Metadata*: per attestatietype een lijst van attestaties, zonder *key binding*-JWT. RFC 7591 staat zulke uitbreidingen toe.
- Een attestatie noemt de dienstverlener met de identificatie uit zijn certificaat. De authorization server controleert de uitgever, en vergelijkt die identificatie met het certificaat, zoals bij `may_act.sub` in de machtiging. Attestatietypen die hij niet gebruikt, negeert hij.
- Alleen vaste attestaties zonder persoonsgegevens passen in de metadata: het document is voor alle deelnemers leesbaar, wordt gecachet en geldt per client. De maximale grootte van het document (32 kB) laat ruimte voor extra attestaties.

Attestaties die per verzoek verschillen, zoals een bewijs van de behandelrelatie, horen niet in de metadata. eOverdracht en BgZ hebben ze niet nodig; zo nodig kan de custom token exchange uit [M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit) later de *client-credentials*-flow vervangen, met alleen die attestaties in het `subject_token`.


# Bijlage A: Varianten voor de machtiging
Alle varianten leggen dezelfde gegevens vast: de zorgaanbieder (URA), de gemachtigde dienstverlener, de machtigingscodes, de geldigheid en een uniek kenmerk. Ze verschillen in waar de machtiging staat, wie haar ondertekent, en hoe zij wordt gecontroleerd. Per variant staat wat de implementatie vraagt, en welke beveiligingsrisico's het grootst lijken ([bijlage C](#bijlage-c-beveiligingsrisicos)).

Voor alle varianten gelden daarnaast deze risico's: het access token is niet expliciet aan de bronhoudende zorgaanbieder gebonden (S2); deelname aan het afsprakenstelsel wordt niet vóór elke uitwisseling gecontroleerd (S3); en de uitwisseling zelf wordt niet ondertekend zoals NEN 7512, 6.2.7, beschrijft (S4).

## M0: Dienstverlener gebruikt de UZI-sleutel van de zorgaanbieder
De zorgaanbieder laat de sleutel van zijn UZI-servercertificaat beheren door de dienstverlener, die daarmee optreedt *als* de zorgaanbieder. Dit is de opzet uit de notitie; de meeste reacties maken er bezwaar tegen.
- *Implementatie:* geen nieuwe techniek. Meerdere dienstverleners vraagt meerdere certificaten of een gedeelde sleutel.
- *Grootste risico's:* de grootste blootstelling van alle varianten. De dienstverlener handelt met alle rechten van de zorgaanbieder en is niet van hem te onderscheiden (S5). Een compromittering raakt al zijn zorgaanbieders, en alleen intrekking van het UZI-certificaat stopt misbruik (S6, S7).

## M1: Vertrouwde dienstverlener geeft machtigingen uit
De zorgaanbieder wijst in de LRZa één vertrouwde dienstverlener aan, of vult die rol zelf in. Die beheert het UZI-servercertificaat van de zorgaanbieder, en geeft daarmee machtigingen uit aan zichzelf en aan de andere dienstverleners van de zorgaanbieder, na goedkeuring door de zorgaanbieder. De machtiging is een SD-JWT VC, gebonden aan een sleutel van de client (`cnf`). De client presenteert haar bij elk tokenrequest in een token exchange ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693)), met een *key binding*-JWT die ook het RAR-object ondertekent.
- *Implementatie:* de vertrouwde dienstverlener bouwt de uitgifte: OpenID4VCI, goedkeuring, ondertekening met de sleutel in een HSM, en vernieuwing. Elke client moet de machtiging kunnen ophalen, vernieuwen en presenteren. Elke authorization server heeft een uitbreiding voor de token exchange nodig: in Keycloak op een intern uitbreidingspunt, in Duende IdentityServer met een gedocumenteerde *extension grant*, en in de Nuts-node in de node zelf.
- *Grootste risico's:* de vertrouwde dienstverlener kan zichzelf en anderen machtigen, en beheert ook de goedkeuring (S6, S7, S8), tenzij de zorgaanbieder de rol zelf invult. Een machtiging kan niet worden ingetrokken voordat zij verloopt (S1). Opnieuw binden aan een nieuwe sleutel kan de tweede sleutel omzeilen (S9). Onduidelijk is of de sleutelhouder een vertrouwensdienstverlener onder eIDAS wordt (S10). Een compromittering van de LRZa kan geen geldige machtigingen maken.

## M2: Erkende uitgevers geven machtigingen uit
Zoals M1, maar enkele door het GIS erkende uitgevers, zoals stelselpartijen, ondertekenen de machtiging met hun eigen certificaat. Een medewerker van de zorgaanbieder keurt goed bij de uitgever, met eHerkenning; een UZI-servercertificaat is niet nodig, en geen dienstverlener beheert de sleutel van de zorgaanbieder.
- *Implementatie:* bij clients en authorization servers zoals M1. Daarnaast bouwt elke uitgever een nieuwe voorziening (OpenID4VCI, eHerkenning, vernieuwing, logging), en erkent het GIS de uitgevers, met gelijke eisen, toezicht en een vertrouwenslijst. Elke uitgever wordt vertrouwensdienstverlener onder eIDAS en valt onder NIS2. Het GIS kan daarnaast kwalificatie als gekwalificeerde vertrouwensdienstverlener (QTSP) eisen, met een audit en een besluit van de [RDI](https://www.rdi.nl/onderwerpen/digitale-weerbaarheid/elektronische-vertrouwensdiensten) binnen drie maanden. Niet haalbaar in Q1 2027.
- *Grootste risico's:* elke uitgever kan voor elke zorgaanbieder geldige machtigingen maken, zodat de zwakste uitgever het geheel bepaalt (S11). Het bewijs van de goedkeuring ligt alleen bij de uitgever. Verder geen tussentijdse intrekking (S1), de verplichtingen van vertrouwensdienstverleners (S10), en zelfmachtiging via ketenmachtiging in eHerkenning (S12).

## M3: Machtiging in de LRZa
De zorgaanbieder registreert de machtiging in het LRZa-portaal, met eHerkenning, als `OrganizationAffiliation` met de dienstverlener en een machtigingscode. Bij het tokenrequest reist geen machtiging mee: de authorization server controleert haar in zijn LRZa-replica, en de grant is *client credentials*.
- *Implementatie:* uitbreiding van het LRZa-portaal. Elke authorization server raadpleegt bij elk tokenrequest een actuele LRZa-replica; dat is maatwerk. De zorgaanbieder heeft alleen eHerkenning nodig.
- *Grootste risico's:* de machtigingen zijn niet ondertekend: wie de LRZa, het portaal of een replica compromitteert, kan machtigingen toevoegen die niet van echte te onderscheiden zijn (S13). Dienstverleners kunnen identificaties in de LRZa wijzigen (S14). Wijzigingen en intrekkingen werken pas door na de synchronisatie.

## M4: Machtiging in de LRZa, ondertekend met de UZI-sleutel
Zoals M3, maar de vertrouwde dienstverlener registreert de machtigingen via de LRZa-API, elk met een `Provenance` die is ondertekend met de UZI-sleutel van de zorgaanbieder.
- *Implementatie:* zoals M3, plus de ondertekening bij de vertrouwde dienstverlener en de controle van de `Provenance` bij elke controleur; beide zijn maatwerk.
- *Grootste risico's:* de sleutelhouder kan zichzelf machtigen, zoals bij M0 (S6, S7). Een oude handtekening kan een ingetrokken machtiging laten herleven (S15), de handtekening bindt het URA en de dienstverlener niet (S16), en controleurs kunnen terugvallen op niet-ondertekende machtigingen (S17). Alle drie zijn als hoog beoordeeld.

## M5: Machtiging in de LRZa, verzegeld met de EBW
Zoals M3, maar de zorgaanbieder verzegelt de machtiging in het LRZa-portaal met zijn European Business Wallet. Het gekwalificeerde zegel levert bewijs in een geschil.
- *Implementatie:* het LRZa-portaal ondersteunt de wallet; controleurs controleren het zegel tegen de Europese vertrouwenslijsten, en koppelen het KvK-nummer of de EUID aan het URA. De EBW is nog niet operationeel.
- *Grootste risico's:* de koppeling van KvK-nummer of EUID aan het URA loopt via wijzigbare LRZa-gegevens (S18), en wat wordt verzegeld, kan afwijken van wat werd getoond (S19). Verder S15 tot en met S17, zoals bij M4, en zelfmachtiging door een dienstverlener die de wallet bedient (S12).

## M6: Identiteit en machtiging als twee attestaties
Voorgesteld door de Nuts Kring Techniek. De vertrouwde dienstverlener geeft een identiteitsattestatie uit die een sleutel van de client aan het URA koppelt, zoals de machtiging bij M1. Een onafhankelijke *notaris* geeft de machtiging uit, na goedkeuring door de zorgaanbieder, zoals een uitgever bij M2. De client presenteert beide bij elk tokenrequest.
- *Implementatie:* het werk van M1 plus dat van de uitgevers bij M2: notarissen bouwen, erkennen en op een vertrouwenslijst zetten. Controleurs controleren twee attestaties met twee soorten vertrouwensankers. De presentatie, de certificaatvernieuwing en de wettelijke status van notarissen zijn nog niet uitgewerkt.
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview. De scheiding sluit zelfmachtiging door de vertrouwde dienstverlener uit, mits controleurs voor die zorgaanbieder geen M0 en M1 meer accepteren. Voor notarissen gelden vermoedelijk de risico's van uitgevers bij M2 (S11, S10).

## M7: Machtiging in de OAuth-metadata (voorstel)
De machtiging wordt uitgegeven zoals bij M1, maar zonder sleutel van de client. Zij staat als `software_statement` in een Client ID Metadata Document van de client, één per zorgaanbieder ([R5](#r5-client-id-metadata-document-voorstel)); de resource server van de bron publiceert de machtiging van zijn zorgaanbieder in zijn *Protected Resource Metadata*. Het tokenrequest is een gewone aanvraag met *client credentials*. Zie het [voorstel](#voorstel-machtiging-in-client-id-metadata-document-en-protected-resource-metadata).
- *Implementatie:* de uitgifte zoals bij M1, zonder sleutelbinding. De beheerder van de client publiceert de documenten; de client is een standaard OAuth-client met mTLS. Elke authorization server heeft maatwerk nodig voor het laden van de client uit het document en de controle van de machtiging; een eigen grant is niet nodig ([Keycloak en Duende](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- *Grootste risico's:* de machtiging is voor alle deelnemers leesbaar. Mist een authorization server de controle van `may_act.sub` tegen het certificaat, dan kan elke deelnemer haar gebruiken (S20). De TLS-sleutel is de enige sleutel die de machtigingen beschermt (S21). Daarnaast de risico's van het Client ID Metadata Document (zie R5), en die van M1 rond de sleutelhouder en de intrekking (S6, S7, S8, S1).

## Vergelijking van de varianten

| Variant | Zorgaanbieder heeft nodig | Vindplaats van de machtiging | Externe afhankelijkheid (cachebaar) | Intrekking |
|---|---|---|---|---|
| **M0** UZI-sleutel bij de dienstverlener | UZI-servercertificaat, sleutel bij de dienstverlener | Niet van toepassing | OCSP of CRL van het UZI-register | Intrekken UZI-certificaat |
| **M1** Vertrouwde dienstverlener geeft uit | UZI-servercertificaat (sleutel bij de vertrouwde dienstverlener) en eHerkenning (aanwijzing in de LRZa) | Bij de dienstverlener, gepresenteerd in het tokenrequest; die van de bron in de *Protected Resource Metadata* | OCSP of CRL van het UZI-register | Verloop aan het einde van de looptijd ([GF-AUTN-ADR-5](#gf-autn-adr-5-intrekken-of-laten-verlopen)); direct alleen door intrekken van een certificaat |
| **M2** Erkende uitgevers (tijdelijk) | eHerkenning (goedkeuring bij een uitgever) | Zoals M1 | Vertrouwenslijst van uitgevers; OCSP of CRL van het certificaat van de uitgever | Zoals M1 |
| **M3** `OrganizationAffiliation` in de LRZa | eHerkenning | LRZa-replica | Synchronisatie met de LRZa | Deactiveren in het portaal |
| **M4** Combinatie van M1 en M3 | UZI-servercertificaat (sleutel bij één dienstverlener) en eHerkenning | LRZa-replica, met `Provenance` | Synchronisatie met de LRZa; OCSP of CRL van het UZI-register | Deactiveren; intrekken UZI-certificaat |
| **M5** M3 met de EBW | Business wallet | LRZa-replica, met `Provenance` | Synchronisatie met de LRZa; EU-vertrouwenslijsten | Deactiveren in het portaal |
| **M6** Identiteit en machtiging gescheiden | Zoals M1, plus eHerkenning bij een notaris | Zoals M1, met een identiteitsattestatie en een machtiging | OCSP of CRL van het UZI-register en van de notaris; vertrouwenslijst van notarissen | Vernieuwing weigeren bij een van beide uitgevers; direct alleen door intrekken van een certificaat |
| **M7** Machtiging in de OAuth-metadata | Zoals M1 | Bij de dienstverlener, in een Client ID Metadata Document per zorgaanbieder; die van de bron in de *Protected Resource Metadata* | Client ID Metadata Document van de dienstverlener; OCSP of CRL van het UZI-register | Zoals M1 |

Geen variant is dus volledig zonder centrale afhankelijkheid. Bij M1, M2, M6 en M7 staat geen register in de controle, maar wel de intrekkingsdienst van de certificaatuitgever van de ondertekenaar; zonder statuslijst vervalt een machtiging pas als zij verloopt. Bij M7 hangt de authorization server ook af van de bereikbaarheid van het Client ID Metadata Document. M3 hangt af van de synchronisatie met de LRZa, M4 en M5 daarnaast van de intrekkingsdienst. In alle varianten controleren de authorization server en de resource server daarnaast de intrekkingsstatus van het clientcertificaat ([overige technische keuzes](#overige-technische-keuzes)).

# Bijlage B: Opties voor clientregistratie
Alle opties gebruiken dezelfde eisen aan certificaten: alleen servercertificaten van een vastgelegde lijst van uitgevende CA's (PKIoverheid en UZI), met de *extended key usage* `clientAuth`, en geen persoonsgebonden certificaten. De beveiligingsreview gaat uit van R2a, en beoordeelt R5 als onderdeel van het voorstel; R1, R2b, R3 en R4 zijn daar niet beoordeeld.

## R1: Registratie volgens UDAP
De client registreert zich bij elke authorization server met Dynamic Client Registration ([RFC 7591](https://www.rfc-editor.org/rfc/rfc7591)), volgens het HL7 [UDAP Security IG](https://hl7.org/fhir/us/udap-security/STU2/). Hij ondertekent een *software statement* met de sleutel van zijn certificaat, en krijgt een `client_id`. UDAP wordt gebruikt in de Verenigde Staten, onder meer in TEFCA. Een *software statement* is niet nodig voor de logging volgens NEN 7513, en niet voor de conformiteit van de software, die de EHDS bij de fabrikant legt ([Verordening (EU) 2025/327](https://eur-lex.europa.eu/eli/reg/2025/327/oj), art. 39 lid 5).
- *Implementatie:* UDAP is in Keycloak en Duende IdentityServer niet ingebouwd. Elke client bouwt de registratie, bewaart per authorization server een `client_id`, en registreert opnieuw bij certificaatvernieuwing.
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview.

## R2a: Client-id uit het certificaat
Er is geen registratie. De authorization server leidt de `client_id` af uit een vaste identificatie in het certificaat: het `organizationIdentifier` (KvK-nummer of OIN) van een PKIoverheid-certificaat, of het URA van een UZI-servercertificaat. Zo werkt ook PSD2: banken identificeren betaaldienstverleners aan hun eIDAS-certificaat ([Berlin Group V2.4.1, §8.8](https://berlin-group.org/wp-content/uploads/2026/09/11c.-Berlin-Group-openFinance-API-Framework-Core-PSD2-Compliance-V2-Suite-Protocol-Functions-and-Security-Measures-V2.4.1-20260731.pdf)).
- *Implementatie:* gangbare authorization servers kennen alleen vooraf geregistreerde clients. Elk product heeft een uitbreiding nodig die de client bij elk verzoek uit het certificaat afleidt: in Keycloak een eigen clientauthenticator op een intern uitbreidingspunt, in Duende IdentityServer een eigen client store. De afleidingsregel is een profielregel van het GIS, geen standaard. Sommige PKIoverheid-certificaten bevatten nog geen `organizationIdentifier`. De Nuts-node registreert geen clients en past al.
- *Grootste risico's:* alle certificaten van een organisatie leveren dezelfde `client_id`, zodat een gestolen sleutel van een ander systeem van die organisatie toegang geeft tot al haar machtigingen, en het formaat van de identificatie is nog niet vastgelegd (S22). Iedere houder van een geldig certificaat kan verbinden (S3).

## R2b: Clients vooraf registreren
De beheerder van elke authorization server maakt de clients vooraf aan, uit een lijst van deelnemers, bijvoorbeeld afgeleid uit de LRZa.
- *Implementatie:* geen uitbreiding van de authorization server, wel een lijst van deelnemers en per authorization server een koppeling om de clients bij te houden. Dat is een extra functie voor de LRZa en blijvend werk; een nieuwe deelnemer moet wachten tot alle beheerders hun clients hebben bijgewerkt.
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview. Een fout in of compromittering van de lijst kan deelnemers buitensluiten; toegang vraagt nog steeds een geldige machtiging.

## R3: Registratie met een eigen client-id
Een vereenvoudigde vorm van R1, zonder *software statement*. De client gebruikt de `client_id` uit R2a, en registreert zich volgens RFC 7591 bij een authorization server die hem nog niet kent. Een variant is *idempotente registratie*: de server kent de `client_id` toe, maar geeft bij hetzelfde certificaat steeds dezelfde client terug.
- *Implementatie:* RFC 7591 kent geen eigen client-id. Keycloak accepteert die alleen in zijn eigen registratieformaat, in Duende IdentityServer moet de generatie van client-id's worden aangepast, en de controle dat de client-id bij het certificaat past, is in elk product maatwerk. Idempotente registratie ondersteunt geen van de producten. Elke client bouwt de registratie en de foutafhandeling. De nadelen staan uitgebreid bij [GF-AUTN-ADR-6](#gf-autn-adr-6-hoe-worden-clients-geregistreerd).
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview. Zonder controle op het certificaat kan een deelnemer de client-id van een ander vooraf registreren, en hem zo buitensluiten.

## R4: Registratie met een toegekende client-id
Een vereenvoudigde vorm van R1, zonder *software statement*, waarin de authorization server de `client_id` toekent, zoals RFC 7591 voorschrijft. De client registreert zich over mTLS bij een server die hem nog niet kent, met `tls_client_auth` en de *subject DN* van zijn certificaat. Hij bewaart per server de `client_id`, en eventueel een *registration access token* om de registratie later bij te werken ([RFC 7592](https://www.rfc-editor.org/rfc/rfc7592)).
- *Implementatie:* in Keycloak configuratie van het registratiebeleid; in Duende IdentityServer een kleine aanpassing van de registratievoorziening (C#). Elke client bouwt de registratie, het bewaren en bijwerken daarvan, en de foutafhandeling. Niet mogelijk in Microsoft Entra ID en de Nuts-node.
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview. Iedere houder van een geldig certificaat kan clients registreren, dus de server moet het aantal registraties beperken. Wie een *registration access token* bemachtigt, kan de registratie wijzigen of verwijderen en de client zo buitensluiten, maar niet namens de dienstverlener handelen.

## R5: Client ID Metadata Document (voorstel)
Er is geen registratie: de `client_id` is een HTTPS-URL op een domein van de beheerder van de client, waar de clientmetadata wordt gepubliceerd ([OAuth Client ID Metadata Document](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/), IETF-draft). In open netwerken heeft het de voorkeur boven registratie volgens RFC 7591 ([Parecki](https://aaronparecki.com/2026/07/29/19/cimd-over-dcr)). De authorization server haalt het document op en bewaart het volgens de cache-headers. De host van de `client_id` staat als DNS-naam in het clientcertificaat. Bij M7 bevat het document ook de machtiging.
- *Implementatie:* de client publiceert één document per zorgaanbieder. In de onderzochte producten is de ondersteuning experimenteel (Keycloak, alleen bij autorisatieverzoeken) of afwezig (Duende IdentityServer, Nuts-node), zodat het laden van de client en de controle van de host maatwerk zijn ([Keycloak en Duende](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- *Grootste risico's:* de beheerder van de client bepaalt het document en de URL zelf (S23). Het ophalen kan worden misbruikt voor *server-side request forgery* (S24), en het domein van de client komt in het kritieke pad van het tokenrequest (S25). De kwetsbare vergelijking op *subject DN* (S26) vervalt met `tls_client_auth_san_dns`. Met de machtiging in het document komen daar S20 en S21 bij (zie M7).

# Bijlage C: Beveiligingsrisico's
De risico's en hun ernst komen uit een beveiligingsreview van de varianten. Die review is met een AI-assistent opgesteld en is nog niet door beveiligingsexperts beoordeeld; de ernst is een eerste inschatting. De kolom *Voorstel* geeft aan of het risico geldt voor het [voorstel](#voorstel-machtiging-in-client-id-metadata-document-en-protected-resource-metadata) (M7 met R5).

| Nr. | Risico | Ernst | Voorstel |
|---|---|---|---|
| S1 | Een machtiging kan niet worden ingetrokken voordat zij verloopt. | Middel bij 3 maanden; hoog bij 2 jaar, laag bij minuten | Ja; bewuste keuze ([GF-AUTN-ADR-5](#gf-autn-adr-5-intrekken-of-laten-verlopen)) |
| S2 | Het access token is niet expliciet aan de bronhoudende zorgaanbieder gebonden: bedient een authorization server meerdere zorgaanbieders, dan kan een token voor de ene bij de andere worden gebruikt. | Middel | Ja |
| S3 | Deelname aan het afsprakenstelsel wordt niet vóór elke uitwisseling gecontroleerd (NEN 7512, 6.1.11). | Middel | Ja |
| S4 | De uitwisseling wordt niet ondertekend zoals NEN 7512, 6.2.7, beschrijft. | Afhankelijk van de risicoklasse | Ja |
| S5 | Het uitvoerende systeem is niet te onderscheiden van de zorgaanbieder. | Middel | Nee; eigen certificaat en `may_act.sub` |
| S6 | Elke houder van een UZI-servercertificaat met het URA van de zorgaanbieder kan namens hem ondertekenen. | Middel | Ja |
| S7 | De zorgaanbieder kan de sleutelhouder niet buitensluiten zonder zijn UZI-certificaat in te trekken. | Middel | Ja, tenzij de zorgaanbieder zelf de vertrouwde dienstverlener is |
| S8 | De goedkeuring door de zorgaanbieder kan worden misleid (*phishing*) of verkeerd begrepen. | Middel | Ja |
| S9 | Opnieuw binden aan een nieuwe sleutel kan de tweede sleutel omzeilen. | Middel | Nee; geen sleutelbinding |
| S10 | Uitgevers of sleutelhouders kunnen vertrouwensdienstverlener zijn onder eIDAS en NIS2, met de bijbehorende verplichtingen. | Middel | Onduidelijk, zoals bij M1 |
| S11 | Een uitgever kan voor elke zorgaanbieder geldige machtigingen maken. | Hoog | Deels; alleen de vertrouwde dienstverlener, voor de eigen zorgaanbieders |
| S12 | Via ketenmachtiging, in eHerkenning of in een wallet, kan een dienstverlener zichzelf machtigen. | Middel | Nee |
| S13 | Machtigingen in de LRZa zijn niet ondertekend. | Middel | Nee |
| S14 | Dienstverleners kunnen identificaties in de LRZa wijzigen waarop machtigingen steunen. | Middel | Deels; alleen bij het vinden van endpoints |
| S15 | Een ingetrokken machtiging kan herleven door een oude handtekening opnieuw te gebruiken. | Hoog | Nee; de machtiging verloopt (zie S1) |
| S16 | De handtekening bindt het URA van de zorgaanbieder en de identiteit van de dienstverlener niet. | Hoog | Nee; `sub` en `may_act.sub` zijn ondertekend |
| S17 | Controleurs kunnen terugvallen op niet-ondertekende machtigingen. | Hoog | Nee |
| S18 | De koppeling van KvK-nummer of EUID aan het URA loopt via wijzigbare LRZa-gegevens. | Hoog | Nee |
| S19 | Wat wordt ondertekend of verzegeld, kan afwijken van wat werd getoond. | Hoog | Deels; de vertrouwde dienstverlener beheert goedkeuring én ondertekening |
| S20 | Een gepubliceerde machtiging kan door elke deelnemer worden gebruikt als een authorization server de controle van `may_act.sub` tegen het certificaat mist. | Hoog | Ja |
| S21 | De sleutel van het clientcertificaat is de enige sleutel die de machtigingen beschermt. | Middel | Ja |
| S22 | De afleiding van de client-id uit het certificaat is niet volledig vastgelegd, en alle certificaten van een organisatie leveren dezelfde client-id. | Laag | Nee; de `client_id` is de URL van het document |
| S23 | Het Client ID Metadata Document en de URL ervan staan onder controle van de beheerder van de client. | Laag | Ja |
| S24 | Het ophalen van clientmetadata kan worden misbruikt voor *server-side request forgery*. | Laag | Ja, beperkt; ophalen pas na controle van certificaat en host |
| S25 | Het domein van de client komt in het kritieke pad van het tokenrequest. | Laag | Ja, beperkt; cache tot 24 uur |
| S26 | De vergelijking op *subject DN* is kwetsbaar door verschillen in schrijfwijze en bij certificaatvernieuwing. | Laag | Nee; `tls_client_auth_san_dns` |
