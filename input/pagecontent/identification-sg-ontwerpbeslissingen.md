**Concept** · 25 november 2026

Dit document legt de ontwerpbeslissingen vast voor de identificatie en koppeling van deelnemers bij secundair gebruik van gezondheidsgegevens. Het is de basis voor [GF Identificatie voor Secundair Gebruik](./identification-sg.html) (hierna: de SG-pagina), die de beslissingen uitwerkt in communicatiepatronen. Per beslissing staan de vraag, de opties, het besluit, de reden, de toets aan de EHDS en de gevolgen. Elke beslissing is getoetst aan de tekst van de EHDS ([Verordening (EU) 2025/327](https://eur-lex.europa.eu/eli/reg/2025/327/oj)) zelf. Waar richtlijnen (TEHDAS2), afsprakenstelsels (Health-RI) of de praktijk (ZorgTTP) eisen toevoegen of de verordening strikter uitleggen, staat dat apart. De bijlagen beschrijven de onderzochte referentiemodellen en de bronnen, en vatten voor wetgevers samen welke regelgeving het ontwerp vraagt ([bijlage C](#bijlage-c-samenvatting-voor-wetgevers)).
{: .ig-lead}

> **Let op:** Dit is een concept. De [aannames](#aannames) zijn nog niet juridisch bevestigd. Wijzigt een beslissing, dan wordt de SG-pagina daarop aangepast.

# Documenthistorie

| Versie | Status | Datum | Auteur | Wijziging |
|--------|--------|-------|--------|-----------|
| 0.1.0 | Concept | 25 november 2026 | VWS | eerste versie: ontwerpbeslissingen opgesteld, vergeleken met ZorgTTP, Health-RI, TEHDAS2, BSNk en PEP, en getoetst aan de EHDS |

# Inhoudsopgave

- [Aanleiding](#aanleiding)
- [Uitgangspunten](#uitgangspunten)
- [Aannames](#aannames)
- [Begrippen](#begrippen)
- [Toetsing aan de EHDS](#toetsing-aan-de-ehds)
- [Ontwerpbeslissingen](#ontwerpbeslissingen)
  - [GF-ID-ADR-1: Waarmee wordt gekoppeld?](#gf-id-adr-1-waarmee-wordt-gekoppeld)
  - [GF-ID-ADR-2: Vooraf registreren of koppelen bij uitgifte?](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte)
  - [GF-ID-ADR-3: Hoe verkrijgt een bronhouder zonder BSN een pseudo-BSN?](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn)
  - [GF-ID-ADR-4: Wie is verantwoordelijk voor de pseudonimisatiedienst?](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst)
  - [GF-ID-ADR-5: Centraal, lokaal of blind pseudonimiseren?](#gf-id-adr-5-centraal-lokaal-of-blind-pseudonimiseren)
  - [GF-ID-ADR-6: Versleuteling of koppeltabel?](#gf-id-adr-6-versleuteling-of-koppeltabel)
  - [GF-ID-ADR-7: Omkeerbaar of niet-omkeerbaar?](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar)
  - [GF-ID-ADR-8: Voor wie geldt een pseudoniem?](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem)
  - [GF-ID-ADR-9: Wie re-identificeert bij een nevenbevinding?](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding)
  - [GF-ID-ADR-10: Waar en wanneer vindt de zeggenschapscheck plaats?](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats)
- [Bijlage A: Referentiemodellen](#bijlage-a-referentiemodellen)
  - [A.1 ZorgTTP](#a1-zorgttp)
  - [A.2 Health-RI](#a2-health-ri)
  - [A.3 TEHDAS2](#a3-tehdas2)
  - [A.4 BSNk polymorfe pseudonimisering](#a4-bsnk-polymorfe-pseudonimisering)
  - [A.5 PEP](#a5-pep)
  - [A.6 Andere landen](#a6-andere-landen)
- [Bijlage B: Bronnen](#bijlage-b-bronnen)
- [Bijlage C: Samenvatting voor wetgevers](#bijlage-c-samenvatting-voor-wetgevers)
  - [C.1 Begrippen](#c1-begrippen)
  - [C.2 Wat de verordening al regelt](#c2-wat-de-verordening-al-regelt)
  - [C.3 Wat moet worden geregeld](#c3-wat-moet-worden-geregeld)
  - [C.4 Bestaande regelgeving die wordt geraakt](#c4-bestaande-regelgeving-die-wordt-geraakt)
  - [C.5 Open juridische vragen](#c5-open-juridische-vragen)

# Aanleiding

Bij secundair gebruik moeten gegevens van dezelfde deelnemer uit verschillende bronnen betrouwbaar worden gekoppeld, ook bij bronhouders die het BSN niet mogen verwerken. Daarnaast moeten bronhouders de opt-out van de deelnemer kunnen respecteren, de deelnemer kunnen terugvinden na een nevenbevinding, en de deelnemer kunnen lokaliseren. Hoe dat kan, hangt af van een reeks samenhangende keuzes: het koppelkenmerk, wie pseudonimiseert, of dat vooraf of bij uitgifte gebeurt, of pseudoniemen omkeerbaar zijn, en voor wie ze gelden.

Voor die keuzes bestaan alternatieven die in Nederland en Europa al worden gebruikt of uitgewerkt. ZorgTTP pseudonimiseert pas bij uitlevering, met software bij de bronhouder en een tweede stap bij de vertrouwde derde partij. Health-RI pleit voor een versleuteld BSN als koppelsleutel. TEHDAS2 heeft richtlijnen voor HDAB's opgesteld over pseudonimisering, opt-out en nevenbevindingen. Logius (BSNk) en de Radboud Universiteit (PEP) gebruiken polymorfe pseudonimisering, waarbij de centrale dienst het identificerende gegeven niet ziet. Dit document weegt die alternatieven per beslissing.

# Uitgangspunten

- **De EHDS is de toetssteen.** Elke beslissing is getoetst aan de tekst van de verordening. De richtlijnen van TEHDAS2, het afsprakenstelsel van Health-RI en de praktijk van ZorgTTP zijn bronnen van opties en argumenten, geen eisen. Waar zij verder gaan dan de EHDS, staat dat in de toets.
- **Zo weinig mogelijk BSN-verwerking.** Zo weinig mogelijk partijen verwerken het BSN. De HDAB, de gegevensgebruiker en de niet-BSN-verwerkende bronhouder zien het nooit.
- **Dataminimalisatie bij de bronhouder.** Een bronhouder legt niet meer persoonskenmerken vast dan hij voor zijn eigen doel nodig heeft (AVG, artikel 5, lid 1, onder c). Het koppelen mag hem niet dwingen naam, geboortedatum of adres te bewaren.
- **Betrouwbaar koppelen.** Gegevens van dezelfde deelnemer uit verschillende bronnen, waaronder de zeventien EHDS-categorieën (artikel 51), moeten betrouwbaar te koppelen zijn. Datasets moeten zo volledig mogelijk zijn (overweging 53).
- **Bestaande voorzieningen hergebruiken.** Waar mogelijk worden bestaande voorzieningen hergebruikt, zoals DigiD, de SBV-Z en de BRP, BSNk en de dienstverlening van ZorgTTP.

# Aannames

1. Een pseudo-BSN wordt juridisch beschouwd als een nummer, zolang de houder er niet zelfstandig mee kan her-identificeren. Het gebruik ervan vraagt geen aanpassing van wetgeving.
2. Het verwerken van het BSN tot pseudo-BSN, of andersom, vraagt voor SG wel een aanpassing van wetgeving. Dat geldt ook voor de plicht van een bronhouder om een pseudo-BSN te registreren. Die plicht kan niet alleen op de opt-out steunen (artikel 71, lid 8), en moet ook steunen op koppelen en op nevenbevindingen ([GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte)).
3. Het zeggenschapsregister en de [Lokalisatiedienst](./localization.html) bevatten alleen pseudoniemen.

Door aanname 2 is van belang welke partijen het BSN verwerken, in beide richtingen. De beslissingen houden die groep daarom zo klein mogelijk ([uitgangspunten](#uitgangspunten)).

# Begrippen

Deze begrippen gelden voor dit document en voor de [SG-pagina](./identification-sg.html).

| Begrip | Betekenis |
|---|---|
| BSN | Burgerservicenummer. |
| Pseudo-BSN | Een omkeerbaar pseudoniem dat de PD van het BSN maakt voor één ontvanger (organisatie en scope). Elke ontvanger krijgt voor dezelfde deelnemer een ander pseudo-BSN. De ontvanger staat tussen haakjes, bijvoorbeeld pseudo-BSN (bronhouder) of pseudo-BSN (SPE). Alleen de PD kan een pseudo-BSN terugzetten naar het BSN. |
| Secundair gebruik (SG) | Gebruik van gezondheidsgegevens voor andere doelen dan de zorgverlening aan de deelnemer, zoals wetenschappelijk onderzoek. |
| Deelnemer | De burger of patiënt van wie gegevens voor SG worden gebruikt. |
| Bronhouder | Een partij die gegevens van deelnemers beheert. Een BSN-verwerkende bronhouder mag het BSN verwerken, zoals een zorgaanbieder. Een niet-BSN-verwerkende bronhouder mag dat niet, zoals een wellness-app of een onderzoekscohort, en gebruikt bij SG een pseudo-BSN. |
| Gegevensgebruiker | Een partij die gegevens voor SG gebruikt, zoals een onderzoeker. De gegevensgebruiker verwerkt de gegevens in een SPE. |
| Tussenpartij | Een partij die identificerende kenmerken van deelnemers uit meerdere bronnen ontvangt om die bronnen te koppelen. |
| Gegevensvergunning | De vergunning waarmee de HDAB een gegevensgebruiker toegang geeft tot gegevens in een SPE (EHDS artikel 68, *data permit*). |
| Datauitgifte | Het leveren van gegevens door een bronhouder aan de SPE, op verzoek van de HDAB na het verlenen van een gegevensvergunning (EHDS artikel 68, lid 7). |
| Re-identificatie | Het terugvinden van de deelnemer bij een pseudo-BSN, bijvoorbeeld om de deelnemer te informeren over een nevenbevinding. |
| Nevenbevinding | Een bevinding over een deelnemer die de gegevensgebruiker bij SG doet en die voor de gezondheid van de deelnemer van belang is. |
| AD | Een vertrouwde authenticatiedienst. Ondersteunt authenticatie van de burger via DigiD en levert de bronhouder een pseudo-BSN in plaats van het BSN. |
| BD | Een vertrouwde BSN-dienst. Zoekt bij persoonskenmerken het BSN op of controleert een BSN, en levert de bronhouder een pseudo-BSN in plaats van het BSN. |
| PD | Een vertrouwde pseudonimisatiedienst. Maakt van een BSN een pseudo-BSN, zet een pseudo-BSN om naar een pseudoniem voor een andere ontvanger, en zet een pseudo-BSN terug naar het BSN. |
| Vertrouwde derde partij (TTP) | Een partij die pseudonimiseert en de informatie bewaart om de pseudonimisering terug te draaien, los van de partijen die de gegevens leveren of gebruiken. De EHDS noemt haar in artikel 66, lid 3. |
| Zeggenschapsregister (ZR) | Het register van GF Zeggenschap waarin de burger via de burgerinterface zijn keuzes vastlegt, waaronder de opt-out voor secundair gebruik (EHDS artikel 71) en het verzoek om niet in kennis te worden gesteld van nevenbevindingen (recht op niet-weten, EHDS artikel 58, lid 3). |
| Zeggenschapscheck | De controle door een bronhouder in het zeggenschapsregister: heeft de deelnemer een opt-out voor secundair gebruik, of heeft hij verzocht om niet in kennis te worden gesteld van nevenbevindingen? |
| Burgerinterface | De omgeving waarin de burger zijn keuzes in het zeggenschapsregister vastlegt en wijzigt, zoals een webportaal of een Dienst voor Toegang. |
| Dienst voor Toegang (DvT) | Een dienst waarmee de burger toegang krijgt tot zijn gezondheidsgegevens en zijn keuzes voor zeggenschap instelt. |
| Lokalisatiedienst | De dienst die per deelnemer bijhoudt welke bronhouders gegevens hebben. Zie [GF Localization](./localization.html). |
| HDAB | Health Data Access Body. Verleent onder de European Health Data Space (EHDS) gegevensvergunningen voor SG, en vraagt daarna de gegevens op bij de bronhouders. |
| SPE | Secure Processing Environment, de beveiligde verwerkingsomgeving (EHDS artikel 73). De gegevensgebruiker krijgt alleen in de SPE toegang tot uitgegeven gegevens. |
| Deterministisch koppelen | Koppelen op een kenmerk dat per persoon uniek en gelijk is in alle bronnen, zoals het BSN of een daarvan afgeleid pseudoniem. Een record koppelt wel of niet. |
| Probabilistisch koppelen | Koppelen op een combinatie van kenmerken die niet uniek is, zoals naam, geboortedatum en geslacht. Een koppeling heeft een waarschijnlijkheid; er zijn foute en gemiste koppelingen. |
| Koppeltabel | Een opgeslagen tabel die identificerende gegevens aan pseudoniemen koppelt. Het alternatief is een pseudoniem dat met een sleutel wordt berekend. |
| Polymorfe pseudonimisering | Een techniek waarbij een centrale dienst een versleuteld pseudoniem omzet naar een pseudoniem voor een bepaalde ontvanger, zonder het onderliggende gegeven te zien. Toegepast in BSNk ([A.4](#a4-bsnk-polymorfe-pseudonimisering)) en PEP ([A.5](#a5-pep)). |
| PVM, CMT en DRM | De drie modules van de pseudonimisatieketen van ZorgTTP: de *Privacy- en Verzend Module* bij de bronhouder, de *Centrale Module TTP* bij ZorgTTP en de *Doel- en Receive Module* bij de afnemer ([A.1](#a1-zorgttp)). |
| Pre-pseudoniem | Het resultaat van de eerste stap in de PVM: identificerende gegevens die bij de bronhouder zijn omgezet, en die ZorgTTP in een tweede stap omzet naar het definitieve pseudoniem. |

# Toetsing aan de EHDS

De EHDS regelt het secundair gebruik op het niveau van rollen en waarborgen. De verordening schrijft geen koppelkenmerk, techniek of architectuur voor. De tabel geeft de bepalingen die de beslissingen raken.

| Bepaling | Wat de EHDS zegt | Raakt |
|---|---|---|
| Artikel 2, lid 2, onder t | Een gezondheidsgegevenshouder (bronhouder) is onder meer een organisatie in de zorg, een ontwikkelaar van wellness-apps, of een partij die onderzoek doet in de zorg. | [GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte), [GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn) |
| Overweging 53 | Datasets voor secundair gebruik moeten zo volledig mogelijk zijn. Secundair gebruik is gebaseerd op gepseudonimiseerde of geanonimiseerde gegevens. | [GF-ID-ADR-1](#gf-id-adr-1-waarmee-wordt-gekoppeld) |
| Overweging 72 | Pseudonimiseren *"as early as possible in the process of making data available"*. Dat kan door de HDAB of door de bronhouder, die het mogen uitbesteden aan verwerkers. De HDAB gebruikt *"state-of-the-art"* technieken, die *"should be further developed"*. | [GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte), [GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst), [GF-ID-ADR-5](#gf-id-adr-5-centraal-lokaal-of-blind-pseudonimiseren), [GF-ID-ADR-6](#gf-id-adr-6-versleuteling-of-koppeltabel) |
| Overweging 79 | De bronhouder is verwerkingsverantwoordelijke voor de verstrekking aan de HDAB; de HDAB voor het voorbereiden en beschikbaar stellen; de gegevensgebruiker voor de verwerking in de SPE. | [GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst) |
| Artikel 55, lid 3 | Binnen de HDAB is er functiescheiding tussen onder meer het beoordelen van aanvragen, het voorbereiden van datasets (zoals pseudonimisering) en het beschikbaar stellen in de SPE. | [GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst) |
| Artikel 57, lid 1, onder b | De HDAB ontvangt, combineert, bereidt voor en pseudonimiseert of anonimiseert de gegevens. | [GF-ID-ADR-1](#gf-id-adr-1-waarmee-wordt-gekoppeld), [GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst) |
| Artikel 58, lid 3, en overweging 67 | De HDAB informeert de bronhouder over een nevenbevinding. De bronhouder informeert de persoon of diens behandelaar, *"under the conditions laid down by national law"*. De persoon heeft het recht te verzoeken om niet in kennis te worden gesteld (recht op niet-weten). | [GF-ID-ADR-7](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar), [GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding), [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats) |
| Artikel 60, lid 1 en 2, en artikel 68, lid 7 | Na de vergunning vraagt de HDAB de gegevens op; de bronhouder levert binnen drie maanden, overeenkomstig de vergunning. | [GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte), [GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem), [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats) |
| Artikel 61, lid 3 en 5 | De gegevensgebruiker mag niet re-identificeren, en meldt een nevenbevinding aan de HDAB. | [GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem), [GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding) |
| Artikel 66, lid 3 | De HDAB stelt gegevens gepseudonimiseerd beschikbaar als anonieme gegevens niet volstaan. *"The information necessary to reverse the pseudonymisation shall be available only to the health data access body or an entity that acts as a trusted third party in accordance with national law."* | [GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst), [GF-ID-ADR-7](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar), [GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding) |
| Artikel 68, lid 10 | De vergunning noemt de categorieën, de bronnen en of de gegevens gepseudonimiseerd zijn. | [GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem) |
| Artikel 71, lid 1 tot en met 3 | Een persoon kan altijd een opt-out vastleggen; de lidstaat zorgt voor het mechanisme. Na een opt-out worden zijn gegevens, *"where … [they] can be identified in a dataset"*, niet beschikbaar gesteld onder vergunningen die *ná* de opt-out zijn verleend. Eerdere vergunningen blijven gelden. | [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats) |
| Artikel 71, lid 8 | Een bronhouder die de persoon voor zijn doelen niet hoeft te identificeren, is niet verplicht extra gegevens te bewaren, te verkrijgen of te verwerken alleen om de opt-out toe te passen. | [GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte), [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats) |
| Artikel 73, lid 2 | De bronhouder levert de gegevens in de SPE aan, in het formaat uit de vergunning. | [GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem) |

De EHDS regelt **niet**:
- welk kenmerk wordt gebruikt om te koppelen, en of een nationaal identificatienummer wordt gebruikt;
- of pseudoniemen omkeerbaar moeten zijn, behalve dat de informatie om terug te draaien alleen bij de HDAB of een TTP mag liggen;
- of een pseudoniem per vergunning, per ontvanger of landelijk geldt;
- hoe en waar de opt-out wordt geregistreerd en gecontroleerd;
- wie beslist over re-identificatie, en hoe de bronhouder de persoon terugvindt.

Dit zijn nationale keuzes. TEHDAS2 geeft er aanbevelingen voor; die staan per beslissing, met het onderscheid tussen eis en aanbeveling ([A.3](#a3-tehdas2)).

# Ontwerpbeslissingen

Hieronder staan tien ontwerpbeslissingen (*architecture decision records*). Elke beslissing beschrijft de vraag, de opties, het besluit, de reden, de toets aan de EHDS en de gevolgen. De referentiemodellen achter de opties staan in [bijlage A](#bijlage-a-referentiemodellen). De tabel vat de besluiten samen.

| ADR | Vraag | Besluit | EHDS |
|---|---|---|---|
| [GF-ID-ADR-1](#gf-id-adr-1-waarmee-wordt-gekoppeld) | Waarmee wordt gekoppeld? | Een pseudo-BSN, afgeleid van het BSN | Laat de keuze vrij |
| [GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte) | Vooraf registreren of koppelen bij uitgifte? | Vooraf: elke niet-BSN-verwerkende bronhouder registreert een eigen pseudo-BSN; voor bestaande datasets vraagt hij het pseudo-BSN bij de uitgifte op via de BD | Laat de keuze vrij; de verplichting kan niet alleen op de opt-out steunen (art. 71, lid 8) |
| [GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn) | Hoe verkrijgt een bronhouder zonder BSN een pseudo-BSN? | Bij voorkeur via DigiD en de AD, zodat de bronhouder weinig of geen persoonskenmerken hoeft vast te leggen; anders via de BD met persoonskenmerken | Regelt dit niet |
| [GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst) | Wie is verantwoordelijk voor de pseudonimisatiedienst? | Eén TTP, los van de HDAB, aangewezen bij nationale wet | Vereist een TTP *"in accordance with national law"* (art. 66, lid 3) |
| [GF-ID-ADR-5](#gf-id-adr-5-centraal-lokaal-of-blind-pseudonimiseren) | Centraal, lokaal of blind pseudonimiseren? | Centraal; de PD ziet het BSN | Vraagt alleen *state-of-the-art* (overweging 72) |
| [GF-ID-ADR-6](#gf-id-adr-6-versleuteling-of-koppeltabel) | Versleuteling of koppeltabel? | Deterministische versleuteling, zonder koppeltabel | Regelt dit niet |
| [GF-ID-ADR-7](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar) | Omkeerbaar of niet-omkeerbaar? | Het pseudo-BSN is omkeerbaar; de Lokalisatiedienst en het zeggenschapsregister krijgen een niet-omkeerbaar pseudoniem | Vereist niet, maar art. 58, lid 3, is zonder weg terug niet uitvoerbaar |
| [GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem) | Voor wie geldt een pseudoniem? | Per ontvanger en scope; voor de SPE per gegevensvergunning; voor de Lokalisatiedienst en het zeggenschapsregister hetzelfde pseudoniem als in het primair gebruik | Regelt dit niet |
| [GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding) | Wie re-identificeert bij een nevenbevinding? | De bronhouder, via de PD, met een verklaring van de HDAB; de bronhouder beslist over het informeren | De bronhouder informeert (art. 58, lid 3); wie beslist, is nationaal |
| [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats) | Waar en wanneer vindt de zeggenschapscheck plaats? | Bij de bronhouder, per deelnemer, op het moment van levering; het register legt ook het verzoek vast om niet in kennis te worden gesteld | Strenger dan art. 71, lid 3, dat uitgaat van de datum van de vergunning |

## GF-ID-ADR-1: Waarmee wordt gekoppeld?

**Vraag.** Met welk kenmerk koppelen bronhouders, het zeggenschapsregister, de Lokalisatiedienst en de SPE gegevens van dezelfde deelnemer?

**Opties.**
- *Persoonskenmerken, probabilistisch:* naam, geboortedatum, geslacht en voorletters, eventueel met postcode. Dit is de huidige praktijk voor onderzoek ([A.1](#a1-zorgttp)). Health-RI schat de nauwkeurigheid van de huidige koppeling op persoonskenmerken op ongeveer 80% ([A.2](#a2-health-ri)).
- *Een betekenisloos nummer, zoals een UUID.* Het verschil zit in de reikwijdte van het nummer:
  - *Per bronhouder.* Elke bronhouder geeft de deelnemer een eigen nummer, bijvoorbeeld een UUID dat hij met de gegevens aan een onderzoeker meegeeft. Daarmee vindt de bronhouder zijn eigen record terug, bijvoorbeeld bij een nevenbevinding. Nummers van verschillende bronhouders zijn niet te koppelen. Daarvoor bewaart een tussenpartij de nummers met de persoonskenmerken uit alle bronnen, en matcht zij die. De koppelkwaliteit is dan die van persoonskenmerken, en de tussenpartij houdt een verzameling bij van wie bij welke bron bekend is.
  - *Gedeeld door alle bronhouders.* Eén nummer per persoon, zoals de Origin ID in PEP ([A.5](#a5-pep)) of het RIN-nummer van het CBS ([A.6](#a6-andere-landen)). Een partij moet het nummer uitgeven, en moet de persoon daarbij herkennen. PEP doet dat bij de registratie in één onderzoek; het CBS leidt het RIN af van het BSN en gebruikt het alleen intern.
- *Een van het BSN afgeleid pseudoniem:* een versleuteld BSN of pseudo-BSN, waarmee deterministisch wordt gekoppeld. Ook het pseudo-BSN (bronhouder) is een nummer per bronhouder. Anders dan een UUID kan de PD het omzetten naar het pseudoniem van een andere ontvanger, omdat het van het BSN is afgeleid; een tussenpartij is dan niet nodig.

**Besluit.** Een pseudo-BSN, dat de PD van het BSN afleidt.

**Waarom.**
- *Uniek en volledig.* Vrijwel iedere ingezetene heeft één BSN. Een naamswijziging of tikfout leidt niet tot een gemiste of foute koppeling, zoals bij persoonskenmerken.
- *Al in gebruik.* BSN-verwerkende bronhouders hebben het BSN uit het zorgproces en controleren het via de SBV-Z of de BRP.
- *Aansluiting bij Health-RI.* Health-RI vergeleek acht opties, waaronder het RIN-nummer, het verzekerdennummer en een nieuw nummer, en pleit voor een versleuteld BSN als koppelsleutel ([A.2](#a2-health-ri)).
- *Geen nieuwe uitgifte en geen tussenpartij.* Een gedeeld betekenisloos nummer vraagt een eigen uitgifte aan alle ingezetenen en alle bronhouders, en bij die uitgifte moet de persoon toch worden herkend, met het BSN of met persoonskenmerken. Een nummer per bronhouder koppelt alleen via een tussenpartij, met de koppelkwaliteit van persoonskenmerken.
- *Dataminimalisatie.* Met een pseudo-BSN hoeft een bronhouder geen persoonskenmerken te bewaren om te kunnen koppelen. Bij koppelen op persoonskenmerken moet hij die juist bewaren, en liefst zo volledig mogelijk, omdat meer kenmerken de kans op een match vergroten.

**Toets aan de EHDS.** De EHDS schrijft geen koppelkenmerk voor en noemt geen nationaal identificatienummer. Zij vraagt datasets die zo volledig mogelijk zijn (overweging 53) en geeft de HDAB de taak gegevens te combineren (artikel 57, lid 1, onder b). De voorkeur voor deterministisch koppelen in de conceptrichtlijn van TEHDAS2 over koppelen (M7.5) is een aanbeveling.

**Gevolgen.**
- Het BSN voor SG verwerken vraagt een aanpassing van wetgeving ([aanname 2](#aannames)).
- Wie geen BSN heeft, kan niet zo worden gekoppeld. Voor die groep blijven persoonskenmerken nodig.
- Verandert het BSN van een persoon, wat zelden voorkomt, dan verandert ook het pseudo-BSN ([GF-ID-ADR-6](#gf-id-adr-6-versleuteling-of-koppeltabel)). Dat gebeurt bijvoorbeeld als een gemeente of de RNI bij een inschrijving niet met zekerheid kan vaststellen dat iemand al een BSN heeft.

## GF-ID-ADR-2: Vooraf registreren of koppelen bij uitgifte?

**Vraag.** Moet een niet-BSN-verwerkende bronhouder vooraf, per deelnemer, een eigen pseudo-BSN verkrijgen en registreren, of kan zij pas bij uitgifte pseudonimiseren en laten koppelen, zoals in de pseudonimisatieketen van ZorgTTP?

**Opties.**
- *A. Vooraf registreren.* Elke niet-BSN-verwerkende bronhouder verkrijgt bij de inschrijving van een deelnemer een eigen pseudo-BSN (bronhouder) en bewaart dat.
- *B. Pseudonimiseren bij uitgifte, via een TTP* (ZorgTTP, [A.1](#a1-zorgttp)). Bij elke uitlevering zet de bronhouder de identificerende gegevens om in pre-pseudoniemen (PVM), of stuurt ze naar de webservice van de TTP. De TTP zet ze met een sleutel per afnemer om in het definitieve pseudoniem. Bronhouders zonder BSN gebruiken persoonskenmerken; de koppeling is dan probabilistisch.
- *C. Pseudo-BSN opvragen bij uitgifte.* De bronhouder vraagt pas bij een uitgifte, met de persoonskenmerken uit zijn dataset, per deelnemer via de BD een pseudo-BSN op. Daarna volgen de zeggenschapscheck en de uitgifte zoals bij A.
- *D. Een combinatie:* A als hoofdroute, en C voor bestaande datasets en deelnemers die (nog) geen pseudo-BSN hebben.

De tabel vergelijkt A, B en C.

| Aspect | A: vooraf registreren | B: pseudonimiseren bij uitgifte (ZorgTTP) | C: pseudo-BSN opvragen bij uitgifte |
|---|---|---|---|
| Wie verwerkt het BSN | De PD; DigiD of de BD, afhankelijk van de route ([GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn)); de BSN-verwerkende bronhouder | Niemand, in de variant met persoonskenmerken. Het BSN kan technisch als invoer dienen, maar is voor SG nu niet toegestaan. | De BD en de PD |
| Wat de TTP ziet | Het BSN, per verzoek, zonder het op te slaan | Pre-pseudoniemen (PVM) of persoonskenmerken (webservice), per uitlevering | De BD ziet persoonskenmerken en het BSN; de PD het BSN |
| Persoonskenmerken bij de bronhouder | Via de AD weinig of geen; via de BD alleen bij de registratie nodig | Alle kenmerken waarop wordt gekoppeld, zoals naam, geboortedatum, geslacht en voorletters, bij elke uitlevering | De kenmerken uit de bestaande dataset, één keer nodig voor de BD |
| Wat de bronhouder bewaart | Een eigen pseudo-BSN per deelnemer | De persoonskenmerken waarop wordt gekoppeld | Na de uitgifte een eigen pseudo-BSN per deelnemer |
| Koppelkwaliteit | Deterministisch, voor geregistreerde deelnemers | Probabilistisch op persoonskenmerken; deterministisch alleen met het BSN | Deterministisch, voor deelnemers die de BD eenduidig vindt |
| Dekking | Deelnemers die zich na de invoering inschrijven | Elk record met voldoende persoonskenmerken, ook in bestaande datasets | Elk record waarvoor de BD het BSN vindt, ook in bestaande datasets |
| Zeggenschapscheck vóór levering | Bij de bronhouder, per deelnemer | Niet bij de bronhouder: het zeggenschapsregister kent deelnemers via een pseudoniem van het BSN, niet via persoonskenmerken. Een check kan alleen bij de TTP, op datasetniveau, en probabilistisch. | Bij de bronhouder, per deelnemer |
| Lokalisatie | Ja | Nee | Ja, met het bewaarde pseudo-BSN |
| Re-identificatie bij een nevenbevinding | Via de PD, terug naar het pseudo-BSN (bronhouder) of het BSN | Niet bij de onomkeerbare methode. Bij de omkeerbare variant (TRES) ontsleutelt de TTP, op de rechten die de opdrachtgever heeft ingesteld. | Via de PD, zoals bij A |
| Pseudoniem per ontvanger | Ja, per ontvanger en scope | Ja, met een sleutel per afnemer en omzetting tussen domeinen | Ja, per ontvanger en scope |
| Werk voor de bronhouder | Bij de inschrijving de AD of de BD aanroepen; het pseudo-BSN bewaren | Bij elke uitlevering de PVM draaien of de API aanroepen | Per deelnemer één keer de BD aanroepen; het pseudo-BSN bewaren |
| Volwassenheid | De AD en de PD zijn ook nodig voor andere diensten: de AD voor de Dienst voor Toegang (DvT) voor burgers, de PD voor de [Lokalisatiedienst](./localization.html). Nieuw zijn de BD, de omzetfuncties van de PD en de grondslag. | In gebruik bij veel bronnen; ZorgTTP is gecertificeerd volgens ISO 27001 en NEN 7510 | Zoals bij A; de BD zoekt per deelnemer op persoonskenmerken |
| Grondslag | Een wetswijziging voor de verwerking van het BSN ([aanname 2](#aannames)) | Met persoonskenmerken geen BSN-grondslag nodig; wel een AVG-grondslag voor de verstrekking | Een wetswijziging, zoals bij A |

**Besluit.** D: A als hoofdroute, en C voor bestaande datasets. Elke niet-BSN-verwerkende bronhouder registreert bij de inschrijving een eigen pseudo-BSN per deelnemer (A). Voor bestaande datasets, en voor deelnemers die nog geen pseudo-BSN hebben, vraagt de bronhouder het pseudo-BSN bij de uitgifte op via de BD (C). Daarna bewaart hij het, zodat een volgende uitgifte via A loopt.

**Waarom.**
- *Eén kenmerk voor alle use-cases.* Het pseudo-BSN (bronhouder) dient de zeggenschapscheck, lokalisatie, re-identificatie en uitgifte. A en C leveren dat kenmerk; B dient alleen de uitgifte.
- *C en niet B voor bestaande datasets.* Met C krijgt de bronhouder een pseudo-BSN, zodat hij het zeggenschapsregister zelf kan bevragen ([GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats)). Bij B kent het register de deelnemer niet, en kan de bronhouder geen zeggenschapscheck doen. Lokalisatie kan bij B helemaal niet.
- *Deterministisch koppelen.* Zie [GF-ID-ADR-1](#gf-id-adr-1-waarmee-wordt-gekoppeld).
- *Dataminimalisatie bij de bronhouder.* Bij A via de AD hoeft een bronhouder weinig of geen andere persoonskenmerken vast te leggen ([GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn)). Bij B moet hij juist de persoonskenmerken bewaren waarop wordt gekoppeld. Bij C gebruikt hij kenmerken die al in zijn bestaande dataset staan.
- *Minder identificerende gegevens in omloop.* Bij A verlaten persoonskenmerken de bronhouder hooguit één keer, bij de registratie via de BD, en via de AD helemaal niet. Bij C gaan ze één keer per deelnemer naar de BD. Bij B gaan ze bij elke uitgifte naar de TTP.
- *Haalbaar binnen de levertermijn.* Na een vergunning heeft de bronhouder drie maanden om te leveren (artikel 60, lid 2). De route via DigiD vraagt een handeling van de burger, en werkt alleen vooraf. C vraagt geen handeling van de burger, en kan bij de uitgifte.

**Toets aan de EHDS.**
- De EHDS verplicht niet tot vooraf registreren, en verbiedt het niet. Overweging 72 vraagt pseudonimiseren *"as early as possible in the process of making data available"*. Dat gaat over het uitgifteproces, en dwingt registratie vóór een aanvraag niet af. C past daar ook bij.
- *De verplichting kan niet alleen op de opt-out steunen.* Een bronhouder die de persoon voor zijn eigen doelen niet hoeft te identificeren, hoeft volgens artikel 71, lid 8, geen extra gegevens te verkrijgen *alleen* om de opt-out toe te passen. Een plicht om een pseudo-BSN te registreren of op te vragen moet daarom in nationale wetgeving worden geregeld en ook steunen op koppelen en op nevenbevindingen (artikel 58, lid 3).
- *Bronhouders zonder BSN vallen onder de EHDS.* Ontwikkelaars van wellness-apps en partijen die onderzoek doen, zijn bronhouders (artikel 2, lid 2, onder t). Zij hebben het BSN niet, en verkrijgen een pseudo-BSN via de AD of de BD ([GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn)).
- *De bronhouder moet de persoon kunnen terugvinden.* Artikel 58, lid 3, laat de bronhouder de persoon informeren over een nevenbevinding. Bij A en C gebeurt dat via het pseudo-BSN (bronhouder); bij B moet de bronhouder een eigen koppeling bijhouden.
- *Dataminimalisatie bij de bronhouder volgt uit de AVG* (artikel 5, lid 1, onder c), niet uit de EHDS. De dataminimalisatie in artikel 66, lid 1, gaat over wat de HDAB beschikbaar stelt.

**Gevolgen.**
- De koppelkwaliteit hangt af van de dekking: van de registratie bij nieuwe deelnemers (A), en van de treffers van de BD bij bestaande datasets (C).
- Niet-BSN-verwerkende bronhouders moeten de AD of de BD aansluiten en het pseudo-BSN bewaren.
- De BD moet per deelnemer kunnen opzoeken op persoonskenmerken. Voor een record zonder eenduidige treffer krijgt de bronhouder geen pseudo-BSN, en kan hij geen zeggenschapscheck doen. Of zo'n record zonder pseudo-BSN mag worden geleverd, is een open punt ([roadmap](./identification-sg.html#roadmap-voor-gf-identificatie-voor-sg)).
- De vergelijking gaat over het model, niet over de leverancier. ZorgTTP kan de rol van de PD invullen ([GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst)). Haar omkeerbare dienst TRES lijkt technisch op de PD: deterministische versleuteling per afnemer, met een functie om om te zetten naar een andere sleutel.

## GF-ID-ADR-3: Hoe verkrijgt een bronhouder zonder BSN een pseudo-BSN?

**Vraag.** Via welke route verkrijgt een bronhouder die het BSN niet mag verwerken een eigen pseudo-BSN?

**Opties.**
- *Via DigiD en een authenticatiedienst.* De burger logt via de AD in bij DigiD. DigiD levert het BSN zo dat alleen de PD het kan lezen; de AD stuurt het door. Daarvoor zijn twee technische varianten:
  - *DigiD-SAML met een sleutel van de PD.* De AD sluit met een eigen aansluiting aan op DigiD. De sleutel waarmee DigiD de SAML-assertie versleutelt, is een sleutel van de PD, die de PD in haar HSM maakt en bewaart. De AD kan de assertie niet ontsleutelen, de PD wel.
  - *BSNk.* DigiD levert via BSNk een versleutelde identiteit voor een dienstverlener op de Autorisatielijst BSN ([A.4](#a4-bsnk-polymorfe-pseudonimisering)). De PD moet dan die dienstverlener zijn, met eigen BSNk-sleutels; de AD stuurt de versleutelde identiteit alleen door.
- *Via een BSN-dienst met persoonskenmerken.* De BD zoekt het BSN op en laat de PD het pseudo-BSN maken.
- *Direct via BSNk, zonder PD.* DigiD levert de bronhouder via BSNk een versleuteld pseudoniem dat alleen voor die bronhouder geldt ([A.4](#a4-bsnk-polymorfe-pseudonimisering)). Dit is een ander gebruik van BSNk dan in de eerste optie: hier is de bronhouder zelf de dienstverlener, en krijgt hij een pseudoniem in plaats van een identiteit. BSNk ziet het BSN niet. In de gepubliceerde use-cases van BSNk staat geen omzetting naar een pseudoniem voor een andere ontvanger, of terug naar het BSN. Zo'n pseudoniem kan daarom de use-cases niet bedienen.
- *De burger brengt het pseudo-BSN zelf mee,* bijvoorbeeld als attestatie in een EUDI-wallet. Dit is een mogelijke route op termijn.
- *Geen pseudo-BSN:* koppelen op persoonskenmerken bij uitgifte ([GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte), optie B).

**Besluit.** Beide routes: via DigiD en de AD, en via de BD met persoonskenmerken. De route via de AD heeft de voorkeur als de burger zelf inlogt; de route via de BD is er voor bronhouders die alleen persoonskenmerken hebben, zoals bij bestaande datasets ([GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte)). Voor de route via de AD wordt de variant met DigiD-SAML en een sleutel van de PD uitgewerkt; BSNk is een alternatief.

**Waarom.**
- *Twee soorten bronhouders.* Een app of portaal heeft een burger die inlogt. Een cohort of register heeft alleen persoonskenmerken, ook van deelnemers uit het verleden.
- *Geen BSN bij de bronhouder.* Bij beide routes krijgt de bronhouder alleen het pseudo-BSN. Bij de route via de AD ziet ook de AD zelf het BSN niet.
- *Dataminimalisatie bij de bronhouder.* Via de AD krijgt de bronhouder het pseudo-BSN zonder dat hij persoonskenmerken nodig heeft. Een app hoeft dan naast het account alleen het pseudo-BSN te bewaren, en geen naam, geboortedatum of adres. Via de BD heeft de bronhouder geboortedatum, geboortenaam en geslacht nodig.
- *Hergebruik.* De AD is ook nodig voor de Dienst voor Toegang (DvT) voor burgers, en de PD ook voor de [Lokalisatiedienst](./localization.html). Alleen de BD is een dienst die er specifiek voor SG bij komt.
- *DigiD-SAML boven BSNk.* De variant met DigiD-SAML gebruikt een gewone DigiD-aansluiting van de AD, met een sleutel in de HSM van de PD. Zo is zij ook uitgewerkt in de voorbeeldimplementatie van de PD, nu nog als mock. Bij BSNk heeft de PD een eigen BSNk-aansluiting en eigen sleutels nodig, en moet DigiD een versleutelde identiteit leveren voor een andere organisatie dan de partij die op DigiD is aangesloten.

**Toets aan de EHDS.** De EHDS regelt niet hoe een bronhouder een persoon identificeert of authenticeert. De routes volgen uit nationale wetgeving over het BSN en DigiD. Health-RI noemt de wetgeving over het BSN *"op dit moment nog een obstakel voor het gebruik van DigiD als inlogmiddel voor burgers en patiënten"* ([A.2](#a2-health-ri)). Dat is een nationaal obstakel, geen EHDS-eis.

**Gevolgen.**
- Bij de variant met DigiD-SAML is de AD de partij die op DigiD is aangesloten en het versleutelde BSN ontvangt, al kan zij het niet lezen. Logius moet bevestigen dat de AD zo kan aansluiten, met een sleutel van de PD. Of het doorsturen van het versleutelde BSN als verwerking door de AD geldt, is een open punt ([roadmap](./identification-sg.html#roadmap-voor-gf-identificatie-voor-sg)).
- Bij de variant met BSNk staat de PD op de Autorisatielijst BSN en heeft zij eigen BSNk-sleutels. Of DigiD via BSNk een versleutelde identiteit kan leveren voor een andere organisatie dan de partij die op DigiD is aangesloten, moet met Logius worden afgestemd.
- De route via de BD vraagt een BD die op persoonskenmerken kan zoeken, en een werkwijze voor geen of meerdere treffers. De BD verwerkt het BSN.
- Heeft de bronhouder het pseudo-BSN via de BD verkregen, dan hoeft hij de persoonskenmerken daarna alleen te bewaren als hij ze voor zijn eigen doel nodig heeft.


## GF-ID-ADR-4: Wie is verantwoordelijk voor de pseudonimisatiedienst?

**Vraag.** Wie pseudonimiseert en bewaart de sleutels, en onder wiens verantwoordelijkheid?

**Opties.**
- *De HDAB zelf.* De EHDS staat dit toe (artikel 57, lid 1, onder b, en artikel 66, lid 3). De HDAB verwerkt dan het BSN, met functiescheiding binnen de organisatie (artikel 55, lid 3).
- *Een TTP die de HDAB contracteert.* De TTP werkt als verwerker van de HDAB. Dit is een van de varianten in TEHDAS2 D7.2: *"generated by the HDAB, or by a trusted third party (TTP) contracted by the HDAB or defined by law and imposed on data holders"*.
- *Een TTP die bij nationale wet is aangewezen,* en die bronhouders moeten gebruiken.
- *Een TTP per bronhouder of samenwerkingsverband.* Dit is de huidige praktijk: bronhouders en registers contracteren ZorgTTP ([A.1](#a1-zorgttp)).
- *Geen enkele TTP, maar gespreid vertrouwen:* met *secure multi-party computation* (TEHDAS2 D7.2), of met meerdere servers zoals in PEP ([A.5](#a5-pep)).

**Besluit.** Eén PD voor alle bronhouders, als TTP los van de HDAB, aangewezen bij nationale wet. Voor de taken voor secundair gebruik werkt de PD onder toezicht van de HDAB.

**Waarom.**
- *De EHDS vraagt een grondslag in nationale wet.* Alleen de HDAB of een TTP *"in accordance with national law"* mag de informatie hebben om terug te draaien (artikel 66, lid 3). Het BSN verwerken vraagt ook een wettelijke grondslag ([aanname 2](#aannames)).
- *Eén PD voor consistente pseudoniemen.* Alleen als alle bronhouders dezelfde PD en sleutels gebruiken, krijgen hun gegevens over dezelfde deelnemer hetzelfde pseudo-BSN (SPE). TTP's per bronhouder of samenwerkingsverband koppelen niet over bronnen heen.
- *Functiescheiding.* De HDAB ziet het BSN niet. Dat is dezelfde reden waarom ZorgTTP in 2007 als aparte stichting is opgericht ([A.1](#a1-zorgttp)).

**Toets aan de EHDS.**
- Artikel 66, lid 3, eist een TTP *"in accordance with national law"*. Een contract met de HDAB alleen is daarom niet genoeg: de nationale wet moet de rol regelen. "Contracted by the HDAB" in TEHDAS2 D7.2 is een uitwerking die de EHDS niet eist, maar wel toestaat.
- Overweging 72 staat pseudonimisering door de HDAB en door bronhouders toe, en laat beide dat uitbesteden aan verwerkers. Een PD die de bronhouder aanroept, past daarbij.
- Volgens overweging 79 is de bronhouder verwerkingsverantwoordelijke voor de verstrekking aan de HDAB, en de HDAB voor de voorbereiding. De PD werkt in beide fasen. In welke rol, als verwerker van de bronhouder of van de HDAB, of als zelfstandige TTP, moet de nationale wet bepalen.

**Gevolgen.**
- De nationale wet moet de PD aanwijzen als TTP. Dat staat als open punt in de [roadmap](./identification-sg.html#roadmap-voor-gf-identificatie-voor-sg).
- De PD heeft ook taken buiten secundair gebruik, zoals de OPRF-evaluatie voor [GF Localization](./localization.html) in het primair gebruik. Daarvoor geldt een andere grondslag. Voor de Lokalisatiedienst en het zeggenschapsregister gebruikt de PD in beide gevallen dezelfde sleutel, zodat het pseudoniem gelijk is ([GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem)).
- Een bestaande partij, zoals ZorgTTP, kan na aanbesteding de rol van de PD invullen. De keuze tussen de modellen in [GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte) staat los van de leverancier.

## GF-ID-ADR-5: Centraal, lokaal of blind pseudonimiseren?

**Vraag.** Waar vindt de cryptografische bewerking plaats, en ziet de PD het BSN?

**Opties.**
- *Lokaal, met een gedeelde sleutel.* Elke bronhouder pseudonimiseert zelf, met dezelfde sleutel. Dat is koppelbaar, maar een gelekte sleutel bij één bronhouder raakt alle bronhouders.
- *Lokaal en centraal, in twee stappen* (ZorgTTP, [A.1](#a1-zorgttp)). De bronhouder hasht de gegevens zonder geheime sleutel, omdat de eerste stap bij alle bronhouders gelijk moet zijn. De TTP versleutelt daarna met een sleutel per afnemer. De openbare methodebeschrijving zegt zelf dat de eerste stap *"slechts een beperkte beveiliging biedt"*.
- *Centraal, de PD ziet het BSN.* De bronhouder stuurt het BSN of zijn pseudo-BSN; de PD bewerkt het in een HSM.
- *Blind of polymorf: de centrale dienst ziet het BSN niet.* Voorbeelden zijn de OPRF-evaluatie van [GF Pseudonymisation](./pseudonymisation.html) (niet omkeerbaar), BSNk ([A.4](#a4-bsnk-polymorfe-pseudonimisering); in de gepubliceerde use-cases geen omzetting tussen ontvangers), de *blinded pseudonymisation* van het Belgische eHealth-platform ([A.6](#a6-andere-landen)), en PEP en n-PEP ([A.5](#a5-pep); n-PEP zet omkeerbaar om tussen domeinen, maar is nog onderzoek).

**Besluit.** Centraal. De PD ziet het BSN, niet geblindeerd.

**Waarom.**
- *Omzetten en terugzetten.* Omzetten naar een andere ontvanger ([GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem)) en terugzetten naar het BSN ([GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding)) vragen dat de PD het BSN, of iets gelijkwaardigs, kan terughalen. De blinde technieken die in Nederland in gebruik zijn, OPRF en BSNk, bieden dat niet.
- *Geen software en sleutels bij de bronhouder.* De bronhouder roept alleen een API aan. Bij de twee-stapsmethode moet elke bronhouder de PVM installeren.
- *Geen zwakke eerste stap.* Volgens TEHDAS2 D7.2 telt het hashen van directe identificatoren zonder geheime sleutel niet als pseudonimisering. In de keten van ZorgTTP maakt de tweede stap dat goed; bij een centrale PD is er geen tussenresultaat met die zwakte.

**Toets aan de EHDS.** De EHDS vraagt alleen *"state-of-the-art pseudonymisation"* en zegt dat die technieken *"should be further developed"* (overweging 72). Zij schrijft geen techniek voor. De opmerking over hashen zonder sleutel komt uit TEHDAS2, niet uit de EHDS.

**Gevolgen.**
- De PD is een plek waar veel BSN's langskomen. De maatregelen zijn: sleutels in een HSM, geen opslag van het BSN, en logging zonder BSN of pseudoniem.
- Wordt n-PEP of een vergelijkbare blinde techniek met omzetting en terugzetting volwassen, dan kan deze beslissing worden herzien.
- GF Localization gebruikt wel blinde OPRF-evaluatie: de client blindeert het BSN, zodat de PD het niet ziet. Voor een bronhouder met alleen een pseudo-BSN voert de PD die stappen zelf uit, met hetzelfde resultaat ([GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem)).

## GF-ID-ADR-6: Versleuteling of koppeltabel?

**Vraag.** Maakt en herleidt de PD een pseudoniem met een sleutel, zonder iets op te slaan, of met een opgeslagen koppeltabel?

**Opties.**
- *Deterministische versleuteling,* zoals in de [pseudoniemendienst](https://github.com/minvws/gfmodules-pseudoniemendienst). Het pseudoniem is een versleuteling van BSN, ontvanger en scope, met sleutels per ontvanger en sleutelversie in een HSM. De PD slaat niets op.
- *Een koppeltabel.* De PD bewaart per ontvanger de koppeling tussen BSN en pseudoniem, bijvoorbeeld met willekeurige nummers. TEHDAS2 D7.2 noemt opzoektabellen als een van de technieken.
- *Versleuteling met een koppeltabel ernaast.* TEHDAS2 D7.2 raadt aan ook de koppelingen te bewaren, zodat correcties in de invoer kunnen worden verwerkt.

**Besluit.** Deterministische versleuteling, zonder koppeltabel.

**Waarom.**
- *Geen centrale lijst van wie waar bekend is.* Een koppeltabel bij de PD laat zien bij welke bronhouders en registers een deelnemer bekend is. Zo'n verzameling is een doelwit.
- *Eenvoudig.* Zonder opslag hoeft de PD geen tabel te beheren, te synchroniseren of te herstellen, en kan zij eenvoudig opschalen.

**Toets aan de EHDS.** De EHDS schrijft geen techniek voor (overweging 72). Het advies om koppelingen te bewaren komt uit TEHDAS2.

**Gevolgen.**
- *Sleutelrotatie.* Na een nieuwe sleutelversie maakt de PD van hetzelfde BSN een ander pseudoniem. Na het vernietigen van een sleutelversie kan de PD een oud pseudoniem niet meer omzetten. Pseudo-BSN's die bronhouders lang bewaren, moeten daarom tijdig worden omgezet naar de nieuwe versie. Voor het niet-omkeerbare pseudoniem in het zeggenschapsregister kan dat niet ([GF-ID-ADR-7](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar)) (roadmappunt [*Sleutelrotatie*](./identification-sg.html#roadmap-voor-gf-identificatie-voor-sg)).
- *Correcties.* Wordt een BSN gecorrigeerd, bijvoorbeeld bij een persoon die twee BSN's heeft gekregen ([GF-ID-ADR-1](#gf-id-adr-1-waarmee-wordt-gekoppeld)), dan kan de PD de oude en de nieuwe pseudoniemen niet aan elkaar koppelen.
- *Post-quantum.* De versleuteling is symmetrisch (AES-256). TEHDAS2 D7.2 vraagt bij de keuze van technieken rekening te houden met post-quantumveiligheid.

## GF-ID-ADR-7: Omkeerbaar of niet-omkeerbaar?

**Vraag.** Kan een pseudoniem worden teruggezet naar het BSN?

**Opties.**
- *Niet omkeerbaar.* Dit is de standaardmethode van ZorgTTP, waarbij de weg terug *"by design"* is uitgesloten ([A.1](#a1-zorgttp)), en de OPRF-evaluatie van [GF Pseudonymisation](./pseudonymisation.html).
- *Omkeerbaar.* Dit zijn de dienst TRES van ZorgTTP en de voorbeeldimplementatie van de PD.
- *Per use-case verschillend.*

**Besluit.** Het pseudo-BSN is omkeerbaar. De Lokalisatiedienst en het zeggenschapsregister krijgen een niet-omkeerbaar pseudoniem.

**Waarom.**
- *Nevenbevindingen.* Een niet-BSN-verwerkende bronhouder moet een nevenbevinding bij het pseudo-BSN (SPE) kunnen terugvinden in zijn eigen gegevens ([GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding)).
- *Omzetten.* De PD zet het pseudo-BSN (bronhouder) om naar het pseudoniem voor een andere ontvanger. Dat kan alleen als zij het eerst kan terugzetten.
- *De Lokalisatiedienst en het zeggenschapsregister hoeven niet terug.* Zij vergelijken alleen pseudoniemen. Elke omzetting gaat één kant op, van het BSN naar hun pseudoniem: voor een bronhouder vanuit zijn pseudo-BSN, en voor een burger die een keuze vastlegt via DigiD en de AD.
- *Minder schade bij een lek.* Ook de PD kan een niet-omkeerbaar pseudoniem niet terugzetten naar het BSN. Zij kan alleen bij een bekend BSN het pseudoniem berekenen. Wie een gelekt register wil herleiden, heeft daarvoor de sleutel van de PD nodig, en moet dan nog elk mogelijk BSN proberen.

**Toets aan de EHDS.**
- Artikel 66, lid 3, gaat ervan uit dat er informatie is om de pseudonimisering terug te draaien, en beperkt wie die heeft. Artikel 58, lid 3, laat de bronhouder de persoon informeren over een nevenbevinding. Zonder weg terug van het pseudoniem in de SPE naar de bronhouder kan dat niet.
- De EHDS verbiedt niet-omkeerbare pseudoniemen niet. Dat TEHDAS2 D7.2 ze *"discouraged"* noemt, behalve voor bestaande gegevens, is een aanbeveling.

**Gevolgen.**
- De sleutels van de PD moeten worden beschermd, en terugzetten mag alleen onder voorwaarden ([GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding)).
- De niet-omkeerbare pseudoniemen zijn de OPRF-evaluatie uit [GF-PSD-1](./pseudonymisation.html#gf-psd-1-evaluate-blinded-input), zoals in het primair gebruik ([GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem)).
- Het zeggenschapsregister kan niet zelf een opt-out aan de bronhouders melden, omdat de PD zijn pseudoniem niet kan omzetten naar het pseudo-BSN van een bronhouder. Die optie is in [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats) niet gekozen.
- *Sleutelrotatie in het zeggenschapsregister.* Een keuze blijft jaren geldig, maar het register kan een opgeslagen pseudoniem niet zelf omzetten naar een nieuwe sleutelversie. Tijdens een overgangsperiode bevat de JWE ook de evaluatie onder de oude sleutel, zodat het register een record bij een raadpleging kan omzetten. Een record dat in die periode niet wordt geraadpleegd, raakt onvindbaar als de oude sleutel wordt vernietigd. De PD moet een oude sleutelversie voor het register daarom actief houden zolang er keuzes onder staan.

## GF-ID-ADR-8: Voor wie geldt een pseudoniem?

**Vraag.** Krijgt iedere ontvanger een eigen pseudoniem, of gebruiken meerdere partijen hetzelfde? En hoe lang blijft het pseudo-BSN (SPE) gelijk?

**Opties.**
- *Eén landelijk pseudo-BSN voor iedereen.* Dat is in feite een nieuw landelijk nummer: iedere houder kan het met elke andere houder koppelen.
- *Per ontvangende organisatie.*
- *Per ontvanger en scope:* per organisatie en dienst, zoals een bronhouder, het zeggenschapsregister of de HDAB met een SPE.
- *Voor de SPE:* per SPE, per gegevensvergunning, of per uitlevering.
- *Voor de Lokalisatiedienst en het zeggenschapsregister:* een eigen pseudoniem voor secundair gebruik, of hetzelfde pseudoniem als in het primair gebruik ([GF Localization](./localization.html)).

**Besluit.** Per ontvanger en scope. Voor de SPE per gegevensvergunning: het pseudo-BSN (SPE) wordt uitgegeven aan de HDAB, met de gegevensvergunning als scope. Bij het omzetten stuurt de bronhouder het verzoek van de HDAB mee (artikel 68, lid 7); daarmee controleert de PD dat de bronhouder voor die vergunning mag leveren. De Lokalisatiedienst en het zeggenschapsregister krijgen voor primair en secundair gebruik elk hetzelfde pseudoniem: de OPRF-evaluatie uit [GF-PSD-1](./pseudonymisation.html#gf-psd-1-evaluate-blinded-input). Voor een bronhouder met alleen een pseudo-BSN zet de PD het pseudo-BSN terug naar het BSN, en voert zij zelf de stappen van de client uit GF-PSD-1 uit.

**Waarom.**
- *Geen koppeling buiten de PD om.* Twee ontvangers kunnen hun pseudoniemen alleen via de PD aan elkaar koppelen, en de PD controleert of dat mag.
- *Koppelen binnen een vergunning.* Binnen één vergunning moeten alle bronhouders hetzelfde pseudo-BSN (SPE) leveren, anders kan de gegevensgebruiker niet koppelen.
- *Niet koppelen tussen vergunningen.* Een gegevensgebruiker met twee vergunningen kan de datasets niet zelf combineren.
- *Eén lokalisatie voor primair en secundair gebruik.* Een zoekvraag bij secundair gebruik vindt ook de lokalisatierecords die zorgaanbieders voor primair gebruik hebben geregistreerd, en een bronhouder hoeft zich niet twee keer te registreren. Met een eigen pseudoniem voor secundair gebruik zou de Lokalisatiedienst twee gescheiden indexen bevatten.
- *Eén zeggenschapsregister voor primair en secundair gebruik.* De burger legt al zijn keuzes op één plek vast, en het register kent hem onder één pseudoniem. Dat past bij de voorkeur van GF Zeggenschap voor pseudoniemen via de PD, zoals bij de Lokalisatiedienst.
- *Eén werkwijze.* De bronhouder levert hetzelfde aan als elke client van GF-PSD-1: een JWE voor de Lokalisatiedienst of het register, en de `blind_factor`.

**Toets aan de EHDS.** De EHDS regelt de reikwijdte van een pseudoniem niet. De gegevensgebruiker mag niet re-identificeren (artikel 61, lid 3), en de vergunning beperkt de gegevens tot het doel (artikel 66, lid 1, en artikel 68, lid 10). *"Pseudonyms MUST NOT be reused across different data permits"* komt uit TEHDAS2 D7.2. Het is geen EHDS-eis, maar volgt wel uit het beginsel van dataminimalisatie. Lokalisatie regelt de EHDS niet.

**Gevolgen.**
- De voorbeeldimplementatie van de PD controleert nog geen verzoek van de HDAB (roadmappunt [*Verzoek en verklaring van de HDAB*](./identification-sg.html#roadmap-voor-gf-identificatie-voor-sg)).
- Onderzoek over meerdere vergunningen heen vraagt een gewijzigde vergunning (artikel 68, lid 13), of een omzetting onder verantwoordelijkheid van de HDAB.
- Bij het maken van het pseudoniem (Lokalisatiedienst) of het pseudoniem (ZR) uit een pseudo-BSN ziet de PD het BSN, en kan zij het pseudoniem berekenen. Bij de blinde evaluatie van GF-PSD-1 ziet zij geen van beide. De PD bewaart en logt geen van beide ([GF-ID-ADR-5](#gf-id-adr-5-centraal-lokaal-of-blind-pseudonimiseren)).
- De voorbeeldimplementatie heeft deze functie nog niet. Haar niet-omkeerbare pseudoniem (`/exchange/irreversible-pseudonym`) gebruikt andere sleutels dan de OPRF-evaluatie, en komt daarom niet overeen met deze pseudoniemen.
- Lokalisatierecords die voor primair gebruik zijn geregistreerd, worden zo ook bij secundair gebruik gevonden. Het doel van zo'n zoekvraag is het doel van de gegevensvergunning (EHDS artikel 68, lid 10, onder b), en verdere verwerking voor wetenschappelijk onderzoek geldt volgens de AVG niet als onverenigbaar met het oorspronkelijke doel (artikel 5, lid 1, onder b, met de waarborgen van artikel 89, lid 1). Een zoekvraag voor secundair gebruik moet daarom bij een gegevensvergunning horen, en de bronhouder stuurt het verzoek van de HDAB mee, zoals bij de datauitgifte. De bronhouders toetsen de zoekvraag dan aan de gegevensvergunning ([GF-LOC-5](./localization.html#gf-loc-5-authorization-decision)). GF Localization toetst nu de toegang van een zorgverlener, en moet daarvoor worden uitgebreid. Een zoekvraag vóór de vergunning, bijvoorbeeld om de bronnen voor een aanvraag te vinden, kan niet op een vergunning steunen.

## GF-ID-ADR-9: Wie re-identificeert bij een nevenbevinding?

**Vraag.** Hoe leidt het pseudo-BSN (SPE) na een nevenbevinding terug naar de deelnemer, wie voert dat uit, en wie beslist erover?

**Opties.**
- *De HDAB re-identificeert zelf.* De EHDS staat toe dat de HDAB de informatie heeft om terug te draaien (artikel 66, lid 3). De HDAB verwerkt dan het BSN.
- *De HDAB laat de PD terugzetten en stuurt het BSN versleuteld door naar de bronhouder.*
- *De bronhouder laat de PD terugzetten, met een verklaring van de HDAB.* De HDAB stuurt de nevenbevinding met het pseudo-BSN (SPE) en een verklaring naar de bronhouder. De bronhouder vraagt de PD om terug te zetten, en de PD controleert de verklaring.
- *De bronhouder zoekt zelf terug, in een eigen koppeltabel.* De bronhouder bewaart bij elke uitlevering welk pseudoniem bij welk record hoort. TEHDAS2 D8.2 beschrijft dit voor het geval dat de bronhouder zelf heeft gepseudonimiseerd.
- *Geen re-identificatie,* bij niet-omkeerbare pseudoniemen.

**Besluit.** De bronhouder laat de PD het pseudo-BSN (SPE) terugzetten, naar het BSN of naar het pseudo-BSN (bronhouder). De HDAB levert de melding met een verklaring, en de PD zet alleen terug als die verklaring er is. De bronhouder beslist of en hoe hij de deelnemer informeert.

**Waarom.**
- *De bronhouder informeert.* De EHDS laat de bronhouder de persoon informeren (artikel 58, lid 3). Hij moet de deelnemer dus zelf kunnen terugvinden.
- *De HDAB ziet het BSN niet,* ook niet versleuteld.
- *Een controleerbare opdracht.* De PD zet alleen terug op een verzoek van de bronhouder, met de verklaring van de HDAB. Zo kan een bronhouder een pseudo-BSN (SPE) niet buiten een melding om laten terugzetten.

**Toets aan de EHDS.**
- De gegevensgebruiker meldt de nevenbevinding aan de HDAB (artikel 61, lid 5). De HDAB informeert de bronhouder, en de bronhouder informeert de persoon *"under the conditions laid down by national law"* (artikel 58, lid 3). De persoon heeft het recht te verzoeken om niet in kennis te worden gesteld (recht op niet-weten).
- De EHDS geeft de HDAB geen rol als goedkeurder van re-identificatie, en regelt niet wie daarover beslist. Volgens TEHDAS2 D8.2 ligt het besluit bij de bronhouder of een andere bij wet aangewezen partij, *"and not with the HDAB or the TTP"*. D8.2 noemt dat zelf *"an interpretive governance principle"*, dat niet letterlijk in de AVG of de EHDS staat.
- De verklaring van de HDAB is dus een nationale ontwerpkeuze. Die past bij de EHDS en bij D8.2 als zij aantoont dat de melding via de HDAB is gekomen, en het besluit om te informeren bij de bronhouder laat.

**Gevolgen.**
- Vóór het informeren controleert de bronhouder in het zeggenschapsregister of de deelnemer heeft verzocht om niet in kennis te worden gesteld. Dat is iets anders dan de opt-out ([GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats)).
- De voorbeeldimplementatie van de PD zet een pseudoniem alleen terug voor de organisatie waaraan het is uitgegeven. Het pseudo-BSN (SPE) is uitgegeven aan de HDAB, dus de controle van de verklaring moet worden gebouwd (roadmappunt [*Verzoek en verklaring van de HDAB*](./identification-sg.html#roadmap-voor-gf-identificatie-voor-sg)).


## GF-ID-ADR-10: Waar en wanneer vindt de zeggenschapscheck plaats?

**Vraag.** Wie controleert of een deelnemer een opt-out voor secundair gebruik heeft, of heeft verzocht om niet in kennis te worden gesteld van nevenbevindingen, op welk moment, en hoe?

**Opties voor de plaats.**
- *Bij de bronhouder, per deelnemer, vóór levering.* De bronhouder laat zijn pseudo-BSN omzetten naar het pseudoniem (ZR) en vraagt het zeggenschapsregister naar de keuze van de deelnemer.
- *Het register zet om.* De bronhouder vraagt met zijn eigen pseudo-BSN, en het register laat de PD omzetten. Zo beschrijft de notitie over het zeggenschapsregister van GF Zeggenschap het, voor het geval dat het register het BSN gebruikt.
- *Het zeggenschapsregister meldt opt-outs aan de bronhouders.* De PD zet een nieuwe opt-out om naar het pseudo-BSN van elke bronhouder. Met een niet-omkeerbaar pseudoniem in het register ([GF-ID-ADR-7](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar)) kan dat niet. TEHDAS2 D8.1 beschrijft dat bronhouders *"must be notified immediately"*.
- *Bij de PD, op datasetniveau.* De PD geeft geen pseudo-BSN (SPE) voor een deelnemer met een opt-out. TEHDAS2 D8.1 noemt een controle op datasetniveau een *"secondary line of defence"*.
- *Bij de HDAB, na ontvangst.* TEHDAS2 D8.1 raadt af dat de HDAB identificerende gegevens ontvangt alleen om de opt-out af te dwingen.

**Opties voor het peilmoment.**
- *De datum van de vergunning.* Dat volgt letterlijk uit artikel 71, lid 3.
- *Het moment van levering.*

**Besluit.**
- De bronhouder controleert per deelnemer, vóór levering.
- Het peilmoment is het moment van levering. Heeft de deelnemer op dat moment een opt-out, dan levert de bronhouder zijn gegevens niet, ook als de opt-out na de vergunning is vastgelegd.
- Het zeggenschapsregister legt ook het verzoek vast om niet in kennis te worden gesteld van nevenbevindingen (recht op niet-weten). Bij re-identificatie na een nevenbevinding ([GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding)) controleert de bronhouder dat verzoek, en niet de opt-out.

**Waarom.**
- *De opt-out wordt bij de bron toegepast.* Gegevens van deelnemers met een opt-out verlaten de bronhouder niet.
- *Het register bevat alleen pseudoniemen* ([aanname 3](#aannames)).
- *De HDAB krijgt geen extra gegevens.*
- *De actuele keuze telt.* Bij levering geldt de keuze die de deelnemer op dat moment heeft. Het register hoeft geen historie te bewaren, en de bronhouder hoeft de datum van de vergunning niet mee te sturen.
- *Eén plek voor de keuzes van de deelnemer.* De burger legt zijn keuzes voor secundair gebruik op één plek vast, en de bronhouder bevraagt die op dezelfde manier.

**Toets aan de EHDS.**
- *Peilmoment.* Na een opt-out worden de gegevens niet beschikbaar gesteld onder vergunningen die *ná* de opt-out zijn verleend; eerder verleende vergunningen blijven gelden (artikel 71, lid 3). Toetsen bij levering is strenger dan de EHDS vraagt. Gegevens van wie na de vergunning een opt-out vastlegt, worden dan niet geleverd, terwijl de vergunning ze dekt en de bronhouder gegevens levert overeenkomstig de vergunning (artikel 60, lid 1). Deze keuze vraagt daarom een grondslag in nationale wetgeving; dat moet juridisch worden bevestigd.
- *Alleen bij identificeerbare gegevens.* De opt-out geldt *"where personal electronic health data … can be identified in a dataset"* (artikel 71, lid 3). Een bronhouder die niet hoeft te identificeren, hoeft geen extra gegevens te verkrijgen alleen voor de opt-out (artikel 71, lid 8).
- *Het mechanisme is nationaal* (artikel 71, lid 2). Waar en hoe gecontroleerd wordt, regelt de EHDS niet. TEHDAS2 D8.1 waarschuwt voor *"designs that require linkage between registry identifiers and pseudonymised or encrypted data sources"*. Dat is een aanbeveling, geen EHDS-eis. Dit ontwerp koppelt via de PD. Dat is te verantwoorden, omdat de bronhouder zijn deelnemer al kent en het register alleen het pseudoniem (ZR) ziet.
- *Het recht op niet-weten is een apart recht* (artikel 58, lid 3). Lidstaten mogen voorwaarden stellen aan de uitoefening ervan (overweging 67); het verzoek is dus niet per se absoluut. Het vastleggen in het zeggenschapsregister is zo'n nationale regeling.

**Gevolgen.**
- Het zeggenschapsregister ziet welke bronhouder naar welk pseudoniem (ZR) vraagt. Een register dat opt-outs meldt, vermijdt dat, maar de PD moet dan elke opt-out voor alle bronhouders omzetten.
- Een controle bij de PD op datasetniveau kan als tweede verdedigingslinie worden toegevoegd.
- Tussen vergunning en levering kan een dataset kleiner worden. De HDAB en de gegevensgebruiker moeten daarmee rekening houden.
- Het zeggenschapsregister moet het verzoek om niet in kennis te worden gesteld kunnen vastleggen; de burger legt het vast en wijzigt het via de burgerinterface.
- GF Zeggenschap kiest nog tussen centrale en decentrale opslag van zeggenschapsrecords, en tussen BSN en pseudoniem in de koppelvlakken. Dit ontwerp gaat uit van een centraal register met alleen pseudoniemen ([aanname 3](#aannames)): het OPRF-pseudoniem, zoals bij de Lokalisatiedienst ([GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem)).

# Bijlage A: Referentiemodellen

## A.1 ZorgTTP

ZorgTTP is sinds 2007 een aparte stichting, zodat het versleutelen van persoonsgegevens en het werken met de versleutelde gegevens gescheiden zijn (functiescheiding). De methode komt voort uit de unieke cliëntcode van LADIS (1994). In 2015 is zij in opdracht van VWS openbaar beschreven, zodat ook andere partijen haar kunnen toepassen. ZorgTTP is gecertificeerd volgens ISO 27001 en NEN 7510.

**Pseudonimisatieketen.** De keten heeft drie modules:
- De *Privacy- en Verzend Module* (PVM) bij de bronhouder scheidt de identificerende gegevens van de inhoud en zet ze om in pre-pseudoniemen. De PVM versleutelt het sleuteldeel voor ZorgTTP en het datadeel voor de afnemer.
- De *Centrale Module TTP* (CMT) bij ZorgTTP zet de pre-pseudoniemen om met een sleutel per afnemer. ZorgTTP ziet de inhoud niet.
- De *Doel- en Receive Module* (DRM) bij de afnemer ontvangt het resultaat.

De eerste stap is een hash zonder geheime sleutel. Die moet bij alle bronhouders gelijk zijn, zodat pseudoniemen over bronnen heen overeenkomen. De openbare methodebeschrijving zegt daarom dat deze stap *"slechts een beperkte beveiliging biedt"*; de bescherming komt van de tweede stap.

**Omkeerbaar en niet-omkeerbaar.** De standaardmethode is niet omkeerbaar: de weg terug is *"by design"* uitgesloten. TRES (*Trusted Reversible Encryption System*) is een omkeerbare webservice. Die versleutelt deterministisch per gebruiker (AES-256), kan omzetten naar de sleutel van een ander project of domein, en kan bij export alsnog niet-omkeerbaar maken. Ontsleutelen mag alleen een geautoriseerde gebruiker, en elke handeling wordt gelogd.

**Koppelen.** ZorgTTP koppelt voor onderzoek vooral probabilistisch. *"Omdat het verwerken van het BSN verboden is tenzij hiervoor een wettelijke uitzondering wordt geboden wordt voor onderzoeksdoeleinden in de praktijk een pseudoniem gemaakt op basis van de naam, geboortedatum, geslacht en voorletters."* Met het BSN zou deterministisch koppelen mogelijk zijn.

**Programma van Eisen van SSC-DG.** Het Programma van Eisen voor de pseudonimisatiedienst (v1.1) beschrijft twee manieren om een TTP aan te roepen: een lokale module, zoals de PVM, of een webservice.
- Bij de webservice stuurt de bronhouder de identificerende gegevens naar de TTP en krijgt hij *tijdelijke* pseudoniemen terug, versleuteld voor de afnemer. De afnemer zet die om in definitieve pseudoniemen. Zo is er nergens *"een gedeeld identificerend gegeven … bij zowel aanbieder als afnemer"*.
- Het BSN is *"technisch verwerkbaar, maar op dit moment niet toegestaan"*. Een wetswijziging zal *"naar verwachting ten minste nog 2 jaar vergen"*.

**Ten opzichte van dit ontwerp.** ZorgTTP pseudonimiseert bij elke uitlevering, en koppelt bij de TTP of de afnemer. Een bronhouder registreert niets vooraf. Zie de vergelijking in [GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte).

## A.2 Health-RI

Het afsprakenstelsel van Health-RI (versie 5) beschrijft generieke functies voor secundair gebruik.
- *Pseudonimisatie (5.6)* noemt de EHDS: zo vroeg mogelijk pseudonimiseren, door de HDAB of de bronhouder. ZorgTTP is de enige genoemde leverancier. Techniek en standaarden *"moeten verder worden ontwikkeld"*.
- *Datakoppeling (5.7):* Health-RI pleit voor exact koppelen, met een versleuteld BSN als koppelsleutel.
- *Identificatie (5.1):* *"De wetgeving rondom het verwerken van BSN is op dit moment nog een obstakel voor het gebruik van DigiD als inlogmiddel voor burgers en patiënten."*
- *Bedrijfsrollen (4.4.1):* een generieke (de)pseudonimiseringsdienst pseudonimiseert consistent over organisaties en beheert de sleutels; een TTP-rol is optioneel.
- *Verhaallijn "Toegang verlenen":* de bronhouder minimaliseert de dataset, filtert met de zeggenschapsdienst, pseudonimiseert via de generieke dienst, levert aan de SPE en registreert in de lokalisatiedienst. Die volgorde komt overeen met dit ontwerp, waarin de zeggenschapscheck vóór de uitgifte plaatsvindt ([GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats)).

In een notitie aan VWS (december 2023) vergelijkt Health-RI acht koppelkenmerken: de huidige combinaties van persoonskenmerken, het telefoonnummer, het RIN-nummer van het CBS, het verzekerdennummer, fuzzy matching, een eID, een nieuw nummer en een versleuteld BSN. De huidige praktijk is volgens de notitie *"~80% accurate"*. Het RIN-nummer werkt alleen binnen het CBS. De voorkeur gaat naar een versleuteld BSN, met BSNk als versleutelingsmechanisme ([A.4](#a4-bsnk-polymorfe-pseudonimisering)).

## A.3 TEHDAS2

TEHDAS2 (*Second Joint Action Towards the European Health Data Space*) heeft richtlijnen voor HDAB's opgesteld. Ze zijn niet bindend. De tabel geeft per richtlijn wat zij zegt, en wat de EHDS zelf zegt.

| Onderwerp | TEHDAS2 | EHDS |
|---|---|---|
| Omkeerbaarheid | *"EHDS should rely on reversible pseudonymisation"*; niet-omkeerbaar is *"discouraged"* (D7.2, §4.2 en §4.4) | Geen eis. Artikel 66, lid 3, regelt alleen wie de informatie om terug te draaien mag hebben. |
| Wie koppelbare pseudoniemen maakt | Binnen één land de HDAB, *"or … a TTP contracted by the HDAB or defined by law and imposed on data holders"* (D7.2, §4.3) | De HDAB of de bronhouder, met verwerkers (overweging 72). De TTP handelt *"in accordance with national law"* (artikel 66, lid 3). |
| Hergebruik van pseudoniemen | *"Pseudonyms MUST NOT be reused across different data permits"* (D7.2, §4.4) | Geen eis. Wel dataminimalisatie (artikel 66, lid 1). |
| Hashen zonder sleutel | Telt niet als pseudonimisering (D7.2, §4.4) | Alleen *"state-of-the-art"* (overweging 72) |
| Waar de opt-out wordt gecontroleerd | Bij voorkeur bij de bronhouder, *"at the source"*; op datasetniveau als *"secondary line of defence"*; de HDAB krijgt geen extra identificerende gegevens (D8.1, §5.4) | Het mechanisme is nationaal (artikel 71, lid 2). Gegevens worden niet beschikbaar gesteld onder vergunningen ná de opt-out (artikel 71, lid 3). |
| Ontwerp van het opt-outregister | Vermijd *"designs that require linkage between registry identifiers and pseudonymised or encrypted data sources"* (D8.1, §5.4.2.2) | Geen eis |
| Wie beslist over re-identificatie | De bronhouder of een bij wet aangewezen partij, *"not with the HDAB or the TTP"*; volgens D8.2 zelf *"an interpretive governance principle"* (D8.2, §8) | De HDAB informeert de bronhouder; de bronhouder informeert de persoon, onder nationale voorwaarden (artikel 58, lid 3) |
| Koppelen | Deterministisch heeft de voorkeur (M7.5, concept) | Geen eis |

## A.4 BSNk polymorfe pseudonimisering

BSNk (het BSN-koppelregister van Logius) levert dienstverleners een identiteit of pseudoniem van de burger, zonder dat tussenliggende partijen het BSN zien.
- Bij de activering zet BSNk het BSN om in een polymorfe identiteit en een polymorf pseudoniem, en het authenticatiemiddel verwijdert het BSN.
- Bij gebruik zet BSNk die om in een *versleutelde identiteit* of een *versleuteld pseudoniem* voor één dienstverlener. Alleen dienstverleners op de Autorisatielijst BSN krijgen het BSN; anderen krijgen een pseudoniem dat alleen voor hen geldt.
- BSNk is blind: het ziet niet dat twee verzoeken over dezelfde persoon gaan.
- In de gepubliceerde use-cases van BSNk staat geen omzetting van het pseudoniem van de ene dienstverlener naar dat van een andere, of terug naar het BSN.
- Met het *Direct Encrypted Pseudonym* kan een geregistreerde partij met het BSN direct een pseudoniem voor een dienstverlener opvragen, voor bijzondere toepassingen.

Voor dit ontwerp kan BSNk op twee manieren worden gebruikt ([GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn)): als variant van de route via de AD, met een versleutelde identiteit voor de PD, of direct, met een versleuteld pseudoniem voor de bronhouder. De tweede manier is afgewezen, omdat de omzetting naar andere ontvangers ontbreekt. Om dezelfde reden kan BSNk de PD niet vervangen ([GF-ID-ADR-5](#gf-id-adr-5-centraal-lokaal-of-blind-pseudonimiseren)).

## A.5 PEP

PEP (*Polymorphic Encryption and Pseudonymisation*) van de Radboud Universiteit wordt onder meer gebruikt in het Personalized Parkinson Project.
- Geen BSN: PEP maakt bij de registratie een willekeurig, onvoorspelbaar nummer (*Origin ID*).
- Daaruit volgt een polymorf pseudoniem, dat PEP blind omzet in lokale pseudoniemen per gebruikersgroep.
- Het vertrouwen is gespreid over meerdere servers, zodat geen enkele beheerder de gegevens kan inzien. De ontwerpers wijzen één centrale TTP bewust af.
- Re-identificatie bij nevenbevindingen loopt via een aparte procedure.
- n-PEP (2026) lost een bekende zwakte op, waarbij samenspannende gebruikers pseudoniemen konden koppelen. Het voegt omkeerbare en transitieve omzetting tussen domeinen toe, gespreid over meerdere servers.

Voor dit ontwerp laat PEP zien dat omzetten en terugzetten ook kan zonder een centrale partij die het BSN ziet ([GF-ID-ADR-5](#gf-id-adr-5-centraal-lokaal-of-blind-pseudonimiseren)). Een eigen nummer per deelnemer koppelt echter niet met bronnen buiten PEP ([GF-ID-ADR-1](#gf-id-adr-1-waarmee-wordt-gekoppeld)).

## A.6 Andere landen

- **Duitsland.** De zorgverzekeraars leveren gegevens onder een leveringspseudoniem aan het Forschungsdatenzentrum Gesundheit, en de lijst met pseudoniemen aan een Vertrauensstelle. Die zet ze met een sleutel om in blijvende pseudoniemen en verwijdert daarna de onderliggende gegevens (§ 303b en § 303c SGB V). Een weg terug is er daarna niet.
- **België.** Het eHealth-platform biedt pseudonimisering als webservice, als batchdienst met eHealth als TTP, en als *blinded pseudonymisation*, die pseudoniemen per verwerker aanpast zonder ze terug te zetten. Elk gebruik vraagt een machtiging van het Informatieveiligheidscomité. In HISlink vervangt een TTP het rijksregisternummer door een pseudoniem per project.
- **Finland.** Findata stelt gegevens van meerdere bronnen samen en pseudonimiseert ze per vergunninghouder apart, voor gebruik in een beveiligde omgeving.
- **Nederland, CBS.** Het CBS koppelt met het RIN-nummer, een betekenisloos nummer dat van het BSN is afgeleid. Koppelen kan alleen binnen het CBS, en verrijkte microdata verlaten het CBS niet.

# Bijlage B: Bronnen

**Wetgeving**
- Verordening (EU) 2025/327 betreffende de European Health Data Space: [eur-lex.europa.eu/eli/reg/2025/327/oj](https://eur-lex.europa.eu/eli/reg/2025/327/oj); Nederlandse tekst: [eur-lex.europa.eu](https://eur-lex.europa.eu/legal-content/NL/TXT/?uri=OJ:L_202500327)
- Wetsvoorstel Wet op het gezondheidsinformatiestelsel (Wet GIS), consultatieversie mei 2026, met memorie van toelichting: [internetconsultatie.nl/ehds/b1](https://www.internetconsultatie.nl/ehds/b1)
- Uitvoeringswet Algemene verordening gegevensbescherming (UAVG): [wetten.overheid.nl/BWBR0040940](https://wetten.overheid.nl/BWBR0040940)
- Wet algemene bepalingen burgerservicenummer (Wabb): [wetten.overheid.nl/BWBR0022428](https://wetten.overheid.nl/BWBR0022428)
- Wet aanvullende bepalingen verwerking persoonsgegevens in de zorg (Wabvpz): [wetten.overheid.nl/BWBR0023864](https://wetten.overheid.nl/BWBR0023864)
- Wet digitale overheid (Wdo): [wetten.overheid.nl/BWBR0048156](https://wetten.overheid.nl/BWBR0048156)

**TEHDAS2**
- D7.2, *Guideline for Health Data Access Bodies on data minimisation, pseudonymisation, anonymisation and synthetic data*, 24 maart 2026: [pdf](https://tehdas.eu/wp-content/uploads/2026/06/d7.2-guideline-for-health-data-access-bodies-on-data-minimisation-pseudonymisation-anonymisation-and-synthetic-data.pdf)
- D8.1, *Guideline for Health Data Access Bodies on implementing opt-out from the secondary use of health data*, 24 maart 2026: [pdf](https://tehdas.eu/wp-content/uploads/2026/06/d8.1-guideline-for-health-data-access-bodies-on-implementing-opt-out-from-the-secondary-use-of-health-data.pdf)
- D8.2, *Guideline to Health Data Access Bodies on implementing the obligation of notifying the natural person on a significant finding from the secondary use of health data*, 24 maart 2026: [pdf](https://tehdas.eu/wp-content/uploads/2026/06/d8.2-guideline-for-health-data-access-bodies-on-implementing-the-obligation-of-notifying-the-natural-person-on-a-significant-finding-from-the-secondary-use-of-health-data.pdf)
- M7.5, *Draft guideline for Health Data Access Bodies on linkage of health datasets*, concept van 21 april 2026: [pdf](https://tehdas.eu/wp-content/uploads/2026/05/draft-guideline-for-health-data-access-bodies-on-linkage-of-health-datasets.pdf)

**ZorgTTP en SSC-DG**
- Pseudonimisatie: [zorgttp.nl/pseudonimisatie](https://www.zorgttp.nl/pseudonimisatie/)
- Historie pseudonimisering: [zorgttp.nl/historie_pseudonimisering](https://www.zorgttp.nl/historie_pseudonimisering/)
- Factsheet pseudonimisatie (2021): [pdf](https://www.zorgttp.nl/wp-content/uploads/2022/05/Factsheet_pseudonimisatie_ZorgTTP_2021.pdf)
- Openbare methodebeschrijving (VWS, 2015): [pdf](https://www.zorgttp.nl/wp-content/uploads/2023/01/NEN-pseudonimisering-specificatie-voorstel-VWS-1.0.pdf)
- TRES methodebeschrijving (2024): [pdf](https://www.zorgttp.nl/wp-content/uploads/2024/02/TRES-Methodebeschrijving.pdf)
- SSC-DG, Programma van Eisen pseudonimisatiedienst v1.1: [pdf](https://ssc-dg.nl/wp-content/uploads/2026/05/Programma-van-Eisen-pseudonimisatiedienst_v1.1.pdf)

**Health-RI**
- Afsprakenstelsel, versie 5: [health-ri.atlassian.net/wiki/spaces/HNG](https://health-ri.atlassian.net/wiki/spaces/HNG/overview), met onder meer [5.6 Pseudonimisatie](https://health-ri.atlassian.net/wiki/spaces/HNG/pages/2282720170) en [5.7 Datakoppeling](https://health-ri.atlassian.net/wiki/spaces/HNG/pages/2282720191)
- Goed Verhaal: BSN als koppelsleutel (2023): [pdf](https://www.health-ri.nl/sites/healthri/files/2024-11/Goed%20Verhaal%20BSN%20als%20koppelsleutel_1.pdf)

**Polymorfe pseudonimisering**
- Logius, BSNk PP: [logius.nl](https://www.logius.nl/onze-dienstverlening/toegang/voorzieningen/bsnk-pp/hoe-werkt-het) en [technische specificaties](https://logius.gitlab.io/domein-toegang/bsnk-techspecs/)
- PEP, Radboud Universiteit: [pep.cs.ru.nl](https://pep.cs.ru.nl/); white paper: [eprint.iacr.org/2016/411](https://eprint.iacr.org/2016/411)

**Andere landen**
- Duitsland, § 303b en § 303c SGB V: [gesetze-im-internet.de](https://www.gesetze-im-internet.de/sgb_5/__303c.html)
- België, eHealth-platform: [ehealth.fgov.be](https://ehealth.fgov.be/ehealthplatform/fr/service-pseudonymisation-anonymisation)
- Finland, Findata: [findata.fi](https://findata.fi/en/data/ready-made-datasets/)

# Bijlage C: Samenvatting voor wetgevers

Deze bijlage vat samen welke regelgeving dit ontwerp vraagt: welke grondslagen nieuw moeten worden gemaakt, en welke bestaande wetten worden geraakt. Zij is bedoeld voor wetgevingsjuristen, en volgt de terminologie van de verordening (Verordening (EU) 2025/327) en van het wetsvoorstel [Wet op het gezondheidsinformatiestelsel](https://www.internetconsultatie.nl/ehds/b1) (Wet GIS, consultatieversie mei 2026). Het is een inventarisatie vanuit het ontwerp, geen juridisch advies. De [aannames](#aannames) zijn nog niet juridisch bevestigd.

## C.1 Begrippen

Dit document gebruikt werktermen. De tabel geeft de overeenkomende term in de verordening en de Wet GIS. De termen *gegevensvergunning* en *gegevensgebruiker* volgen de Wet GIS al.

| In dit document | In de verordening en de Wet GIS |
|---|---|
| Bronhouder | Houder van gezondheidsgegevens, kortweg gegevenshouder (artikel 2, tweede lid, onderdeel t, van de verordening) |
| BSN-verwerkende bronhouder | Gegevenshouder die het burgerservicenummer verwerkt op grond van de Wet aanvullende bepalingen verwerking persoonsgegevens in de zorg (Wabvpz), zoals een zorgaanbieder |
| Niet-BSN-verwerkende bronhouder | Gegevenshouder die het burgerservicenummer niet mag verwerken, zoals een ontwikkelaar van een wellnessapp of een onderzoekscohort |
| Gegevensgebruiker | Gebruiker van gezondheidsgegevens (artikel 2, tweede lid, onderdeel u, van de verordening) |
| HDAB | Gezondheidsdata-autoriteit, in haar taak als instantie voor toegang tot gezondheidsgegevens (artikel 55 van de verordening; artikel 2.1.1, tweede lid, onderdeel b, Wet GIS) |
| SPE | Beveiligde verwerkingsomgeving (artikel 73 van de verordening) |
| Datauitgifte | Het beschikbaar stellen van elektronische gezondheidsgegevens door de gegevenshouder aan de Gezondheidsdata-autoriteit (artikel 60, eerste lid, en artikel 68, zevende lid, van de verordening) |
| Deelnemer | Natuurlijke persoon; de betrokkene in de zin van de AVG |
| Nevenbevinding | Significante bevinding in verband met de gezondheid van een natuurlijke persoon (artikel 58, derde lid, en artikel 61, vijfde lid, van de verordening) |
| Recht op niet-weten | Het recht te verzoeken om niet van significante bevindingen in kennis te worden gesteld (artikel 58, derde lid, van de verordening) |
| Opt-out voor secundair gebruik | Opt-outrecht (artikel 71 van de verordening) |
| Zeggenschapsregister (ZR) | Opt-out-mechanisme (artikel 71, tweede lid, van de verordening), dat ook het verzoek vastlegt om niet in kennis te worden gesteld |
| Pseudonimisatiedienst (PD) | Betrouwbare derde: *"een instantie die als betrouwbare derde overeenkomstig het nationale recht optreedt"* (artikel 66, derde lid, van de verordening) |
| Pseudo-BSN | Geen begrip in de verordening of de Wet GIS. Een gepseudonimiseerd gegeven (artikel 4, onder 5, AVG), en daarmee een persoonsgegeven (overweging 26 AVG) |
| Authenticatiedienst (AD) | Geen begrip in de verordening of de Wet GIS. Let op: in artikel 1 van de Wet digitale overheid (Wdo) is een *authenticatiedienst* een partij die op basis van een identificatiemiddel een authenticatieverklaring afgeeft. De AD in dit ontwerp is dat niet; een regeling kiest dus beter een andere naam |
| BSN-dienst (BD) | Geen begrip in de verordening of de Wet GIS |
| Dienst voor Toegang (DvT) | Dienst voor toegang tot elektronische gezondheidsgegevens (artikel 4 van de verordening; hoofdstuk 3, § 2, Wet GIS) |

## C.2 Wat de verordening al regelt

- *Beschikbaar stellen.* De gegevenshouder stelt elektronische gezondheidsgegevens op verzoek beschikbaar aan de Gezondheidsdata-autoriteit, overeenkomstig een gegevensvergunning (artikel 60, eerste lid, en artikel 68, zevende lid, van de verordening). Volgens overweging 52 is dat een wettelijke verplichting in de zin van artikel 6, eerste lid, onder c, AVG, in overeenstemming met artikel 9, tweede lid, onder i en j, AVG. Volgens de memorie van toelichting bij de Wet GIS is het ook de wettelijke basis om het medisch beroepsgeheim te doorbreken.
- *Geen koppelkenmerk of techniek.* De verordening schrijft niet voor waarmee wordt gekoppeld, wie pseudonimiseert of hoe het opt-outrecht wordt gecontroleerd ([Toetsing aan de EHDS](#toetsing-aan-de-ehds)).
- *Verwijzingen naar het nationale recht.* Op drie plaatsen laat de verordening de regeling uitdrukkelijk aan de lidstaat:
  - de betrouwbare derde die de informatie heeft om de pseudonimisering terug te draaien (artikel 66, derde lid);
  - de voorwaarden waaronder de gegevenshouder een natuurlijke persoon in kennis stelt van een significante bevinding (artikel 58, derde lid);
  - het opt-out-mechanisme (artikel 71, tweede lid).
- *Het burgerservicenummer valt erbuiten.* Voor het gebruik van het burgerservicenummer gelden artikel 87 AVG, artikel 46 UAVG, de Wet algemene bepalingen burgerservicenummer (Wabb) en de Wabvpz.

De Wet GIS is de eerste tranche van de uitvoeringswetgeving. Zij stelt de Gezondheidsdata-autoriteit in en regelt het toezicht. Volgens de memorie van toelichting volgen de nadere invulling van de artikelen 56 tot en met 72 van de verordening en het opt-outrecht in de tweede tranche. Het wetsvoorstel bevat daarvoor al lege paragrafen. De punten in C.3 horen dus grotendeels in de tweede tranche.

## C.3 Wat moet worden geregeld

| | Onderwerp | Plaats in de Wet GIS (voorstel) |
|---|---|---|
| 1 | Burgerservicenummer bij secundair gebruik door de zorgaanbieder | Hoofdstuk 4, § 4 (gebruik burgerservicenummer voor secundair gebruik) |
| 2 | De pseudonimisatiedienst als betrouwbare derde | Hoofdstuk 4, § 3 (aanvullende waarborgen elektronische gezondheidsgegevens) en § 4; voor primair gebruik hoofdstuk 3, § 5 |
| 3 | Pseudo-BSN bij gegevenshouders zonder burgerservicenummer | Hoofdstuk 4, § 3 of § 4 |
| 4 | De BSN-dienst | Hoofdstuk 4, § 4 |
| 5 | De authenticatiedienst en DigiD | Hoofdstuk 3, § 7 (identificatie en authenticatie), hoofdstuk 4, § 4, en de bijlage bij de Wdo |
| 6 | Het opt-outrecht en het zeggenschapsregister | Hoofdstuk 5 (rechten van burgers), naast § 2 (opt-outrecht primair gebruik); de plicht van de gegevenshouder in hoofdstuk 4 |
| 7 | Significante bevindingen | Hoofdstuk 4, § 3, of hoofdstuk 5 |
| 8 | Lokalisatie bij secundair gebruik | Hoofdstuk 4, in samenhang met de lokalisatie bij primair gebruik in hoofdstuk 3 |
| 9 | Toezicht | Hoofdstuk 7 (toezicht en handhaving) |

**1. Burgerservicenummer bij secundair gebruik door de zorgaanbieder** ([GF-ID-ADR-1](#gf-id-adr-1-waarmee-wordt-gekoppeld), [GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding), [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats))

De zorgaanbieder verwerkt het burgerservicenummer om te waarborgen dat de persoonsgegevens bij de verlening van zorg op de cliënt betrekking hebben (artikel 4 Wabvpz). Voor een ander doel mag het alleen als de wet dat doel bepaalt (artikel 46 UAVG). Te regelen is dat de zorgaanbieder, en elke andere gegevenshouder die het burgerservicenummer mag verwerken, het burgerservicenummer ook gebruikt om:
- het bij het beschikbaar stellen door de pseudonimisatiedienst te laten omzetten naar het pseudoniem voor de gegevensvergunning;
- het zeggenschapsregister te raadplegen over het opt-outrecht en over het verzoek om niet in kennis te worden gesteld;
- de natuurlijke persoon bij secundair gebruik te lokaliseren;
- de natuurlijke persoon na een significante bevinding terug te vinden.

**2. De pseudonimisatiedienst als betrouwbare derde** ([GF-ID-ADR-4](#gf-id-adr-4-wie-is-verantwoordelijk-voor-de-pseudonimisatiedienst) tot en met [GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem))

Alleen de Gezondheidsdata-autoriteit of een betrouwbare derde *"overeenkomstig het nationale recht"* mag de informatie hebben om de pseudonimisering terug te draaien (artikel 66, derde lid, van de verordening). Een overeenkomst met de Gezondheidsdata-autoriteit is daarom niet genoeg. Te regelen:
- de aanwijzing van één pseudonimisatiedienst als betrouwbare derde, los van de Gezondheidsdata-autoriteit;
- haar taken: een pseudo-BSN maken, het omzetten naar het pseudoniem voor een andere ontvanger, het terugzetten naar het burgerservicenummer, en een niet-omkeerbaar pseudoniem maken voor de lokalisatiedienst en het zeggenschapsregister;
- de bevoegdheid om daarvoor het burgerservicenummer te verwerken;
- haar rol onder de AVG: zelfstandig verwerkingsverantwoordelijke, of verwerker van de gegevenshouder of van de Gezondheidsdata-autoriteit (overweging 79 van de verordening);
- de waarborgen: omzetten naar het pseudoniem voor een gegevensvergunning alleen op verzoek van de Gezondheidsdata-autoriteit (artikel 68, zevende lid), terugzetten alleen met haar verklaring (punt 7), en geen opslag van het burgerservicenummer of van een koppeltabel;
- nadere regels over sleutelbeheer, beveiliging en logging, bij of krachtens algemene maatregel van bestuur.

Dezelfde dienst maakt bij primair gebruik het pseudoniem voor de lokalisatiedienst. Die taak hoort in hoofdstuk 3, § 5 (gebruik burgerservicenummer voor primair gebruik).

**3. Pseudo-BSN bij gegevenshouders zonder burgerservicenummer** ([GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte), [GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn))

Zonder pseudo-BSN kan een gegevenshouder die het burgerservicenummer niet mag verwerken, het opt-outrecht niet per natuurlijke persoon toepassen en de persoon na een significante bevinding niet terugvinden. Zijn gegevens kunnen dan alleen op persoonskenmerken worden gekoppeld. De verordening verplicht hem niet om alleen voor het opt-outrecht aanvullende gegevens te verkrijgen (artikel 71, achtste lid). Een plicht moet daarom in het nationale recht staan, en ook steunen op het koppelen en op significante bevindingen. Te regelen:
- de plicht om bij de inschrijving van een natuurlijke persoon een pseudo-BSN te verkrijgen, via de authenticatiedienst of de BSN-dienst, en dat te bewaren;
- voor bestaande gegevens: de plicht om het pseudo-BSN bij het beschikbaar stellen op te vragen via de BSN-dienst;
- de categorieën gegevenshouders waarvoor de plicht geldt (artikel 51 van de verordening);
- de doeleinden waarvoor de gegevenshouder het pseudo-BSN gebruikt, en het verbod om het voor andere doeleinden te gebruiken of buiten de pseudonimisatiedienst om te koppelen;
- dat de plicht geen plicht inhoudt om andere persoonskenmerken vast te leggen (artikel 5, eerste lid, onder c, AVG).

Schrijft de wet het gebruik van het pseudo-BSN voor, dan kan het een *"nummer dat ter identificatie van een persoon bij wet is voorgeschreven"* worden (artikel 46 UAVG). Het mag dan alleen worden gebruikt voor de doeleinden die de wet bepaalt.

**4. De BSN-dienst** ([GF-ID-ADR-2](#gf-id-adr-2-vooraf-registreren-of-koppelen-bij-uitgifte), [GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn))

Een partij die geen overheidsorgaan is, mag het burgerservicenummer alleen gebruiken als dat bij of krachtens de wet is voorgeschreven (artikel 1, onderdeel d, onder 2°, Wabb). Te regelen:
- de aanwijzing van de BSN-dienst en haar taak: bij persoonskenmerken het burgerservicenummer opzoeken of een burgerservicenummer controleren, en het door de pseudonimisatiedienst laten omzetten naar een pseudo-BSN;
- de toegang tot de voorzieningen van de beheervoorziening burgerservicenummer (artikel 3, eerste lid, onder c en d, Wabb), zoals zorgaanbieders die hebben via het register van artikel 14 Wabvpz, of tot de basisregistratie personen;
- de afhandeling als er geen of meer treffers zijn.

**5. De authenticatiedienst en DigiD** ([GF-ID-ADR-3](#gf-id-adr-3-hoe-verkrijgt-een-bronhouder-zonder-bsn-een-pseudo-bsn))

DigiD mag alleen worden gebruikt voor de toegang tot elektronische dienstverlening door bestuursorganen en aangewezen organisaties (artikel 8, eerste lid, Wdo). Zorgaanbieders zijn aangewezen voor de taken waarvoor zij op grond van de Wabvpz het burgerservicenummer gebruiken (bijlage bij artikel 2, tweede lid, onderdeel a, Wdo). Een authenticatiedienst voor gegevenshouders zonder burgerservicenummer is niet aangewezen. Te regelen of na te gaan:
- de aanwijzing van de authenticatiedienst als aangewezen organisatie (artikel 2, zesde lid, Wdo), of een categorie in de bijlage bij de Wdo (artikel 2, vierde lid, Wdo);
- of het inloggen met DigiD om een pseudo-BSN aan een gegevenshouder te laten verstrekken, toegang is tot een elektronische dienst van de authenticatiedienst of van de gegevenshouder;
- of het doorsturen van een burgerservicenummer dat voor de pseudonimisatiedienst is versleuteld, een verwerking van het burgerservicenummer door de authenticatiedienst is, en zo ja, de bevoegdheid daartoe;
- de samenhang met de dienst voor toegang tot elektronische gezondheidsgegevens, die dezelfde authenticatiedienst gebruikt (hoofdstuk 3, § 2 en § 7, Wet GIS).

**6. Het opt-outrecht en het zeggenschapsregister** ([GF-ID-ADR-7](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar), [GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem), [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats))

De lidstaat voorziet in een opt-out-mechanisme (artikel 71, tweede lid, van de verordening). Volgens de memorie van toelichting wordt het opt-outrecht voor primair en secundair gebruik in de tweede tranche uitgewerkt. Het wetsvoorstel heeft nu alleen een paragraaf voor het opt-outrecht bij primair gebruik (hoofdstuk 5, § 2). Te regelen:
- het zeggenschapsregister als opt-out-mechanisme voor secundair gebruik, en de beheerder ervan;
- dat het register de natuurlijke persoon kent onder een niet-omkeerbaar pseudoniem van de pseudonimisatiedienst, en niet onder het burgerservicenummer; dat is hetzelfde pseudoniem als bij primair gebruik;
- dat de natuurlijke persoon zijn keuzes vastlegt via een burgerinterface, met DigiD en de authenticatiedienst;
- de plicht van de gegevenshouder om vóór het beschikbaar stellen per natuurlijke persoon het register te raadplegen;
- het peilmoment.

*Peilmoment.* Dit ontwerp toetst het opt-outrecht op het moment van beschikbaarstelling. De verordening gaat uit van het moment waarop de gegevensvergunning is afgegeven (artikel 71, derde lid), en verplicht de gegevenshouder om de gegevens overeenkomstig de vergunning beschikbaar te stellen (artikel 60, eerste lid). Overweging 52 laat strengere maatregelen en aanvullende waarborgen op nationaal niveau toe, maar met het oog op de gevoeligheid van bepaalde gegevens. Of het peilmoment bij beschikbaarstelling daaronder valt, moet worden nagegaan. Kan het niet, dan bewaart het register de datum van de opt-out, en stuurt de gegevenshouder de datum van de gegevensvergunning mee.

**7. Significante bevindingen** ([GF-ID-ADR-7](#gf-id-adr-7-omkeerbaar-of-niet-omkeerbaar), [GF-ID-ADR-9](#gf-id-adr-9-wie-re-identificeert-bij-een-nevenbevinding), [GF-ID-ADR-10](#gf-id-adr-10-waar-en-wanneer-vindt-de-zeggenschapscheck-plaats))

De gegevenshouder stelt de natuurlijke persoon of de gezondheidswerker die hem behandelt in kennis *"onder de in het nationale recht vastgelegde voorwaarden"* (artikel 58, derde lid, van de verordening). De natuurlijke persoon heeft het recht te verzoeken om niet in kennis te worden gesteld. Te regelen:
- de voorwaarden waaronder de gegevenshouder in kennis stelt, en dat hij daarover beslist;
- de bevoegdheid van de gegevenshouder om de pseudonimisatiedienst het pseudoniem uit de beveiligde verwerkingsomgeving te laten terugzetten naar het burgerservicenummer of naar zijn eigen pseudo-BSN;
- de verklaring van de Gezondheidsdata-autoriteit dat de melding via haar is gekomen, als voorwaarde voor het terugzetten, en haar taak om die verklaring af te geven;
- de registratie van het verzoek om niet in kennis te worden gesteld in het zeggenschapsregister, en de plicht van de gegevenshouder om dat verzoek te raadplegen voordat hij in kennis stelt;
- welke gegevenshouder in kennis stelt als de gegevens uit meer bronnen komen.

**8. Lokalisatie bij secundair gebruik** ([GF-ID-ADR-8](#gf-id-adr-8-voor-wie-geldt-een-pseudoniem))

De lokalisatiedienst is ingericht voor primair gebruik. Bij secundair gebruik zoekt een gegevenshouder met hetzelfde pseudoniem, en vindt hij ook de vermeldingen die zorgaanbieders voor primair gebruik hebben geregistreerd. Verdere verwerking voor wetenschappelijk onderzoek of statistische doeleinden geldt volgens de AVG niet als onverenigbaar met het oorspronkelijke doel (artikel 5, eerste lid, onder b, met artikel 89, eerste lid, AVG). Dat dekt niet alle doeleinden van artikel 53 van de verordening, zoals beleidsvorming of onderwijs. Te regelen:
- de taak van de lokalisatiedienst bij secundair gebruik;
- dat een zoekvraag bij secundair gebruik alleen kan binnen een gegevensvergunning, en dat de gegevenshouders die de natuurlijke persoon hebben geregistreerd, de zoekvraag aan die vergunning toetsen;
- dat de pseudonimisatiedienst voor een gegevenshouder met alleen een pseudo-BSN het pseudoniem voor de lokalisatiedienst maakt.

**9. Toezicht**

Het toezicht op de pseudonimisatiedienst, de BSN-dienst, de authenticatiedienst en het zeggenschapsregister moet worden belegd, naast het toezicht van de Autoriteit persoonsgegevens op de naleving van de AVG.

## C.4 Bestaande regelgeving die wordt geraakt

| Regeling | Bepaling | Gevolg |
|---|---|---|
| AVG | Artikel 87 | De lidstaat kan voorwaarden stellen aan de verwerking van een nationaal identificatienummer, met passende waarborgen. Dat is de ruimte voor de regeling in C.3, punt 1 tot en met 5. |
| UAVG | Artikel 46 | Het burgerservicenummer mag alleen worden gebruikt voor doeleinden die de wet bepaalt. De Wet GIS moet die doeleinden bij secundair gebruik bepalen. Mogelijk geldt dit ook voor een pseudo-BSN dat de wet voorschrijft (C.3, punt 3). |
| Wabb | Artikel 1, onderdeel d, en artikel 12 | Een partij die geen overheidsorgaan is, is alleen gebruiker van het burgerservicenummer als de wet het gebruik voorschrijft. De gebruiker vergewist zich ervan dat het nummer bij de persoon hoort. Dit raakt de pseudonimisatiedienst, de BSN-dienst en mogelijk de authenticatiedienst. |
| Wabvpz | Artikel 4 en artikel 14 | Het doel van het gebruik van het burgerservicenummer door de zorgaanbieder uitbreiden naar secundair gebruik, in de Wabvpz of in de Wet GIS. De toegang tot de BSN-voorzieningen via het register van artikel 14 eventueel openstellen voor de BSN-dienst. |
| Wdo | Artikel 1, artikel 2, artikel 8 en de bijlage | De authenticatiedienst aanwijzen. Het begrip *authenticatiedienst* in artikel 1 heeft een andere betekenis. |
| Wet basisregistratie personen | Autorisatie | Alleen als de BSN-dienst de basisregistratie personen raadpleegt. |
| Wet GIS | Artikel 1.1 | Begripsbepalingen toevoegen voor de pseudonimisatiedienst, het pseudo-BSN, de BSN-dienst, de authenticatiedienst en het zeggenschapsregister. |

## C.5 Open juridische vragen

- **Aanname 1.** Is een pseudo-BSN geen burgerservicenummer in de zin van de Wabb, zodat het gebruik ervan geen grondslag voor het burgerservicenummer vraagt? Zie ook C.3, punt 3, over artikel 46 UAVG.
- **Aanname 2.** Vraagt het omzetten van het burgerservicenummer naar een pseudo-BSN, en terug, voor secundair gebruik een wettelijke grondslag? Dit document gaat daarvan uit (C.3, punt 1 tot en met 4).
- **Peilmoment.** Mag de nationale wet het opt-outrecht toetsen op het moment van beschikbaarstelling (C.3, punt 6)?
- **Versleuteld burgerservicenummer.** Verwerkt de authenticatiedienst het burgerservicenummer als zij een voor de pseudonimisatiedienst versleuteld burgerservicenummer doorstuurt (C.3, punt 5)?
- **Gegevens zonder pseudo-BSN.** Mag een gegevenshouder gegevens beschikbaar stellen van een natuurlijke persoon voor wie de BSN-dienst geen eenduidige treffer vindt, en voor wie hij het zeggenschapsregister dus niet kan raadplegen? Het opt-outrecht geldt als de gegevens *"in een dataset kunnen worden geïdentificeerd"* (artikel 71, derde lid), en een gegevenshouder hoeft niet alleen voor het opt-outrecht aanvullende gegevens te verkrijgen (artikel 71, achtste lid).
