**Concept** · 16 november 2026

Dit document legt de ontwerpbeslissingen vast voor de machtiging van dienstverleners en de registratie van OAuth-clients bij de gegevensuitwisselingen BgZ en eOverdracht, en sluit af met een voorstel. Het bouwt voort op de notitie [*Harmonisatie van authenticatie en autorisatie voor de gegevensuitwisselingen BgZ en eOverdracht*](./authenticatie-en-autorisatie-eOverdracht-BgZ-vMT-DICIO-20260818.html) (versie 0.95, hierna: de notitie), en past de technische keuzes uit hoofdstuk 6 van die notitie aan. Per beslissing staan de vraag, de opties, het besluit, de reden en de gevolgen. De bijlagen beschrijven de onderzochte alternatieven, met wat de implementatie vraagt en de grootste beveiligingsrisico's.
{: .ig-lead}

# Documenthistorie

| Versie | Status | Datum | Auteur | Wijziging |
|--------|--------|-------|--------|-----------|
| 0.1.0 | Concept | 16 oktober 2026 | VWS | eerste versie voor review expertgroep|
| 0.2.0 | Concept | 30 oktober 2026 | VWS | aanpassing variant M1 en M2 n.a.v. expertgroep op 23 oktober; 'mandaat' vervangen door 'machtiging' |
| 0.3.0 | Concept | 5 november 2026 | VWS | toevoeging variant M6 n.a.v. email/voorstel Nuts van 4 november |
| 0.4.0 | Concept | 12 november 2026 | VWS | presentatie van de machtiging als `vp_token` in M1, uitbreidbaar naar meer attestaties; opties R3, R4 en R5 voor clientregistratie; variant M7; analyse impact op authorization servers; herstructurering/invoegen van ontwerpbeslissingen  |
| 0.5.0 | Concept | 16 november 2026 | VWS | grant gewijzigd in de JWT bearer grant (RFC 7523): de client ondertekent per tokenrequest een assertion met de machtiging en de velden van het RAR-object (variant M8); token exchange met delegatie als optie in ADR-7; één Client ID Metadata Document per dienstverlener, zonder machtiging; R3 gesplitst in R3a en R3b |

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
- [Voorstel: machtiging in het tokenrequest en de Protected Resource Metadata](#voorstel-machtiging-in-het-tokenrequest-en-de-protected-resource-metadata)
  - [Werking](#werking)
  - [Blijft het tokenrequest eenvoudig?](#blijft-het-tokenrequest-eenvoudig)
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
  - [M7: Machtiging in de OAuth-metadata](#m7-machtiging-in-de-oauth-metadata)
  - [M8: Machtiging in een JWT bearer grant (voorstel)](#m8-machtiging-in-een-jwt-bearer-grant-voorstel)
  - [Vergelijking van de varianten](#vergelijking-van-de-varianten)
- [Bijlage B: Opties voor clientregistratie](#bijlage-b-opties-voor-clientregistratie)
  - [R1: Registratie volgens UDAP](#r1-registratie-volgens-udap)
  - [R2a: Client-id uit het certificaat](#r2a-client-id-uit-het-certificaat)
  - [R2b: Clients vooraf registreren](#r2b-clients-vooraf-registreren)
  - [R3a: Registratie met een eigen client-id](#r3a-registratie-met-een-eigen-client-id)
  - [R3b: Idempotente registratie](#r3b-idempotente-registratie)
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
| Assertion | Het JWT dat de client bij elk tokenrequest ondertekent ([RFC 7523](https://www.rfc-editor.org/rfc/rfc7523)), met de zorgaanbieder (`sub`), het doel (`purpose_of_use`), de bron en de machtiging, en met het type `nl-gf-jwt-bearer-assertion+jwt`. Het vervangt het RAR-object (`authorization_details`) uit de notitie. |

# Ontwerpbeslissingen
Hieronder staan zeven ontwerpbeslissingen (*architecture decision records*). Elke beslissing beschrijft de vraag, de opties, het besluit, de reden en de gevolgen. De opties verwijzen naar de onderzochte varianten: M0 tot en met M8 voor de machtiging ([bijlage A](#bijlage-a-varianten-voor-de-machtiging)) en R1 tot en met R5 voor de clientregistratie ([bijlage B](#bijlage-b-opties-voor-clientregistratie)). Daar staan per variant de werking, wat de implementatie vraagt en de grootste beveiligingsrisico's; die risico's zijn genummerd S1 tot en met S26 ([bijlage C](#bijlage-c-beveiligingsrisicos)). De tabel vat de besluiten samen.

| ADR | Vraag | Besluit |
|---|---|---|
| [GF-AUTN-ADR-1](#gf-autn-adr-1-waar-staat-de-machtiging) | Waar staat de machtiging? | Bij de gemachtigde dienstverlener, niet in een centraal register |
| [GF-AUTN-ADR-2](#gf-autn-adr-2-wie-ondertekent-de-machtiging) | Wie ondertekent de machtiging? | De vertrouwde dienstverlener (of de zorgaanbieder zelf), met de sleutel van het UZI-servercertificaat van de zorgaanbieder; de zorgaanbieder kan die rol ook zelf invullen |
| [GF-AUTN-ADR-3](#gf-autn-adr-3-hoe-ziet-de-machtiging-eruit) | Hoe ziet de machtiging eruit? | Een SD-JWT VC, uitgegeven met OpenID4VCI |
| [GF-AUTN-ADR-4](#gf-autn-adr-4-wat-mag-de-dienstverlener-namens-de-zorgaanbieder) | Wat mag de dienstverlener namens de zorgaanbieder? | Machtigingscodes `<doel>-<rol>`, met het doel uit PurposeOfUse en de rol `user` of `custodian` |
| [GF-AUTN-ADR-5](#gf-autn-adr-5-intrekken-of-laten-verlopen) | Hoe wordt een machtiging ingetrokken? | Door haar te laten verlopen: ten hoogste 3 maanden geldig, en vernieuwd zolang de goedkeuring geldt; geen statuslijst |
| [GF-AUTN-ADR-6](#gf-autn-adr-6-hoe-worden-clients-geregistreerd) | Hoe worden clients geregistreerd? | Met één Client ID Metadata Document per dienstverlener. |
| [GF-AUTN-ADR-7](#gf-autn-adr-7-welke-grant) | Welke grant? | *JWT bearer* (RFC 7523): de client ondertekent per tokenrequest een assertion met de machtiging, de zorgaanbieder en het doel, over mTLS |

Daarnaast veranderen enkele andere technische keuzes uit de notitie ([overige technische keuzes](#overige-technische-keuzes)). Het [voorstel](#voorstel-machtiging-in-het-tokenrequest-en-de-protected-resource-metadata) combineert alles.

## GF-AUTN-ADR-1: Waar staat de machtiging?
**Vraag.** Staat de machtiging in een centraal register, de LRZa, of bij de dienstverlener die haar gebruikt?

**Opties.**
- *In de LRZa* ([M3](#m3-machtiging-in-de-lrza) tot en met [M5](#m5-machtiging-in-de-lrza-verzegeld-met-de-ebw)): de zorgaanbieder registreert een `OrganizationAffiliation`, en de authorization server controleert die in zijn lokale replica.
- *Bij de dienstverlener* ([M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit), [M2](#m2-erkende-uitgevers-geven-machtigingen-uit), [M6](#m6-identiteit-en-machtiging-als-twee-attestaties), [M7](#m7-machtiging-in-de-oauth-metadata) en [M8](#m8-machtiging-in-een-jwt-bearer-grant-voorstel)): de machtiging is een ondertekende attestatie die de dienstverlener bewaart en laat zien.

**Besluit.** Bij de dienstverlener. De client presenteert de machtiging van de opvragende zorgaanbieder bij elk tokenrequest ([GF-AUTN-ADR-7](#gf-autn-adr-7-welke-grant)); de resource server van de bron publiceert de machtiging van de bronhoudende zorgaanbieder in zijn *Protected Resource Metadata* ([RFC 9728](https://www.rfc-editor.org/rfc/rfc9728)).

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

**Besluit.** Doel en rol. Het doel is een code uit HL7 waardenlijst [PurposeOfUse](https://terminology.hl7.org/en/ValueSet-v3-PurposeOfUse.html): `TREAT`, `ETREAT`, `PATRQT`, `HRESCH` of `HSYSADMIN`. Deze doelen staan in de ValueSet [NL GF Purpose of Use](./ValueSet-nl-gf-purpose-of-use-vs.html). Een code geeft geen rechten voor de onderliggende codes in de hiërarchie van PurposeOfUse: een machtiging voor `TREAT` dekt dus niet ook `ETREAT`, `BTG` of `POPHLTH`, en een doel dat niet in de ValueSet staat, wordt geweigerd. De rol is `user`, gegevens opvragen en ontvangen, doorgaans met een client, of `custodian`, als bronhouder gegevens beschikbaar stellen of registreren, doorgaans met een authorization server en een resource server. Dat geeft tien codes, zoals `TREAT-user`. Een machtiging kan meerdere codes bevatten (`scope`). De authorization server leidt de vereiste code af uit `purpose_of_use` in de assertion; de client controleert dat de bron de bijbehorende `custodian`-code heeft.

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
- *Eén codelijst.* Machtiging en verzoek gebruiken dezelfde codelijst, zodat de assertion geen apart veld voor het machtigingstype nodig heeft.

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
- Vernieuwen moet automatisch gaan: de vertrouwde dienstverlener geeft de nieuwe machtiging uit, en de client gebruikt haar vanaf het volgende tokenrequest. De resource server zet de nieuwe machtiging in zijn *Protected Resource Metadata*, ten minste 24 uur (de maximale cacheduur) voordat de oude verloopt.
- De authorization server controleert de geldigheid van de machtiging en de intrekkingsstatus van het UZI-certificaat bij elk tokenrequest.
- Bij de overstap naar de EBW, kan een statuslijst worden toegevoegd; het ARF van de EUDI-wallet vraagt die voor attestaties die langer dan 24 uur geldig zijn. De looptijd kan dan langer worden.

## GF-AUTN-ADR-6: Hoe worden clients geregistreerd?
**Vraag.** Hoe weet een authorization server welke client een verzoek doet, zonder handmatige registratie in een netwerk met veel partijen?

**Opties.**

| Optie | Werking | Bezwaar |
|---|---|---|
| [R1](#r1-registratie-volgens-udap): dynamische registratie volgens UDAP | De client registreert zich met een ondertekend *software statement* | Per authorization server een `client_id` bewaren; UDAP is in de onderzochte producten (Keycloak, Duende) niet ingebouwd |
| [R2a](#r2a-client-id-uit-het-certificaat): uit het certificaat | De authorization server leidt de `client_id` af uit het certificaat | Geen standaard: maatwerk in elke authorization server |
| [R2b](#r2b-clients-vooraf-registreren): geen dynamische registratie, maar vooraf | De beheerder maakt clients aan uit een lijst van deelnemers, bijvoorbeeld afgeleid uit de LRZa | Een extra functie voor de LRZa, blijvend werk om de clients bij te houden, en een nieuwe deelnemer moet wachten totdat alle authorization server beheerders haar clients bijgewerkt hebben |
| [R3a](#r3a-registratie-met-een-eigen-client-id): registratie met een eigen client-id | Bij een onbekende authorization server registreert de client zich volgens DCR (RFC 7591), met een `client_id` die hij zelf afleidt uit zijn certificaat | Geen standaard: RFC 7591 kent geen eigen client-id, en de koppeling met het certificaat vraagt dezelfde uitbreiding als R2a |
| [R3b](#r3b-idempotente-registratie): idempotente registratie | Zoals R3a, maar de server kent de `client_id` toe en geeft bij hetzelfde certificaat steeds dezelfde client terug | Niet ondersteund in de onderzochte producten; RFC 7591 beschrijft niet wanneer twee registraties dezelfde client zijn |
| [R4](#r4-registratie-met-een-toegekende-client-id): registratie met een toegekende client-id | Bij een onbekende authorization server registreert de client zich volgens DCR (RFC 7591); de server kent de `client_id` toe | Per authorization server een `client_id`, en eventueel een *registration access token*, bewaren; open registratie|
| [R5](#r5-client-id-metadata-document-voorstel): Client ID Metadata Document | De `client_id` is een URL waar de client zijn metadata publiceert | Een IETF-draft; de authorization server haalt het document op |

**Besluit.** R5: één [Client ID Metadata Document](#r5-client-id-metadata-document-voorstel) per dienstverlener (zonder zorgaanbieder specifieke content).

**Waarom.**
- Er is geen registratie-transactie/endpoint/state, en client en authorization server hoeven niets over elkaar op te slaan.
- Het is een standaard, zij het een draft, in plaats van een eigen profielregel per product (uitgangspunt *standaarden boven maatwerk*).
- Wie de client beheert, beheert ook zijn metadata. Het document verandert zelden omdat het geen zorgaanbieder specifieke content en omdat certificaatvernieuwing geen impact geeft zolang de host gelijk blijft.
- Het document voegt weinig toe aan het certificaat: het vertrouwen steunt op de host in het certificaat en op `may_act.sub` in de machtiging. Het levert wel een standaard `client_id` zonder registratie.

**Gevolgen.**
- De host van de `client_id` staat als DNS-naam in het clientcertificaat, en het document noemt die host in `tls_client_auth_san_dns` ([RFC 8705](https://www.rfc-editor.org/rfc/rfc8705), §2.1.2) in plaats van de *subject DN*. Zo speelt de schrijfwijze van de *subject DN* geen rol (S26), en verandert het document niet bij een certificaatvernieuwing. De authorization server cachet het document hoogstens 24 uur en leest hoogstens 32 kB.
- De authorization server maakt uitgaande verbindingen naar de documenten van clients, over mTLS en met maatregelen tegen *server-side request forgery*.
- De specificatie is een draft (versie 03, november 2026), en de ondersteuning in producten is nog jong (zie het [voorstel](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- Een authorization server krijgt één client per dienstverlener, of per systeem van een dienstverlener.

## GF-AUTN-ADR-7: Welke grant?
**Vraag.** Met welke grant vraagt de client een access token aan: een standaardgrant, of een grant waarin hij de machtiging en andere attestaties bij elk verzoek presenteert?

**Opties.**
- *Client credentials* ([RFC 6749](https://www.rfc-editor.org/rfc/rfc6749), paragraaf 4.4): de machtiging staat in een Client ID Metadata Document per zorgaanbieder ([M7](#m7-machtiging-in-de-oauth-metadata)), en het verzoek bevat alleen mTLS en een RAR-object.
- *Token exchange met delegatie* ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693)): de machtiging is het `subject_token`, en de client, die zich met mTLS authenticeert, is de *actor*.
- *Token exchange met een `vp_token`* ([M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit)): de machtiging en eventuele andere attestaties reizen mee in het `subject_token`, elk met een *key binding*-JWT.
- *JWT bearer* ([RFC 7523](https://www.rfc-editor.org/rfc/rfc7523), [M8](#m8-machtiging-in-een-jwt-bearer-grant-voorstel)): de client ondertekent per verzoek een assertion voor één authorization server, met de machtiging en de context van het verzoek.

**Besluit.** *JWT bearer* ([M8](#m8-machtiging-in-een-jwt-bearer-grant-voorstel)). De client ondertekent bij elk tokenrequest een assertion met de sleutel van zijn certificaat. De assertion bevat de zorgaanbieder (`sub`), het doel en de bron (de velden die de notitie in het RAR-object had), en de machtiging, in een object met per attestatietype een lijst. Zij geldt voor één authorization server (`aud`), hoogstens 5 minuten en één keer (`jti`). Het type `nl-gf-jwt-bearer-assertion+jwt` in de header (`typ`) maakt haar herkenbaar naast andere verzoeken met de JWT bearer grant ([RFC 8725](https://www.rfc-editor.org/rfc/rfc8725), paragraaf 3.11). De authorization server controleert de assertion, de machtiging en `may_act.sub` tegen het certificaat, en legt in het access token de zorgaanbieder vast in `sub` en de dienstverlener in `act` ([RFC 8693](https://www.rfc-editor.org/rfc/rfc8693), paragraaf 4.1).

**Waarom.**
- *Geen interactieve gebruiker.* De zorgverlener is in het eigen domein geauthenticeerd, en de uitwisseling verloopt van systeem tot systeem. De notitie noemde FAPI 2.0 als reden voor *client credentials*, maar FAPI 2.0 sluit andere grants niet uit.
- *Ondertekend verzoek.* De zorgaanbieder, het doel, de bron en de gepresenteerde machtiging zijn door de client ondertekend. De authorization server kan aan derden laten zien wat de dienstverlener heeft gevraagd. Dat ondervangt S4 deels: het verzoek is ondertekend, de gegevens niet.
- *Uitbreidbaar.* Andere attestaties, ook attestaties die per verzoek verschillen, kunnen in dezelfde assertion mee, zonder andere grant ([uitbreidbaarheid](#uitbreidbaarheid-met-andere-attestaties)). De handtekening legt vast welke attestaties bij welk verzoek horen.
- *Machtiging zoals uitgegeven.* De machtiging staat ongewijzigd in de assertion, als SD-JWT VC, net als in de *Protected Resource Metadata*. Er is geen eigen tokentype en geen aangepaste serialisatie nodig.
- *Vastgestelde standaard.* RFC 7523 is vastgesteld. Eigen zijn het type en de claims van de assertion, zoals ook het RAR-type `nl-gis-v1` uit de notitie een eigen profiel was; RFC 7521 (paragraaf 7) gaat ervan uit dat deelnemers zulke afspraken maken.
- *Machtigingen niet openbaar.* Alleen de authorization servers waar de client een token aanvraagt, zien zijn machtiging. Bij *client credentials* met de machtiging in de metadata (M7) is zij voor alle deelnemers leesbaar (S20), en toont de metadata welke zorgaanbieders welke dienstverlener hebben gemachtigd.
- *Eenvoudige registratie.* De zorgaanbieder komt uit de assertion, zodat één client per dienstverlener volstaat ([GF-AUTN-ADR-6](#gf-autn-adr-6-hoe-worden-clients-geregistreerd)).
- *Haalbaar in Q1 2027.* De client ondertekent een JWT met een standaard JOSE-bibliotheek. In de authorization server is het maatwerk vergelijkbaar met dat bij de andere opties: het laden van de client, en één eigen grant die de assertion en de machtiging controleert ([voorstel](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- *Groeipad naar de EBW.* Een presentatie uit een wallet gaat vermoedelijk via OpenID4VP, met eisen uit HAIP. De assertion is een eigen profiel en geen walletpresentatie, maar de attestaties erin zijn SD-JWT VC's, zodat ze bij de overstap herbruikbaar zijn. N.B. Bij het opvragen van de machtiging, en de machtiging zelf (zie [ADR 3](#gf-autn-adr-3-hoe-ziet-de-machtiging-eruit)) is er wel een voorschot genomen op EBW ontwikkelingen.

**Gevolgen.**
- De client ondertekent elk tokenrequest met de sleutel van zijn certificaat, met een unieke `jti`. De authorization server houdt gebruikte `jti`-waarden bij zolang de assertion geldig is.
- De sleutel van het clientcertificaat blijft de enige sleutel die de machtigingen beschermt (S21): zij authenticeert de verbinding en ondertekent de assertion.
- De authorization servers waar de client tokens aanvraagt, zien zijn machtigingen. Mist een andere authorization server de controle van `may_act.sub`, dan kan zo'n server een machtiging daar gebruiken (S20).
- Het RAR-object (`authorization_details`) uit de notitie vervalt; de velden staan in de assertion.
- Gangbare producten ondersteunen de JWT bearer grant niet, of alleen met een vooraf ingestelde vertrouwensrelatie per uitgever. De grant is daarom in elk product maatwerk ([voorstel](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- De authorization server geeft geen *refresh token* uit ([RFC 7521](https://www.rfc-editor.org/rfc/rfc7521), paragraaf 4.1): na het verlopen van het access token vraagt de client een nieuw aan, met een nieuwe assertion.

## Overige technische keuzes
De notitie koos in hoofdstuk 6 voor OAuth 2.0 met de beveiligingsmaatregelen uit FAPI 2.0, voor Rich Authorization Requests en voor mTLS op de transportlaag, voorlopig met UZI-servercertificaten of PKIoverheid-certificaten. OAuth 2.0, FAPI 2.0 en mTLS blijven; het RAR-object gaat op in de assertion ([GF-AUTN-ADR-7](#gf-autn-adr-7-welke-grant)). Omdat de dienstverlener met een eigen identiteit handelt, veranderen de volgende keuzes:

| Onderwerp | Keuze | Reden |
|---|---|---|
| Clientauthenticatie | mTLS met het eigen certificaat van de organisatie die de client beheert (`tls_client_auth`, [RFC 8705](https://www.rfc-editor.org/rfc/rfc8705)), in plaats van `private_key_jwt`. Het access token is aan dat certificaat gebonden, in plaats van met DPoP. | De notitie koos `private_key_jwt` omdat het transportcertificaat de zorgaanbieder niet altijd identificeert. Nu de client het certificaat van zijn eigen beheerder gebruikt, meestal een dienstverlener, identificeert het certificaat juist de partij die verantwoordelijk is voor de verbinding, en de machtiging de zorgaanbieder. Eén mechanisme voor transport, clientauthenticatie en tokenbinding; FAPI 2.0 staat het toe. |
| Access token | De authorization server van de bron geeft het uit, met zijn eigen sleutel. Het is ondoorzichtig (*opaque*) voor de client, en legt de zorgaanbieder, de client, de dienstverlener die hem beheert en de context uit de assertion vast. | In de notitie ondertekent de bronhoudende zorgaanbieder het access token met zijn UZI-sleutel. Dat wijkt af van gangbare standaarden (IHE IUA: "The token is opaque to the Authorization Client"), en een authorization server voor veel zorgaanbieders zou dan per zorgaanbieder een UZI-sleutel moeten beheren. |
| Context van het verzoek | In de ondertekende assertion: het URA van de zorgaanbieder (`sub`), het doel (`purpose_of_use`) en de bron (`locations_organization_id`, `locations`), in plaats van in een RAR-object van het type `nl-gis-v1`. | De authorization server toetst de zorgaanbieder en `purpose_of_use` aan de machtiging. In de assertion zijn ze samen met de machtiging ondertekend. |
| Vaststellen van de bron | De client controleert vóór het verzoek de machtiging van de bron in de *Protected Resource Metadata* van de resource server, en of het servercertificaat van de resource server bij de gemachtigde dienstverlener hoort. | Zo blijft eis 1 uit de notitie vervuld: het wederzijds vaststellen van de identiteit van de zorgaanbieder. |
| Intrekking en TLS-terminatie | De authorization server en de resource server controleren de intrekkingsstatus van het clientcertificaat, en weigeren als die onbekend is. Alleen de bron, dat wil zeggen de zorgaanbieder of zijn dienstverlener met een *custodian*-machtiging, of een voorziening in hun eigen domein, zoals een load balancer, beëindigt de TLS-verbinding en geeft het certificaat door volgens [RFC 9440](https://www.rfc-editor.org/rfc/rfc9440). Een andere tussenpartij doet dat niet. Een tussenpartij aan de kant van de aanvrager is zelf de client, met een eigen certificaat en een eigen machtiging. | RFC 8705 laat de intrekkingscontrole aan de server over. Een doorgegeven certificaat bewijst niet dat de afzender de bijbehorende sleutel heeft: wie het doorgeeft, kan zich voordoen als elke dienstverlener. Dat is alleen aanvaardbaar bij een partij waarvoor de bron verantwoordelijk is. |

# Voorstel: machtiging in het tokenrequest en de Protected Resource Metadata
Het voorstel combineert de zeven beslissingen. De client presenteert de machtiging van de opvragende zorgaanbieder bij elk tokenrequest, in een assertion die hij zelf ondertekent (JWT bearer, RFC 7523); de resource server publiceert de machtiging van de bronhoudende zorgaanbieder in zijn *Protected Resource Metadata*. De client heeft één Client ID Metadata Document (per dienstverlener, zonder zorgaanbieder-specifieke content). De specificatie staat in [GF Authentication (V&O)](./authentication.html); de grootste risico's staan bij [M8](#m8-machtiging-in-een-jwt-bearer-grant-voorstel) en [R5](#r5-client-id-metadata-document-voorstel) in de bijlagen.

## Werking
1. **Uitgifte.** De dienstverlener die de client beheert, vraagt een machtiging aan (OpenID4VCI) bij de vertrouwde dienstverlener van zijn zorgaanbieder, of bij de zorgaanbieder zelf als die deze rol invult. De zorgaanbieder keurt goed, en de machtiging wordt ondertekend met zijn UZI-sleutel.
2. **Clientmetadata.** De dienstverlener publiceert één Client ID Metadata Document, bijvoorbeeld op `https://dienstverlener-a.nl/oauth/client`, op een host die in zijn certificaat staat. Het document noemt onder meer de grant `urn:ietf:params:oauth:grant-type:jwt-bearer` en `tls_client_auth_san_dns`, en bevat geen machtigingen.
3. **Publicatie door de bron.** De resource server publiceert de machtiging van de bronhoudende zorgaanbieder in zijn *Protected Resource Metadata*.
4. **Controle van de bron.** De client vindt het endpoint van de bron in zijn LRZa-replica, haalt de *Protected Resource Metadata* op en controleert de machtiging van de bron (`TREAT-custodian`, met `may_act.sub` tegen het servercertificaat).
5. **Tokenrequest.**

   ```
   POST /token HTTP/1.1                      (mTLS met het certificaat van dienstverlener A)
   Host: as.dienstverlener-b.nl
   Content-Type: application/x-www-form-urlencoded

   grant_type=urn%3Aietf%3Aparams%3Aoauth%3Agrant-type%3Ajwt-bearer
   &client_id=https%3A%2F%2Fdienstverlener-a.nl%2Foauth%2Fclient                  (zie stap 2)
   &assertion=<assertion, ondertekend met de sleutel van het certificaat van dienstverlener A>
   ```

   De header van de assertion bevat `typ` `nl-gf-jwt-bearer-assertion+jwt` en het certificaat van dienstverlener A in `x5c`; de payload:

   ```json
   {
     "iss": "https://dienstverlener-a.nl/oauth/client",
     "sub": "urn:oid:2.16.528.1.1007.3.3.11111111",
     "aud": "https://as.dienstverlener-b.nl",
     "iat": 1792108800,
     "exp": 1792109100,
     "jti": "0b6d9c2e-7f4a-4c1d-8e3b-5a9f2c7d1e64",
     "purpose_of_use": "http://terminology.hl7.org/CodeSystem/v3-ActReason|TREAT",
     "locations_organization_id": "urn:oid:2.16.528.1.1007.3.3.12345678",
     "locations": ["https://fhir.dienstverlener-b.nl/zorgaanbieder-b/fhir"],
     "attestations": { "URA-signed-mandate": ["<machtiging van zorgaanbieder A>~"] }
   }
   ```

6. **Controle door de authorization server.** Hij controleert eerst het certificaat, en of de host van de `client_id` als DNS-naam in dat certificaat staat. Bij een onbekende client of een verlopen cache haalt hij daarna het document op, over mTLS. Bij elk tokenrequest controleert hij de assertion: het type, de handtekening met de sleutel van het clientcertificaat, `iss`, `aud`, de geldigheid, en of de `jti` nieuw is. Daarna controleert hij de machtiging erin: de handtekening, de UZI-keten, de intrekkingsstatus van het UZI-certificaat, de geldigheid, en `may_act.sub` tegen de identificatie uit het certificaat. Ten slotte toetst hij of `sub` van de assertion gelijk is aan `sub` van de machtiging, en of `purpose_of_use` past bij de machtigingscodes.
7. **Access token.** Gebonden aan het certificaat (`cnf.x5t#S256`), met de zorgaanbieder (`sub`), de dienstverlener (`act`), de client en de context uit de assertion, zonder *refresh token*. De resource server controleert bij elk verzoek het token, de binding aan het certificaat en de intrekkingsstatus van het certificaat, en neemt zijn autorisatiebeslissing op basis van de zorgaanbieder en `purpose_of_use`.

## Blijft het tokenrequest eenvoudig?
**Op de lijn: ja.** Het tokenrequest gebruikt standaarden:
- de JWT bearer grant (RFC 7523, paragraaf 2.1), met een assertion die de client ondertekent met de sleutel van zijn certificaat;
- `tls_client_auth` en certificaatgebonden tokens (RFC 8705);
- een `client_id` uit een Client ID Metadata Document. De draft beschrijft vooral de autorisatiecodeflow, maar sluit andere grants niet uit: hij beperkt de grants tot wat document en server allebei ondersteunen, en beschrijft de foutafhandeling bij het token-endpoint.

Eigen zijn het type van de assertion (`nl-gf-jwt-bearer-assertion+jwt`) en de claims erin: de velden die de notitie in het RAR-object had, en het object met attestaties.

**Voor de client: één ondertekening per verzoek.** De client maakt per tokenrequest een JWT met een unieke `jti`, en ondertekent het met de sleutel van zijn certificaat, met een standaard JOSE-bibliotheek. Staat die sleutel in een HSM, dan ondertekent de HSM ook de assertion.

**In de authorization server: niet zonder maatwerk.**
- Keycloak ondersteunt de JWT bearer grant sinds versie 26.6, maar vraagt een vooraf ingestelde *identity provider* per uitgever en een gekoppelde gebruiker als `sub`. Dat past niet bij een assertion van een client die de server niet vooraf kent, namens een zorgaanbieder. Duende IdentityServer gebruikt RFC 7523 alleen voor clientauthenticatie; de grant is een eigen *extension grant*.
- Geen van de producten haalt bij een tokenrequest een Client ID Metadata Document op. Keycloak ondersteunt het experimenteel en alleen bij een autorisatieverzoek; Duende IdentityServer ondersteunt het niet.

Het maatwerk zit bij het laden van de client, en in één eigen grant die de assertion en de machtiging controleert.

## Wat er moet gebeuren in Keycloak en Duende IdentityServer
Voor een paar Authorization Server producten, waarvan bekend is dat ze binnen de zorgsector gebruikt worden, is een inschatting gemaakt van de benodigde werkzaamheden voor bovenstaand voorstel. De selectie van Keycloak en Duende is arbitrair. Microsoft Entra ID en de Nuts node zijn ook onderzocht. Microsoft Entra ID lijkt diverse protocollen NIET te ondersteunen en is hiervoor niet aan te passen; er zijn beschrijvingen gevonden waarin proxies en/of andere AS-producten (waaronder Duende) gebruikt worden die een 'brugfunctie' naar Entra ID invullen. Entra ID is daarom niet opgenomen in onderstaande tabel. De Nuts node lijkt (ook) diverse protocollen NIET te ondersteunen. Echter, hier wordt de aanname gedaan dat de ontwikkelaars van de Nuts node in staat zijn om deze functionaliteit in te bouwen; iets dergelijks heeft men al gedaan in Proof-of-Concepts voor de Generieke Functies (zie [Nuts Knooppunt](https://github.com/nuts-foundation/nuts-knooppunt)). Ook de Nuts Node komt daarom niet terug in onderstaande tabel.  

| Onderdeel | Keycloak | Duende IdentityServer |
|---|---|---|
| **Document ophalen en client aanmaken** | Een eigen clientauthenticator in de clientauthenticatieflow van de realm (Java, intern uitbreidingspunt). Bij een `client_id` die een HTTPS-URL is, haalt hij het document op en maakt of werkt hij de client bij: de JWT bearer grant, X.509-clientauthenticatie, certificaatgebonden tokens. De eigen clientauthenticator controleert de DNS-naam uit `tls_client_auth_san_dns` in het certificaat; de ingebouwde X.509-authenticator vergelijkt alleen de *subject DN*. De ingebouwde CIMD-ondersteuning (feature `cimd`) werkt alleen bij een autorisatieverzoek, maar de logica voor het ophalen en controleren is mogelijk herbruikbaar. | Een eigen client store (`IClientStore`, gedocumenteerd uitbreidingspunt). Bij een `client_id` die een HTTPS-URL is, haalt hij het document op en bouwt hij de client: de JWT bearer grant en een *secret* met de DNS-naam uit `tls_client_auth_san_dns`, gecontroleerd door een eigen *secret validator* (`ISecretValidator`), omdat de ingebouwde typen de *subject DN* of de thumbprint vergelijken. Duende kan geladen clients cachen; de cacheduur volgt de afspraken. |
| **mTLS en gebonden token** | Ingebouwd voor de ingebouwde grants; de eigen grant (hieronder) past de binding toe zoals die grants dat doen. | Ingebouwd (`AddMutualTlsSecretValidators`); het token wordt automatisch aan het certificaat gebonden. |
| **JWT bearer grant** | Een eigen *grant type* (`OAuth2GrantType`, Java, intern uitbreidingspunt) voor `urn:ietf:params:oauth:grant-type:jwt-bearer`. De ingebouwde *JWT Authorization Grant* vraagt een identity provider per uitgever en een gekoppelde gebruiker, en past dus niet. Keycloak kiest één handler per `grant_type`; de eigen grant verwerkt assertions met `typ` `nl-gf-jwt-bearer-assertion+jwt`, en geeft andere door aan de ingebouwde grant of weigert ze. | Een eigen *extension grant* (`IExtensionGrantValidator`, gedocumenteerd uitbreidingspunt) voor `urn:ietf:params:oauth:grant-type:jwt-bearer`, die assertions met `typ` `nl-gf-jwt-bearer-assertion+jwt` verwerkt en andere weigert. |
| **Assertion controleren** | In de eigen grant: de handtekening met het certificaat in `x5c`, gelijk aan het clientcertificaat van de verbinding; `iss`, `aud` en `exp`. Gebruikte `jti`-waarden in de ingebouwde opslag voor eenmalige waarden (`SingleUseObjectProvider`). | In de eigen extension grant: hetzelfde, met een eigen opslag van gebruikte `jti`-waarden, bijvoorbeeld in de gedeelde cache. |
| **Machtiging controleren** | In de eigen grant: de handtekening, de UZI-keten met de intrekkingsstatus, de geldigheid, en `may_act.sub` tegen het certificaat van de verbinding. | In de eigen extension grant: hetzelfde. |
| **Context toetsen** | In de eigen grant: `sub` van de assertion tegen `sub` van de machtiging, en `purpose_of_use` tegen de machtigingscodes; zo nodig weigeren. | In de eigen extension grant: hetzelfde. |
| **Claims in het access token** | In de eigen grant, of met een eigen *protocol mapper*: de zorgaanbieder (`sub`), de dienstverlener (`act`) en de context uit de assertion. | In de eigen extension grant: het URA als *subject*, en `act` en de context uit de assertion als claims. |
| **Configuratie** | De eigen grant ingeschakeld voor de clients; de feature `cimd` is niet nodig als de eigen clientauthenticator het document zelf ophaalt. Vertrouwde CA's (PKIoverheid en UZI), intrekkingscontrole, beperking van uitgaande verbindingen. | Vertrouwde CA's, intrekkingscontrole, beperking van uitgaande verbindingen. |

De controle van de machtiging is in beide producten dezelfde logica. Een gedeelde, open-source verificatiecomponent beperkt het werk per product tot een dunne koppeling.

Aan de kant van de client is weinig bijzonders nodig: de beheerder haalt machtigingen op met OpenID4VCI en publiceert één document. De client controleert de machtiging van de bron in de *Protected Resource Metadata*, en ondertekent per tokenrequest een assertion met zijn eigen machtiging.

## Uitbreidbaarheid met andere attestaties
Andere attestaties kunnen naast de machtiging in de assertion mee, zonder dat de grant verandert. Voorbeelden zijn een verklaring van deelname aan een afsprakenstelsel, waarmee een bron vóór elke uitwisseling kan controleren of de dienstverlener is aangesloten (S3), de identiteitsattestatie uit [M6](#m6-identiteit-en-machtiging-als-twee-attestaties), of, voor toekomstige toepassingen, een attestatie die per verzoek verschilt, zoals een bewijs van de behandelrelatie.
- De assertion bevat daarvoor één object met per attestatietype een lijst van attestaties, met dezelfde indeling als in de *Protected Resource Metadata*. De machtiging is daarin het type `URA-signed-mandate`.
- Een attestatie noemt de dienstverlener met de identificatie uit zijn certificaat. De authorization server controleert de uitgever, en vergelijkt die identificatie met het certificaat, zoals bij `may_act.sub` in de machtiging. Attestatietypen die hij niet gebruikt, negeert hij.
- De client ondertekent de assertion, zodat vastligt welke attestaties hij bij welk verzoek heeft gepresenteerd. Een attestatie die aan een sleutel van de client gebonden is (`cnf`), zoals de machtiging bij [M1](#m1-vertrouwde-dienstverlener-geeft-machtigingen-uit), vraagt daarnaast een eigen *key binding*-JWT.
- De assertion gaat alleen naar de authorization server waarvoor zij bedoeld is (`aud`), zodat ook attestaties met persoonsgegevens erin passen, anders dan in openbare metadata.

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

## M7: Machtiging in de OAuth-metadata
De machtiging wordt uitgegeven zoals bij M1, maar zonder sleutel van de client. Zij staat als `software_statement` in een Client ID Metadata Document van de client, één per zorgaanbieder ([R5](#r5-client-id-metadata-document-voorstel)); de resource server van de bron publiceert de machtiging van zijn zorgaanbieder in zijn *Protected Resource Metadata*. Het tokenrequest is een gewone aanvraag met *client credentials*. Dit was het voorstel in versie 0.4.0; [M8](#m8-machtiging-in-een-jwt-bearer-grant-voorstel) vervangt het.
- *Implementatie:* de uitgifte zoals bij M1, zonder sleutelbinding. De beheerder van de client publiceert de documenten; de client is een standaard OAuth-client met mTLS. Elke authorization server heeft maatwerk nodig voor het laden van de client uit het document en de controle van de machtiging; een eigen grant is niet nodig.
- *Grootste risico's:* de machtiging is voor alle deelnemers leesbaar. Mist een authorization server de controle van `may_act.sub` tegen het certificaat, dan kan elke deelnemer haar gebruiken (S20). De TLS-sleutel is de enige sleutel die de machtigingen beschermt (S21). Daarnaast de risico's van het Client ID Metadata Document (zie R5), en die van M1 rond de sleutelhouder en de intrekking (S6, S7, S8, S1).

## M8: Machtiging in een JWT bearer grant (voorstel)
De machtiging wordt uitgegeven zoals bij M7, zonder sleutel van de client. De client vraagt een token aan met de JWT bearer grant ([RFC 7523](https://www.rfc-editor.org/rfc/rfc7523)), met een assertion die hij bij elk tokenrequest ondertekent met de sleutel van zijn certificaat, zoals bij UDAP het *software statement* ([R1](#r1-registratie-volgens-udap)). De assertion bevat de machtiging, ongewijzigd als SD-JWT VC, en de velden van het RAR-object uit de notitie: de zorgaanbieder (`sub`), het doel en de bron. Zij geldt voor één authorization server (`aud`), hoogstens 5 minuten en één keer (`jti`), en heeft het type `nl-gf-jwt-bearer-assertion+jwt` (`typ`). Andere attestaties, ook attestaties die per verzoek verschillen, kunnen in dezelfde assertion mee. De client heeft één Client ID Metadata Document per dienstverlener, zonder machtiging ([R5](#r5-client-id-metadata-document-voorstel)). De resource server van de bron publiceert de machtiging van zijn zorgaanbieder in zijn *Protected Resource Metadata*, zoals bij M7. Zie het [voorstel](#voorstel-machtiging-in-het-tokenrequest-en-de-protected-resource-metadata).
- *Implementatie:* de uitgifte zoals bij M1, zonder sleutelbinding. De beheerder van de client publiceert één document; de client ondertekent per verzoek een JWT met een JOSE-bibliotheek. Elke authorization server heeft maatwerk nodig voor het laden van de client uit het document, en een eigen grant die de assertion en de machtiging controleert en gebruikte `jti`-waarden bijhoudt ([Keycloak en Duende](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- *Grootste risico's:* zoals bij M7, maar kleiner, omdat de machtiging niet openbaar is. Alleen de authorization servers waar de client een token aanvraagt, zien haar; mist een andere authorization server de controle van `may_act.sub`, dan kan zo'n server haar daar gebruiken (S20). De TLS-sleutel is de enige sleutel die de machtigingen beschermt, en ondertekent ook de assertion (S21). Het verzoek is ondertekend, wat S4 deels ondervangt. Daarnaast de risico's van het Client ID Metadata Document, in mindere mate (zie R5), en die van M1 rond de sleutelhouder en de intrekking (S6, S7, S8, S1).

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
| **M8** Machtiging in een JWT bearer grant | Zoals M1 | Bij de dienstverlener, in de ondertekende assertion van het tokenrequest; die van de bron in de *Protected Resource Metadata* | Client ID Metadata Document van de dienstverlener; OCSP of CRL van het UZI-register | Zoals M1 |

Geen variant is dus volledig zonder centrale afhankelijkheid. Bij M1, M2 en M6 tot en met M8 staat geen register in de controle, maar wel de intrekkingsdienst van de certificaatuitgever van de ondertekenaar; zonder statuslijst vervalt een machtiging pas als zij verloopt. Bij M7 en M8 hangt de authorization server ook af van de bereikbaarheid van het Client ID Metadata Document; bij M8 is dat één document per dienstverlener. M3 hangt af van de synchronisatie met de LRZa, M4 en M5 daarnaast van de intrekkingsdienst. In alle varianten controleren de authorization server en de resource server daarnaast de intrekkingsstatus van het clientcertificaat ([overige technische keuzes](#overige-technische-keuzes)).

# Bijlage B: Opties voor clientregistratie
Alle opties gebruiken dezelfde eisen aan certificaten: alleen servercertificaten van een vastgelegde lijst van uitgevende CA's (PKIoverheid en UZI), met de *extended key usage* `clientAuth`, en geen persoonsgebonden certificaten. De beveiligingsreview gaat uit van R2a, en beoordeelt R5 als onderdeel van M7; R1, R2b, R3a, R3b en R4 zijn daar niet beoordeeld.

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

## R3a: Registratie met een eigen client-id
Een vereenvoudigde vorm van R1, zonder *software statement*. De client registreert zich volgens RFC 7591 bij een authorization server die hem nog niet kent, met een `client_id` die hij zelf afleidt uit zijn certificaat, zoals bij R2a. Het voordeel: de client kent zijn `client_id` vooraf, heeft bij elke authorization server dezelfde, en hoeft niets te bewaren.
- *Implementatie:* RFC 7591 kent geen eigen client-id: de authorization server kiest de `client_id`, en het registratieverzoek heeft er geen veld voor. Het OIDC-registratie-endpoint van Keycloak weigert een verzoek met een `client_id`; alleen het eigen registratieformaat van Keycloak accepteert er een. In Duende IdentityServer moet de generatie van client-id's worden aangepast. Een client moet dus per product een ander verzoek doen, of het GIS schrijft een uitbreiding voor die elk product moet bouwen. Daarnaast moet de server controleren of de gevraagde `client_id` bij het certificaat past; dat is de profielregel van R2a. De authorization server heeft zo twee uitbreidingen nodig in plaats van één, en elke client bouwt de registratie en de foutafhandeling. Het is daarmee meer werk dan R2a, zonder een standaard te worden.
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview. Geen van de producten controleert bij de registratie of de gevraagde `client_id` bij het certificaat van de verbinding past. Zonder die controle kan een deelnemer de `client_id` van een ander vooraf registreren met zijn eigen certificaat, en die client zo buitensluiten.

## R3b: Idempotente registratie
Zoals R3a, maar de authorization server kent de `client_id` toe, zoals RFC 7591 voorschrijft, en geeft bij een nieuwe registratie met hetzelfde certificaat de bestaande client terug. RFC 7591 (paragraaf 3.2.1) staat toe dat een server dezelfde `client_id` aan meerdere instanties van een client uitgeeft, maar beschrijft niet wanneer twee registraties dezelfde client zijn. Het voordeel boven R3a: de registratie volgt RFC 7591. Het voordeel boven R4: de client kan zich na een herstart opnieuw registreren, en krijgt dan dezelfde `client_id`.
- *Implementatie:* niet ondersteund. Keycloak en Duende IdentityServer maken bij elke registratie een nieuwe client met een nieuwe `client_id`. Een bestaande client herkennen vraagt in elk product maatwerk in het registratie-endpoint, inclusief het voorkomen van dubbele clients bij gelijktijdige registraties. De server moet bepalen wanneer twee registraties 'hetzelfde certificaat' hebben. Vergelijkt hij de *subject DN*, dan levert elke certificaatvernieuwing met een andere DN een nieuwe client op, en blijft de oude achter. Vergelijkt hij het KvK-nummer, de OIN of het URA, dan is het de afleidingsregel van R2a, met een registratiestap ervoor. RFC 8705 vraagt de `client_id` in het tokenrequest, dus de client bewaart die alsnog, of registreert zich opnieuw vóór elk tokenrequest of na elke herstart.
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview. Of de server bij een nieuwe registratie van dezelfde client een nieuw *registration access token* uitgeeft, en wat er dan met het oude gebeurt, is niet vastgelegd.

## R4: Registratie met een toegekende client-id
Een vereenvoudigde vorm van R1, zonder *software statement*, waarin de authorization server de `client_id` toekent, zoals RFC 7591 voorschrijft. De client registreert zich over mTLS bij een server die hem nog niet kent, met `tls_client_auth` en de *subject DN* van zijn certificaat. Hij bewaart per server de `client_id`, en eventueel een *registration access token* om de registratie later bij te werken ([RFC 7592](https://www.rfc-editor.org/rfc/rfc7592)).
- *Implementatie:* in Keycloak configuratie van het registratiebeleid; in Duende IdentityServer een kleine aanpassing van de registratievoorziening (C#). Elke client bouwt de registratie, het bewaren en bijwerken daarvan, en de foutafhandeling. Niet mogelijk in Microsoft Entra ID en de Nuts-node.
- *Grootste risico's:* niet beoordeeld in de beveiligingsreview. Iedere houder van een geldig certificaat kan clients registreren, dus de server moet het aantal registraties beperken. Wie een *registration access token* bemachtigt, kan de registratie wijzigen of verwijderen en de client zo buitensluiten, maar niet namens de dienstverlener handelen.

## R5: Client ID Metadata Document (voorstel)
Er is geen registratie: de `client_id` is een HTTPS-URL op een domein van de beheerder van de client, waar de clientmetadata wordt gepubliceerd ([OAuth Client ID Metadata Document](https://datatracker.ietf.org/doc/draft-ietf-oauth-client-id-metadata-document/), IETF-draft). In open netwerken heeft het de voorkeur boven registratie volgens RFC 7591 ([Parecki](https://aaronparecki.com/2026/07/29/19/cimd-over-dcr)). De authorization server haalt het document op en bewaart het volgens de cache-headers. De host van de `client_id` staat als DNS-naam in het clientcertificaat. Bij M8 is er één document per dienstverlener; bij M7 één per zorgaanbieder, met de machtiging erin.
- *Implementatie:* de client publiceert één document per dienstverlener (M8), of één per zorgaanbieder (M7). In de onderzochte producten is de ondersteuning experimenteel (Keycloak, alleen bij autorisatieverzoeken) of afwezig (Duende IdentityServer, Nuts-node), zodat het laden van de client en de controle van de host maatwerk zijn ([Keycloak en Duende](#wat-er-moet-gebeuren-in-keycloak-en-duende-identityserver)).
- *Grootste risico's:* de beheerder van de client bepaalt het document en de URL zelf (S23). Het ophalen kan worden misbruikt voor *server-side request forgery* (S24), en het domein van de client komt in het kritieke pad van het tokenrequest (S25). De kwetsbare vergelijking op *subject DN* (S26) vervalt met `tls_client_auth_san_dns`. Met de machtiging in het document komen daar S20 en S21 bij (zie M7). Bij M8 wordt het ene document zelden opgehaald, wat S24 en S25 beperkt.

# Bijlage C: Beveiligingsrisico's
De risico's en hun ernst komen uit een beveiligingsreview van de varianten. Die review is met een AI-assistent opgesteld en is nog niet door beveiligingsexperts beoordeeld; de ernst is een eerste inschatting. De kolom *Voorstel* geeft aan of het risico geldt voor het [voorstel](#voorstel-machtiging-in-het-tokenrequest-en-de-protected-resource-metadata) (M8 met R5).

| Nr. | Risico | Ernst | Voorstel |
|---|---|---|---|
| S1 | Een machtiging kan niet worden ingetrokken voordat zij verloopt. | Middel bij 3 maanden; hoog bij 2 jaar, laag bij minuten | Ja; bewuste keuze ([GF-AUTN-ADR-5](#gf-autn-adr-5-intrekken-of-laten-verlopen)) |
| S2 | Het access token is niet expliciet aan de bronhoudende zorgaanbieder gebonden: bedient een authorization server meerdere zorgaanbieders, dan kan een token voor de ene bij de andere worden gebruikt. | Middel | Ja |
| S3 | Deelname aan het afsprakenstelsel wordt niet vóór elke uitwisseling gecontroleerd (NEN 7512, 6.1.11). | Middel | Ja |
| S4 | De uitwisseling wordt niet ondertekend zoals NEN 7512, 6.2.7, beschrijft. | Afhankelijk van de risicoklasse | Deels; het tokenrequest is ondertekend, de gegevens niet |
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
| S20 | Een gepubliceerde machtiging kan door elke deelnemer worden gebruikt als een authorization server de controle van `may_act.sub` tegen het certificaat mist. | Hoog | Deels; de machtiging is niet openbaar, maar de authorization servers waar de client een token aanvraagt, zien haar |
| S21 | De sleutel van het clientcertificaat is de enige sleutel die de machtigingen beschermt. | Middel | Ja; deze sleutel ondertekent ook de assertion |
| S22 | De afleiding van de client-id uit het certificaat is niet volledig vastgelegd, en alle certificaten van een organisatie leveren dezelfde client-id. | Laag | Deels; de `client_id` is de URL van het document, maar `may_act.sub` is voor alle certificaten van een organisatie gelijk |
| S23 | Het Client ID Metadata Document en de URL ervan staan onder controle van de beheerder van de client. | Laag | Ja |
| S24 | Het ophalen van clientmetadata kan worden misbruikt voor *server-side request forgery*. | Laag | Ja, beperkt; ophalen pas na controle van certificaat en host, en zelden |
| S25 | Het domein van de client komt in het kritieke pad van het tokenrequest. | Laag | Ja, beperkt; één document per dienstverlener, met een cache tot 24 uur |
| S26 | De vergelijking op *subject DN* is kwetsbaar door verschillen in schrijfwijze en bij certificaatvernieuwing. | Laag | Nee; `tls_client_auth_san_dns` |
