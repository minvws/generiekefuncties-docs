# Multi-interpretabiliteit van de NEN-normen bij identificatie en authenticatie

Analyse bij de notitie "Reactie escalatie Twiin": Harmonisatie van authenticatie en autorisatie voor BgZ en eOverdracht (concept 13 juli 2026)

Betrokken normen: NEN 7510-1:2024, NEN 7510-2:2017, NEN 7512:2022, NEN 7513:2018 en NEN 7545:2026.

---

## 1. Inleiding en leeswijzer

De escalatie van Twiin en de reactie daarop van VWS draaien om één vraag: moet bij een uitwisseling tussen twee zorgaanbieders de individuele zorgverlener van de tegenpartij worden geauthenticeerd, of volstaat de organisatie-identiteit (URA)?

Deze notitie laat zien dat beide antwoorden met de normen in de hand sluitend te onderbouwen zijn. Dat is geen retorische oefening: het is de kern van de patstelling. De normen bevatten letterlijk tegengestelde signalen, en zonder een expliciete, gedocumenteerde keuze op stelselniveau kan elke deelnemer zijn eigen lezing volhouden en zich daarbij op de norm beroepen.

De opbouw:

- Hoofdstuk 2 bevat de probleemstelling: waar de patstelling vandaan komt en welke vragen dit document beantwoordt.
- Hoofdstuk 3 is de managementsamenvatting, voor wie alleen de uitkomst en de beslisvraag nodig heeft.
- Hoofdstuk 4 benoemt de scharnierpunten waarop de interpretaties uiteenlopen.
- Hoofdstuk 5 zet eerst de terminologie recht en beschrijft daarna de use case (eOverdracht).
- Hoofdstuk 6 en 7 werken de twee uiterste interpretaties uit, elk met artikelverwijzingen.
- Hoofdstuk 8 zet de verschillen op een rij, per thema, met de toepasselijke artikelen.
- Hoofdstuk 9 beredeneert waarom de notitie "Reactie escalatie Twiin" volledig klopt volgens de normen.
- Hoofdstuk 10 beredeneert waarom diezelfde notitie niet klopt.
- Hoofdstuk 11 trekt de conclusie: wat de normen wel eenduidig eisen.

Positie van NEN 7545:2026. Deze norm is voor deze discussie beslissend en tegelijk de bron van nieuwe ambiguïteit. NEN 7545 is de Wegiz-norm voor de eOverdracht zelf en bevat in § 8.3 (en in de normatieve bijlage A) expliciete eisen aan identificatie en authenticatie. Maar de norm verwijst voor de uitwerking daarvan door naar NEN 7518 (in voorbereiding), NEN 7517 (in voorbereiding) en de LDN TA Pull (in ontwikkeling), en het voorwoord stelt onomwonden dat de norm herzien moet worden zodra de normen voor de generieke functies (identificatie, authenticatie en toestemming) beschikbaar zijn. NEN 7545 is dus normatief en zelfverklaard voorlopig. Beide kampen kunnen dat gebruiken.

---

## 2. Probleemstelling

### 2.1 Aanleiding

Op 31 maart 2026 heeft het ministerie van VWS een escalatiememo van Twiin ontvangen met de titel "Overbrugging authenticatie eis voor landelijke databeschikbaarheid". Daarin worden drie vragen gesteld: hoe authenticatie op zorgaanbiederniveau wordt vormgegeven, ook op termijn onder het Dezi-stelsel; welke identificatie- en authenticatiemethoden worden geaccepteerd voor de zorgverlener dan wel de zorgaanbieder bij de verschillende communicatiepatronen; en welke risico's met techniek worden afgedekt en welke met afspraken en processen.

De concept-notitie "Reactie escalatie Twiin" van 13 juli 2026 beantwoordt die vragen met een federatief vertrouwensmodel: iedere zorgaanbieder authenticeert de eigen zorgverleners en systemen binnen het eigen domein, en over de organisatiegrens heen wordt uitsluitend de organisatie-identiteit geverifieerd. Op die notitie is vanuit het veld veel en onderling tegenstrijdige reactie gekomen. Kenmerkend is dat vrijwel meerdere reacties zich beroepen op dezelfde normen: NEN 7510, NEN 7512 en NEN 7513. Daarbij werden ook NEN 7540 en NEN 7545 genoemd.

### 2.2 Het probleem

De discussie is niet met een verwijzing naar een norm te beslechten, omdat de normen op de beslissende punten tegengestelde signalen geven. Beide uiterste posities zijn met artikelen te onderbouwen:

- de authenticatie van de individuele zorgverlener hoort thuis binnen het eigen domein van elke zorgaanbieder, en over de grens volstaat de organisatie-identiteit;
- de authenticatie van de individuele zorgverlener moet in de uitwisseling zelf worden meegedragen, aan beide zijden, op eIDAS-betrouwbaarheidsniveau hoog.

Vier oorzaken maken dat mogelijk.

Ten eerste het normatieve gewicht. NEN 7510 formuleert beheersmaatregelen met "behoren te", waardoor zij risicogebaseerd invulbaar zijn. NEN 7512 en NEN 7545 gebruiken voor dezelfde materie "moeten". NEN 7512 verklaart zichzelf in het voorwoord bovendien tot nadere invulling van NEN 7510, zonder dat is uitgewerkt hoe die zwaardere formulering doorwerkt in de lichtere.

Ten tweede het begrip gebruiker. Geen van de normen definieert of daarmee de gebruiker van het eigen informatiesysteem wordt bedoeld, of de persoon die de uitgewisselde gegevens feitelijk raadpleegt. NEN 7512 § 6.1.8-4 spreekt van "gebruikers van de uit te wisselen persoonlijke gezondheidsinformatie", NEN 7510-2 9.4.1 van gebruikers van een gezondheidsinformatiesysteem. Wie die twee gelijkstelt komt bij de ene pool uit, wie ze onderscheidt bij de andere.

Ten derde de openstaande normen. NEN 7545 stelt in § 8.3 eisen aan identificatie en authenticatie, maar verwijst voor de uitwerking naar NEN 7518, voor toestemming naar NEN 7517, en voor de koppelvlakken naar de LDN TA Pull. Alle drie zijn nog niet beschikbaar. Het voorwoord kondigt herziening aan zodra zij er zijn. De norm is daarmee tegelijk normatief en zelfverklaard voorlopig.

Ten vierde de aard van de uitwisseling. De eOverdracht verloopt in de in scope zijnde use case als een notified pull: de bron notificeert, de ontvanger haalt op, en dat ophalen mag volgens NEN 7545 § 5.3, stap 5 volledig geautomatiseerd gebeuren. Persoonsgebonden authenticatie-eisen grijpen daarmee aan op een processtap waarin aan de ontvangende kant geen persoon aanwezig hoeft te zijn.

### 2.3 Waarom dit ertoe doet

BgZ en eOverdracht zijn wettelijk verplichte gegevensuitwisselingen onder de Wegiz. Bij het beproeven bleek dat de technische afspraken voor beide uiteenliepen, waardoor zorgaanbieders twee vergelijkbare voorzieningen zouden moeten inrichten en per uitwisseling zouden moeten bepalen welke methode geldt. Harmonisatie is daarmee een randvoorwaarde en geen wens.

Zolang de interpretatiekwestie open blijft, heeft dat drie gevolgen. Deelnemers kunnen elk hun eigen lezing volhouden en zich daarbij op de norm beroepen, wat de harmonisatie ondergraaft die de notitie juist beoogt. Leveranciers van zorginformatiesystemen en elektronische uitwisselingssystemen bouwen op verschillende aannames, terwijl NEN 7545 hoofdstuk 7 juist eist dat zij aantoonbaar aan één set eisen voldoen. En de toezichthouder heeft geen eenduidig toetsingskader, terwijl NEN 7545 hoofdstuk 6 aankondigt dat de IGJ deze norm naar verwachting binnen haar toetsingskader zal hanteren.

### 2.4 Vraagstelling

Dit document beantwoordt drie vragen:

1. Hoe kunnen NEN 7510, NEN 7512, NEN 7513 en NEN 7545 tot tegengestelde conclusies leiden over de authenticatie bij de eOverdracht, en op welke artikelen steunt elke lezing?
2. Is de notitie "Reactie escalatie Twiin" normconform? De vraag wordt twee keer beantwoord: één keer bevestigend en één keer ontkennend, beide zo sterk mogelijk onderbouwd.
3. Wat volgt daaruit: wat staat wel vast, welke keuze moet worden gemaakt, en waar hoort die keuze normatief thuis?

### 2.5 Afbakening en werkwijze

In scope is de uitwisseling van de eOverdracht tussen twee zorgaanbieders, met de afbakening die de notitie zelf hanteert: er gaat een verwijzing, overdracht of aanmelding aan vooraf. De bevraging zonder voorafgaande verwijzing wordt als variant meegenomen, omdat de notitie haar zelf in haar vooruitblik behandelt en claimt dat het model daarop is voorbereid. Als toetsingskader gelden NEN 7510-1:2024, NEN 7510-2:2017, NEN 7512:2022, NEN 7513:2018 en NEN 7545:2026.

Buiten scope zijn de inhoudelijke BgZ-specificaties, de uitwisseling met een PGO of een onderzoeksinstelling, de werking van de toestemmingsvoorziening Mitz, en een zelfstandige juridische toets aan AVG, WGBO en Wabvpz voorbij wat de normen zelf aanhalen.

De werkwijze is bewust polariserend. Beide uiterste lezingen worden consequent doorgevoerd op één concrete casus, zodat zichtbaar wordt welke artikelen elke lezing draagt en waar de normen elkaar tegenspreken. Dit document spreekt zelf geen voorkeur uit voor een van beide polen; het maakt de keuze zichtbaar die het stelsel nog moet maken.

---

## 3. Managementsamenvatting

De kern in vier zinnen. De notitie "Reactie escalatie Twiin" kiest een federatief model waarin over de organisatiegrens alleen de organisatie-identiteit wordt geverifieerd. Dat model is met de normen in de hand te verdedigen, en met dezelfde normen in de hand te weerleggen. De normen kiezen namelijk niet: zij bevatten op dit punt letterlijk tegengestelde bepalingen, deels binnen één en dezelfde norm. De patstelling is daarom geen normvraag maar een openstaande stelselkeuze, en die keuze is nergens vastgelegd op de plaats waar zij volgens de normen thuishoort.

De twee lezingen, kort. In de ene lezing is de uitwisseling een transactie tussen twee zelfstandig verwerkingsverantwoordelijke organisaties: elk authenticeert de eigen mensen, de tegenpartij mag daarop afgaan, en herleidbaarheid tot de persoon ontstaat achteraf uit de combinatie van twee logbestanden. In de andere lezing is de uitwisseling toegang tot het brondossier op afstand: de norm bindt toegang tot persoonlijke gezondheidsinformatie aan een geïdentificeerde natuurlijke persoon met een rol en een zorgrelatie, en federatie mag die eis niet verdunnen.

Zes bevindingen:

1. De hardste botsing zit in NEN 7545. Beheersmaatregel § 8.3 g, opgenomen in de normatieve bijlage A, eist dat de bij de uitwisseling betrokken actoren, zoals zorgverleners, op eIDAS-niveau hoog worden geauthenticeerd, voor verzender en ontvanger. Dit kan op verschillende manieren gelezen worden. Aan de ene kant moeten zorgverleners op hoog niveau geauthenticeerd worden, maar er staat niet waar dit moet gebeuren. Aan de andere kan de lezing zijn dat zorgverleners door beide zijden van de uitwisseling geauthenticeerd moeten worden. Eis 2 van de notitie stelt: geen authenticatie van individuele zorgverleners of systemen van de partner.
2. Dezelfde norm spreekt zichzelf tegen. NEN 7545 § 6.5.3 belegt de autorisatie uitdrukkelijk in de toegangsbeheersing van het eigen zorginformatiesysteem, § 8.3 e legt de bevoegdheidstoets bij de eigen werkgever, en § 5.3, stap 5 staat toe dat het ophalen volledig automatisch gebeurt, dus zonder aanwezige actor. Wie die bepalingen leidend acht, komt bij het model van de notitie uit.
3. Op de organisatie-eis is de notitie juist wel conform. NEN 7545 § 8.3 h eist authenticatie van de betrokken zorgaanbieders, en noemt het URA als identificatie. Dat is precies wat de notitie invult, en zij doet het cryptografisch sterker dan het voorbeeld dat de norm noemt.
4. De overgangsregeling wordt opgerekt. NEN 7545 § 8.3 voorziet in een overgangsregeling zolang middelen op niveau hoog niet beschikbaar of niet goed toepasbaar zijn. De notitie past daarbinnen, maar presenteert haar aanpak uitdrukkelijk ook als eindbeeld voor de lange termijn. Een overgangsregeling zonder einddatum en zonder migratiepad is een permanente afwijking.
5. Twee eisen worden in geen enkele lezing gehaald. NEN 7513 § 7.3 eist bij elke gebeurtenis een verantwoordelijke gebruiker die altijd een natuurlijk persoon is, verplicht, en dat is in het huidige model aan beide zijden onvervulbaar. En de risicoklassebepaling van NEN 7512 hoofdstuk 5, met de bijbehorende documentatie van restrisico's, ontbreekt, terwijl juist die bepaling zou uitwijzen of de ondertekeningseis van § 6.2.7 van toepassing is.
6. De keuze wordt op de verkeerde plaats gemaakt. NEN 7545 § 8.2.2 en NEN 7522 beleggen de specificatie van koppelvlakken en autorisatieprofiel bij de standaardhouder en de stelselbeheerder, via de LDN TA Pull. Een concept-notitie kan daarvoor input zijn, maar stelt die keuze niet vast.

Wat niet omstreden is. Vier zaken volgen ondubbelzinnig uit de normen en verdienen geen verdere discussie: het URA als stelselbrede organisatie-identificatie; de plicht van elke zorgaanbieder om de eigen medewerkers met ten minste twee factoren te authenticeren; logging conform NEN 7513 aan zowel verzendende als ontvangende zijde; en het vooraf vastleggen van toegang en rechten met elke partij waarmee cliëntgegevens worden uitgewisseld, waarvoor deelname aan een landelijk afsprakenstelsel volstaat.

De beslisvraag. Alles draait op één vraag, die met een korte tekstuele ingreep te beslechten is: op welke stap van het uitwisselingsmodel grijpt NEN 7545 § 8.3 g aan? Op stap 5, het uitwisselen, waar bij een notified pull geen actor aanwezig hoeft te zijn, of op stap 1 en stap 8, het vastleggen en het raadplegen, waar de zorgverlener daadwerkelijk handelt? Wie die vraag beantwoordt, beslist tegelijk of het model van de notitie normconform is.

---

## 4. Waar de rek in de normen zit

De tegenstrijdigheid ontstaat op zes scharnierpunten. Beide interpretaties zijn niets anders dan een consequente keuze op elk daarvan.

| # | Scharnierpunt | Pool A leest | Pool B leest |
|---|---|---|---|
| 1 | Wie is de 'gebruiker' in NEN 7510-2 9.4.1 / NEN 7512 6.1.8-4? | gebruiker van het eigen systeem | gebruiker van de uit te wisselen gegevens, ongeacht domein |
| 2 | Is dit transport of toegang? | informatietransport tussen twee verwerkingsverantwoordelijken (NEN 7510-2 13.2) | toegang tot het bronsysteem (NEN 7510-2 hfd. 9) |
| 3 | Normatief gewicht | NEN 7510 zegt 'behoren te', dus risicogebaseerd invulbaar | NEN 7512 en NEN 7545 zeggen 'moeten', dus een harde eis |
| 4 | Waar mag herleidbaarheid worden samengesteld? | achteraf, uit twee logs (NEN 7513 8.6, exportfaciliteit) | in de transactie zelf (NEN 7513 5.1 + 7.3) |
| 5 | Op welke stap grijpt de authenticatie-eis aan? | op vastleggen (stap 1) en raadplegen (stap 8), waar de zorgverlener handelt | op uitwisselen (stap 5), ook als dat geautomatiseerd verloopt |
| 6 | Status van de openstaande normen (7517, 7518, LDN TA Pull) | een lacune die het afsprakenstelsel mag invullen | een lacune die de al vastgestelde eisen van NEN 7545 8.3 niet opheft |

---

## 5. De use case: eOverdracht

De notitie bakent haar scope scherp af, en die afbakening draagt vrijwel het hele betoog. In scope is: het gericht verzenden van zorggegevens tussen twee zorgaanbieders binnen BgZ en eOverdracht, waaraan een verwijzing, overdracht of aanmelding voorafgaat, bijvoorbeeld door telefonisch contact tussen zorgverleners, zodat bij de ontvangende organisatie sprake is van een (startende) behandelrelatie en van veronderstelde toestemming. Buiten scope zijn: de toestemmingscontrole bij de verzender, de bevraging zonder voorafgaande verwijzing, en uitwisseling met een PGO of onderzoeksinstelling.

Om te kunnen beoordelen wat die afbakening precies wegneemt en wat zij laat staan, is de use case hieronder uitgeschreven met benoemde actoren en met het volledige verloop, inclusief het deel dat aan de transactie voorafgaat en dat de notitie als gegeven aanneemt.

### 5.1 Terminologie: gericht verzenden, beschikbaar stellen en bevragen

De notitie en NEN 7545 gebruiken voor hetzelfde patroon verschillende woorden. Omdat dat verschil in de discussie tot misverstanden leidt, eerst de vertaaltabel.

| Term in de notitie | Term in NEN 7545 | Gangbare term | Vindplaats |
|---|---|---|---|
| gericht verzenden | gericht beschikbaar stellen (usecase 1) | push | NEN 7545 § 3.12, § 5.3 |
| (databevraging) | gericht bevragen (usecase 2) | pull | NEN 7545 § 3.11, § 5.4 |
| (niet benoemd) | beschikbaar stellen | gegevens raadpleegbaar maken | NEN 7545 § 3.6 |

De termen van de notitie en van de norm wijzen hier naar hetzelfde. NEN 7545 gebruikt de formulering van de notitie zelf, in § 8.2.2.1 en § 7.4.10.1: "Voor usecases waar sprake is van gericht beschikbaar stellen (of gericht verzenden)" en "Voor het gericht beschikbaar stellen door middel van gericht verzenden (push)". Gericht verzenden is in de norm dus de push-realisatie van gericht beschikbaar stellen. In dit document wordt de term van de norm aangehouden, met dezelfde betekenis als het gericht verzenden uit de afbakening van de notitie.

Let wel op het onderscheid tussen § 3.12 en § 3.6. Gericht beschikbaar stellen is het selecteren en versturen van gegevens naar een benoemde zorgaanbieder. Beschikbaar stellen zonder het voorvoegsel is iets anders: het verwerken van gegevens in het zorginformatiesysteem of elektronisch uitwisselingssysteem in het standaard uitwisselformaat, zodat andere zorgaanbieders ze kunnen benaderen of opvragen. Dat onderscheid keert terug in § 10.8, waar de toestemmingsbepaling van § 6.4.1 op het tweede begrip aangrijpt.

Een tweede punt is belangrijker dan de woordkeuze. De scheidslijn die de notitie feitelijk hanteert is niet push tegenover pull, maar de aanwezigheid van een voorafgaande verwijzing. Zij verklaart buiten scope: "een databevraging zonder voorafgaande verwijzing (geen veronderstelde toestemming)". Wat wordt uitgesloten is dus niet de bevraging als zodanig, maar de bevraging waaraan geen verwijzing, overdracht of aanmelding voorafgaat. Het hele juridische betoog van de notitie hangt aan die verwijzing en aan de veronderstelde toestemming die daaruit volgt, niet aan de vraag welke partij de verbinding opent. Dat verklaart waarom het ophalen in stap t6b hieronder, technisch een pull, wel degelijk binnen de scope van de notitie valt: er ging een aanmelding aan vooraf.

Tot slot een waarschuwing bij het woord pull, dat in deze context drie dingen kan betekenen:

- gericht bevragen, waarbij de ontvangende zorgaanbieder opvraagt zonder voorafgaande notificatie;
- de ophaalstap binnen het gericht beschikbaar stellen, waarbij de ontvanger ophaalt na een notificatie van de bron, ook wel notified pull;
- de LDN TA Pull, een documentnaam. Verwarrend genoeg legt NEN 7545 § 8.2.2.1 juist de koppelvlakken voor de push in dat document vast.

### 5.2 De actoren en hun rollen

| Persoon / partij | Functie | Rol volgens NEN 7545 tabel 1 |
|---|---|---|
| Mw. J. de Vries (78) | patiënt | Toestemminggever eOverdracht |
| Dr. Ayşe Yıldırım | klinisch geriater, hoofdbehandelaar in het ziekenhuis | zorgverlener; noteert de medische diagnosegegevens die in de verpleegkundige overdracht worden overgenomen (tabel 1, voetnoot a) |
| Kwabena Mensah | transferverpleegkundige, ziekenhuis | Vastlegger eOverdracht en Verzender eOverdracht (verzendende/beschikbaarstellende kant) |
| Fatima el Amrani | secretaresse transferbureau, ziekenhuis | zorgmedewerker die feitelijk verstuurt/opvraagt onder verantwoordelijkheid van Kwabena, toegestaan mits vastgelegd in een lokaal autorisatieprotocol (tabel 1, voetnoot b) |
| Priya Nandlal | wijkverpleegkundige, VVT | Opvrager eOverdracht (ontvangende/opvragende kant) |
| Ziekenhuis Sint-Antonius | zorgaanbieder, bronhouder (§ 3.7) | Verstrekker eOverdracht |
| Zorggroep Duinrand (VVT) | zorgaanbieder | Ontvanger eOverdracht |

### 5.3 Het verloop

* **t0: Het ontslagbesluit**
Mevrouw De Vries is drie weken opgenomen na een heupfractuur. Dr. Yıldırım stelt vast dat mevrouw De Vries met wijkverpleging naar huis kan, en legt de medische ontslaggegevens vast in het medisch dossier; die vormen de basis voor de BgZ-lijn richting de huisarts en leveren de diagnosegegevens die Kwabena in de verpleegkundige overdracht overneemt. De behandelrelatie tussen het ziekenhuis en mevrouw De Vries loopt op dit moment nog.

* **t1: Het telefoontje**
Kwabena Mensah belt Zorggroep Duinrand en spreekt Priya Nandlal. Zij bespreken de zorgvraag: driemaal daags wondzorg, mobilisatie, medicatiebegeleiding. Priya zegt toe dat de zorggroep de zorg per vrijdag kan overnemen. Dit is het "telefonisch contact tussen zorgverleners" waarnaar de afbakening van de notitie verwijst. Twee identificeerbare, BIG-geregistreerde zorgverleners kennen elkaars naam en organisatie, maar dit contact vindt buiten elk informatiesysteem plaats en laat geen digitaal spoor na.

* **t2: De aanmelding (NEN 7545 usecase 3, § 5.5)**
Fatima el Amrani stuurt, onder verantwoordelijkheid van Kwabena, het aanmeldbericht naar Zorggroep Duinrand: een geminimaliseerde selectie uit het overdrachtsbericht, zonder meer klinische informatie dan noodzakelijk.

* **t3: De acceptatie**
De zorggroep bevestigt de aanmelding. Volgens de redenering van de notitie ontstaat hier de (startende) behandelrelatie tussen de VVT en mevrouw De Vries, en daarmee de veronderstelde toestemming.

* **t4: De instemming van de patiënt**
Dr. Yıldırım en Kwabena bespreken de overdracht met mevrouw De Vries; zij stemt mondeling in. Er wordt niets schriftelijk vastgelegd; volgens het juridisch kader in de notitie is dat ook niet nodig, omdat de WGBO geen schriftelijke vastlegging van de behandelrelatie eist en de toestemming voor de gegevensuitwisseling besloten ligt in de instemming met de verwijzing.

* **t5: Het opstellen van de eOverdracht (NEN 7545 usecase 1, § 5.3; stappen 1 t/m 4 van § 5.6)**
Kwabena stelt de verpleegkundige overdracht op in het ziekenhuis-XIS: actuele verpleegproblemen, verpleegkundige diagnoses, doelstellingen, gewenste resultaten, interventies. Hij beoordeelt welke gegevens relevant zijn voor de continuïteit van zorg en of de privacy van derden niet wordt geschaad (§ 5.6.4). Mevrouw De Vries ziet de overdracht in en vraagt om afscherming van één passage over een familieomstandigheid; Kwabena schermt die af. Dat de patiënt de overdracht voorafgaand aan de verzending kan zien is specifiek voor deze use case: NEN 7545 § 7.4.4 c merkt op dat die toonfunctie bij gericht bevragen niet altijd realistisch is en daar niet van toepassing. Het systeem extraheert en converteert vervolgens naar HL7 FHIR.

* **t6a: De notificatie (stap 4 van § 5.3: de push)**
Kwabena selecteert Zorggroep Duinrand. Het ziekenhuis-XIS stuurt een notificatie naar de zorggroep.

    Technisch, conform de bijlage van de notitie: het ziekenhuis vraagt via de OAuth client-credentials flow een access token aan voor de endpoint van de ontvanger, met client-authenticatie via private_key_jwt, ondertekend met de sleutel bij het UZI-servercertificaat van het ziekenhuis. In het RAR-object (type: nl-gis-v1) staan purpose_of_use = TREAT, locations = de FHIR-endpoint van Zorggroep Duinrand en locations_organization_id = de URA van de zorggroep. Het transport is beveiligd met mTLS. De zorggroep verifieert hier de URA van het ziekenhuis.

* **t6b: Accepteren en ophalen (stap 5 van § 5.3: de notified pull)**
De zorggroep accepteert de notificatie; de eOverdracht wordt opgehaald bij het ziekenhuis. NEN 7545 § 5.3, stap 5 voegt daaraan toe: "Dit ophalen kan ook automatisch gebeuren op het moment dat de notificatie binnenkomt." In de inrichting van Zorggroep Duinrand gebeurt dat inderdaad automatisch, donderdag om 16:41; Priya Nandlal opent de cliënt pas de volgende ochtend.

    Voor deze stap draait de tokenrichting om: het ECD van de zorggroep vraagt een token aan voor de FHIR-endpoint van het ziekenhuis, ondertekend met de sleutel bij het UZI-servercertificaat van de zorggroep. Het ziekenhuis verifieert hier de URA van de zorggroep.

    In geen van beide berichten komen Priya, Kwabena, dr. Yıldırım, het telefoontje van t1 of de aanmelding van t2 voor. De notificatie zegt: organisatie met URA ...12345678 levert, met het doel behandeling, aan organisatie met URA ...87654321. Het ophaalverzoek zegt: organisatie met URA ...87654321 vraagt, met het doel behandeling, een resource op bij organisatie met URA ...12345678. Bij het ophalen is er bovendien geen mens: het ECD handelt op de binnenkomende notificatie.

* **t7 t/m t8: Ontvangen, verwerken, raadplegen**
Het systeem van de zorggroep ontvangt en verwerkt de eOverdracht. Vrijdagochtend leest Priya Nandlal de overdracht, neemt de relevante onderdelen over in het ECD en hergebruikt ze bij haar eerste huisbezoek. Dit is het eerste moment in de hele keten waarop aan de ontvangende kant een geauthenticeerde natuurlijke persoon aanwezig is.

### 5.4 Wat de afbakening buiten haakjes zet

De afbakening van de notitie neemt vier dingen als gegeven aan. Elk daarvan rust op iets dat zich in t0 t/m t4 heeft afgespeeld, en juist dat deel bereikt het bronsysteem niet.

1. **De toestemming**
De notitie stelt: "de toestemming van de patiënt ligt al besloten in de instemming met de verwijzing", en verklaart een aparte toestemmingscontrole bij de verzendende zorgaanbieder daarmee buiten scope. Die instemming is de mondelinge instemming van t4. Zij is niet vastgelegd, niet gestructureerd, en daardoor niet toetsbaar door het systeem en niet als toestemmingsprofiel logbaar (NEN 7513 § 7.4.8, conditioneel verplicht bij patiëntgebonden objecten).

2. **De behandelrelatie**
Die volgt uit de aanmelding en acceptatie van t2 en t3. Dit is het sterkste punt van de afbakening, en het is bij gericht beschikbaar stellen aanmerkelijk sterker dan bij een bevraging: de bron heeft de notificatie van t6a zelf gestuurd, voor deze patiënt en naar deze organisatie. De autorisatiebeslissing is daarmee in de kern al genomen voordat er wordt opgehaald.

    Wat ontbreekt is de expressie daarvan in het verzoek. Het RAR-object van de notitie draagt purpose_of_use, locations en locations_organization_id, en verder niets: geen referentie naar de notificatie of de genotificeerde resource. De bron kan bij het ophaalverzoek van t6b dus niet uit het verzoek zelf afleiden dat dit de fetch is die bij die notificatie hoort; die binding moet uit de resource-URL of uit lokale sessiestatus komen, wat de notitie niet uitwerkt. NEN 7513 § 7.4.7 vraagt precies naar het ontbrekende: een identificator van het protocol waarmee is vastgesteld dat er een behandelrelatie is (conditioneel verplicht). Bij de bevraging-use case uit § 7 van de notitie is dit geen expressieprobleem maar een echt gat: daar is er geen notificatie die de bron zelf heeft gestuurd. De notitie erkent dat ook, met haar aankondiging van een "aanvullende securitymaatregel voor toetsing van de behandelrelatie".

3. **De identiteit van de zorgverlener**
Eis 2 van de notitie sluit persoons- en systeemniveau expliciet uit. Opmerkelijk is dat de afbakening zelf uitgaat van "telefonisch contact tussen zorgverleners": de notitie erkent dus dat er aan beide zijden een identificeerbare, bevoegde zorgverlener staat. Zij kiest ervoor die identiteit niet in de transactie mee te dragen, niet omdat zij niet bestaat, maar omdat de bron er volgens het federatieve model niet verantwoordelijk voor is.

4. **Wie er feitelijk handelt**
In t2 drukt Fatima el Amrani op de knop, niet Kwabena. NEN 7545 tabel 1, voetnoot b staat dat uitdrukkelijk toe: een zorgmedewerker mag de eOverdracht opvragen of versturen onder verantwoordelijkheid van een verpleegkundige of zorgverlener, zolang dat in een lokaal autorisatieprotocol is vastgelegd. Dat is precies de constructie die NEN 7513 § 7.3 veronderstelt: de initiator (Fatima) en de verantwoordelijke gebruiker (Kwabena, altijd een natuurlijk persoon, verplicht) horen beide in de logregel. Het uitwisselingsmodel van de notitie draagt geen van beide over de organisatiegrens.

### 5.5 De beslismomenten

Er zijn twee beslismomenten en ze liggen aan weerszijden van de grens. NEN 7545 § 8.3 g en h benoemen beide richtingen uitdrukkelijk ("dit geldt voor de verzender en de ontvanger"), dus geen van beide kan worden weggedefinieerd.

Donderdag 16:40, bij Zorggroep Duinrand. Er komt een ondertekende notificatie binnen van een geverifieerde organisatie, met een doelstelling die als verklaring meereist, zonder persoon en zonder rol. Mag de zorggroep deze levering aannemen en verwerken zonder te weten welke zorgverlener haar heeft samengesteld en verzonden? NEN 7545 § 6.5.3 b legt hier de plicht neer om de informatie als rechtmatig te herkennen.

Donderdag 16:41, bij Ziekenhuis Sint-Antonius. Er komt een ondertekend ophaalverzoek binnen van een geverifieerde organisatie, met dezelfde doelstelling, zonder persoon, zonder rol, zonder referentie naar de notificatie en zonder toestemmingsindicatie, en zonder dat er aan de andere kant op dat moment een mens aanwezig is. Mag het ziekenhuis het verpleegkundig dossier van mevrouw De Vries leveren?

---

## 6. Interpretatie A: "de organisatie is de tegenpartij"

Kernstelling. Dit is een uitwisseling tussen twee zelfstandig verwerkingsverantwoordelijken. De bron authenticeert zijn communicatiepartij; de authenticatie van W is een interne aangelegenheid van de VVT, die buiten de transactie is geborgd via toetredingseisen, certificering, audits en logging.

### 6.1 Onderbouwing uit NEN 7512

- 6.1.8-2 en -3 stellen eisen aan de identificatie van organisatorische objecten (eenduidig, herleidbaar gedurende de looptijd van het doel) en van niet-menselijke entiteiten (servers, knooppunten). Het URA vult -2 exact in; het ondertekende token en het serviceadres vullen -3 in. De norm erkent daarmee expliciet dat identiteiten in een uitwisseling ook niet-persoonlijk kunnen zijn.
- 6.1.9-1 en -2 is de scharnierbepaling: verzender en ontvanger moeten er ieder voor instaan dat verzending respectievelijk ontvangst door een daartoe bevoegde medewerker geschiedt. "Instaan voor" is een garantieverplichting jegens de wederpartij, geen verplichting om die bevoegdheid technisch bij de ander te verifiëren. Zou de norm dat laatste bedoelen, dan was 6.1.9 overbodig naast 6.1.8-4.
- 6.1.4-1 eist dat communicatiepartijen aan NEN 7510 voldoen, met extra nadruk op 18.2.1 (onafhankelijke beoordeling). Daarin zit de garantie: bij de VVT dwingt NEN 7510-2 9.4.1 respectievelijk NEN 7510-1:2024 A.8.5 tweefactorauthenticatie af, en 9.2.1 / A.5.16 formele gebruikersregistratie. Het vereiste niveau van zorgverlener-authenticatie is dus geleverd, alleen niet in deze transactie.
- 6.1.10 bepaalt dat elke partij een eigen grondslag moet hebben en niet mag meeliften op die van de ander. Dat impliceert spiegelbeeldig dat de bron niet verantwoordelijk is voor, en dus niet hoeft te toetsen, hoe de ontvanger zijn eigen grondslag en toegangsbeheer invult.
- 6.2.1 (toezicht op naleving) en 6.1.11 (geldigheid van het kader) houden dat doorlopend overeind; hfd. 5, beheersmaatregel 6 en 7 maken de restrisico's expliciet en toetsbaar.

### 6.2 Onderbouwing uit NEN 7510

- NEN 7510-2 9.4.1 (zorgspecifieke beheersmaatregel) richt zich op gezondheidsinformatiesystemen "die persoonlijke gezondheidsinformatie verwerken" en hun gebruikers. W is gebruiker van het ECD van de VVT en logt daar met twee factoren in. Zij is geen geregistreerde gebruiker van het ziekenhuis-XIS en kan dat ook niet zijn: 9.2.1 vereist een formeel gebruikersregistratieproces met identiteitsvaststelling (naam, geboortedatum, geverifieerde beroepsgegevens), wat een bronhouder onmogelijk kan uitvoeren voor het personeel van elke tegenpartij in Nederland.
- NEN 7510-2 9.1.1 (zorgspecifieke beheersmaatregel) regelt de grens juist op partijniveau: de organisatie identificeert en documenteert alle partijen waarmee cliëntgegevens worden uitgewisseld, en maakt met die partijen vooraf contractuele afspraken over toegang en rechten. De nalevingschecklist bij 9.1.1 vraagt bovendien expliciet of er gefedereerde identiteits- en toegangsmanagementoplossingen worden geïmplementeerd; federatie is dus een voorziene inrichtingsvorm en geen afwijking.
- NEN 7510-2 12.4.1 (zorgspecifieke implementatierichtlijn) maakt het onderscheid hard: berichtensystemen die persoonlijke gezondheidsinformatie overdragen behoren een registratie bij te houden van tijd, datum, herkomst en bestemming van het bericht. Herkomst en bestemming zijn organisaties. Voor overdracht geldt een ander regime dan voor toegang.
- NEN 7510-1:2024 A.5.14 ("voordat enige overdracht plaatsvindt, moeten er regels, procedures en overeenkomsten zijn ingesteld") plaatst de borging eveneens voorafgaand aan de transactie, in het kader.

### 6.3 Onderbouwing uit NEN 7513

- 5.2 onder 2 en 3 legt de rolverdeling vast in twee opeenvolgende punten: in de logging moet worden opgenomen (2) welke medewerkers van de instelling gegevens hebben opgevraagd bij andere organisaties, en (3) welke andere organisaties toegang hebben gehad tot het dossier. Persoonsniveau bij de opvrager, organisatieniveau bij de bron: precies het federatieve model.
- 8.4.1 bevestigt dat met het soa-kliniek/apotheek-voorbeeld: voor de logbeheerder bij de apotheek wordt het voldoende geacht dat hij ziet dat de kliniek een opvraging deed. Meer detail is daar zelfs onwenselijk.
- Tabel 1 bij 8.4 beperkt bovendien wat een zorginstelling in eerste instantie mag zien over externe toegang tot op de cliënt herleidbaar.
- 8.6 regelt hoe de keten alsnog wordt gesloten: bij domeinoverschrijdende communicatie moet logging uit verschillende bronnen vergelijkbaar zijn via een exportfaciliteit met vastgelegde syntax en semantiek. Herleidbaarheid tot W is dus normatief voorzien als samenstelling van twee logs, niet als attribuut in de transactie.

### 6.4 Onderbouwing uit NEN 7545

- 8.3 h eist dat het zorginformatiesysteem de zorgaanbieders die betrokken zijn bij de uitwisseling authenticeert en identificeert, voor verzender en ontvanger. OPMERKING 7 noemt als voorbeeld van authenticatie van de zorgaanbieder op niveau eIDAS hoog: mTLS met een vertrouwd certificaat met daarin het URA. Eis 1 van de notitie ("wederzijds vaststellen van de identiteit van de zorgaanbieder", op basis van URA) is dus letterlijk 8.3 h).
- 6.5.3 a en c beleggen de autorisatierichtlijn in het zorginformatiesysteem van de eigen zorgaanbieder, bij de opvrager respectievelijk de verzender, en stellen uitdrukkelijk dat dit "wordt geëffectueerd in de toegangsbeheersing van het zorginformatiesysteem". Dat is het federatieve model, letterlijk in de norm.
- 8.3 e legt de bevoegdheidsverificatie van de zorgmedewerker (BIG-register of intern bekwaamheidsregister) neer bij het zorginformatiesysteem van de organisatie waar die medewerker werkt, niet bij de tegenpartij.
- 8.3 f behandelt de identiteiten van zorgaanbieder en zorgverleners als metagegevens die door het systeem van de verstrekker aan de eOverdracht worden toegevoegd. Metagegevens zijn een verklaring die meereist, geen authenticatiemiddel dat de tegenpartij verifieert.
- 8.7.4 en 5.6.1 verdelen de logging over drie punten: bron, uitwisseling en doelapplicatie loggen elk hun eigen transacties volgens NEN 7513. Dat is de keten van logs.
- 8.8 b aanvaardt uitdrukkelijk dat de contractuele borging "ook worden ingevuld [kan] door deelname aan een landelijk of regionaal afsprakenstelsel": toetredingseisen zijn een normconform instrument.

### 6.5 Uitkomst

Beide richtingen gaan door. De zorggroep neemt de notificatie aan van een geverifieerde URA; het ziekenhuis levert op het ophaalverzoek van diezelfde geverifieerde URA. Het ziekenhuis logt "verstrekt aan URA Zorggroep Duinrand, doel TREAT" met Kwabena Mensah als verantwoordelijke gebruiker van het beschikbaar stellen; de zorggroep logt de geautomatiseerde ontvangst en, bij het raadplegen op vrijdagochtend, Priya Nandlal, conform NEN 7513 hfd. 5 en 7 en NEN 7545 § 8.7.4. Bij een inzageverzoek of klacht van mevrouw De Vries levert de combinatie van beide logs beide personen op. De inhoudelijke poortwachtersfunctie is al vervuld door Kwabena bij het opstellen en afschermen (NEN 7545 § 5.6.4 en 6.5.2).

---

## 7. Interpretatie B: "de zorgverlener moet mee"

Kernstelling. Het ziekenhuis blijft verwerkingsverantwoordelijke voor zijn dossier. Wat hier plaatsvindt is toegang tot dat dossier, alleen op afstand. De normen binden toegang tot persoonlijke gezondheidsinformatie onlosmakelijk aan een geïdentificeerde natuurlijke persoon met een rol en een zorgrelatie.

### 7.1 Onderbouwing uit NEN 7545 (het zwaarste geschut)

- 8.3 g, en identiek in de normatieve bijlage A, tabel A.1, luidt: het zorginformatiesysteem moet actoren (zoals zorgverleners) die zijn betrokken bij de uitwisseling van de eOverdracht op niveau 'hoog' volgens eIDAS authenticeren en identificeren, en dit geldt voor de verzender en de ontvanger. Dit is een normatieve beheersmaatregel in een Wegiz-norm, en het is exact het tegenovergestelde van eis 2 van de notitie ("geen authenticatie van individuele zorgverleners of systemen van de partner"). Let op de asymmetrie tussen g en h. Bij actoren (g) staat het betrouwbaarheidsniveau 'hoog' in de beheersmaatregel zelf. Bij zorgaanbieders (h) staat geen niveau in de beheersmaatregel; 'hoog' komt daar alleen voor in een niet-normatieve opmerking. NEN 7545 is dus explicieter over de zorgverlener dan over de organisatie. De notitie doet precies het omgekeerde.
- 8.3 a eist dat de identiteit en authenticiteit van zorgaanbieders, zorgmedewerkers en zorginformatiesystemen betrouwbaar kunnen worden verwerkt. Alle drie de niveaus, niet één.
- 8.3 e eist dat het zorginformatiesysteem een bevoegdheid kan verifiëren van een zorgmedewerker in de rol van opvrager eOverdracht of verzender eOverdracht, via het BIG-register of een bekwaamheidsregister. Zonder identiteit van de opvrager kan die verificatie in de uitwisseling nooit plaatsvinden.
- 6.5.3 b legt bij de ontvanger de plicht om de rechtmatigheid van de informatie te herkennen, en stelt: "De uitwisseling moet voldoen aan de eisen die de (U)eIDAS en NEN 7510-1, NEN 7510-2 en NEN 7512 aan de betrokken partijen stellen." (U)eIDAS wordt hier op de uitwisseling zelf van toepassing verklaard.
- 3.31 (zorgmedewerker) definieert de zorgmedewerker als natuurlijk persoon die patiëntgegevens raadpleegt met behulp van een goedgekeurd inlogmiddel; 3.21 (raadplegen) stelt dat inzien, raadplegen en verkrijgen juridisch synoniem zijn en "onder meer (veronderstelde) toestemming, autorisatie en authenticatie" vereisen. Het raadplegen van de eOverdracht door W is dus per definitie een geauthenticeerde handeling van een persoon.
- 6.4.1 bepaalt, op grond van Wabvpz art. 15a lid 1: bij gebruik van een elektronisch uitwisselingssysteem mag de zorgaanbieder de gegevens van de patiënt pas beschikbaar stellen na uitdrukkelijke toestemming. Een landelijke pull-infrastructuur valt onder de definitie van 3.8. De notitie verklaart toestemmingscontrole bij de bron buiten scope op grond van veronderstelde toestemming; 6.4.3 verwijst daarvoor door naar NEN 7517, die nog niet bestaat. De uitzondering is dus nog niet ingevuld, terwijl de hoofdregel al geldt.
- 8.2.2.1 / 7.4.10.1 bepalen dat de eisen aan het koppelvlak voor het gericht beschikbaar stellen, inclusief, blijkens de opmerking bij 8.2.2.2, de technische eisen voor identificatie, authenticatie en adressering, worden vastgelegd in de bijlage eOverdracht van de LDN TA Pull; 8.2.2.2 / 7.4.10.2 schrijven voor gericht bevragen bovendien het IHE-MHD-koppelvlak voor. De notitie stelt in plaats daarvan zelf een profiel vast met een stelselspecifiek RAR-type (nl-gis-v1): precies de stelselspecifieke extensie die zij zegt te willen vermijden.
- 7.2 e en 8.7.4 eisen dat alle transacties en gegevensverwerkingen worden gelogd volgens NEN 7513, door bron en ontvanger; 5.6.1 voegt toe dat elke stap uit het uitwisselingsmodel moet worden gelogd, "onder andere om achteraf de rechtmatigheid van een overdracht te kunnen beoordelen en een inzageverzoek van een patiënt te kunnen honoreren".

### 7.2 Onderbouwing uit NEN 7512

- 6.1.8-4 is de scherpste bepaling in het stelsel: authenticatie van gebruikers van de uit te wisselen persoonlijke gezondheidsinformatie moet in overeenstemming met eIDAS zijn, op betrouwbaarheidsniveau hoog. Er staat niet "gebruikers van het eigen systeem". En het is 'moeten', niet 'behoren te'.
- De toelichting bij 6.1.8 zegt het onomwonden: naast de identificatie van het communicatiesubject behoort de identiteit van de communicerende medewerkers met een hoge mate van zekerheid te worden vastgesteld.
- 6.1.8-5 sluit precies de uitweg af die de notitie kiest: wanneer gebruik wordt gemaakt van mechanismen zoals federatieve stelsels en tokenidentificatie, moeten de hiervoor genoemde eisen volledig worden gerespecteerd. Een federatief model mag de eIDAS-hoog-eis dus niet verdunnen; het moet die eis dragen.
- 6.2.7-2: voor een uitwisseling in risicoklasse A, B of C moet ondertekening plaatsvinden met een gekwalificeerd middel en op basis van een gekwalificeerd certificaat voor e-handtekeningen (eIDAS bijlage I en II, jo. art. 18.15a tot en met 18.15e Telecommunicatiewet). Een gekwalificeerde elektronische handtekening is per eIDAS die van een natuurlijke persoon. Een verpleegkundige overdracht van een kwetsbare oudere komt via tabel 1a/1b en tabel 3 al snel op gevolgklasse matig of groter uit, dus op risicoklasse C of hoger. Dan volstaat private_key_jwt met een UZI-servercertificaat niet. De motivering bij 6.2.7 noemt bovendien exact het risico dat hier speelt: voorkomen dat een niet-geautoriseerde medewerker de indruk wekt dat een onjuiste uitwisseling een goede is.

### 7.3 Onderbouwing uit NEN 7510

- NEN 7510-2 9.1.1 (zorgspecifieke beheersmaatregel) beperkt toegang tot persoonlijke gezondheidsinformatie tot situaties waarin er een zorgrelatie bestaat tussen de gebruiker en de cliënt, of waarin de gebruiker een activiteit namens die cliënt uitvoert, en tot de gegevens die daarvoor nodig zijn. De relatie wordt gelegd tussen persoon en cliënt, niet tussen organisatie en cliënt.
- NEN 7510-2 9.2.3 (zorgspecifieke implementatierichtlijn) eist rolgebaseerde toegangscontrole, één actieve rol per sessie, en koppeling van gebruikers aan cliëntregistraties waarop toekomstige toegang wordt gebaseerd. Een client-credentials-account per organisatie maakt dit bij de bron structureel onmogelijk.
- NEN 7510-2 9.2.1 (zorgspecifieke beheersmaatregel) vereist dat het niveau van authenticatie van de geclaimde identiteit overeenkomt met het toegangsniveau waarover de gebruiker gaat beschikken. Toegangsniveau: volledig verpleegkundig dossier van een individuele patiënt. Geclaimde identiteit: "organisatie X". Dat is per definitie een mismatch.
- NEN 7510-2 9.4.1 / NEN 7510-1:2024 A.8.5 eisen tweefactorauthenticatie bij systemen die persoonlijke gezondheidsinformatie verwerken. Het bron-XIS verwerkt en verstrekt die informatie op verzoek van W, die zich tegenover dat systeem met nul factoren identificeert.
- NEN 7510-2 12.4.1 (zorgspecifieke implementatierichtlijn) eist dat een auditverslag op unieke wijze de gebruiker en de cliënt identificeert, telkens als via het systeem toegang wordt gemaakt met persoonlijke gezondheidsinformatie.

### 7.4 Onderbouwing uit NEN 7513

- 5.1 bepaalt dat alle systemen die gegevens bevatten die deel uitmaken van een patiëntdossier ten minste bijhouden: welke gebeurtenis, datum en tijd, welke cliënt, wie de gebruiker was en wie de verantwoordelijke gebruiker was. Het ziekenhuis-XIS is zo'n systeem, en de verstrekking is een dossieractie in de zin van 6.2.1.
- 7.3 maakt dat onontkoombaar: bij elke gebeurtenis hoort ten minste één gebruiker, de verantwoordelijke gebruiker, en die is altijd een natuurlijk persoon; optionaliteit: verplicht. 7.3.1 (gebruikers-ID) en 7.3.4 (gebruikersrol) zijn eveneens verplicht. Wordt de gebeurtenis door een ander of door een proces geïnitieerd, dan moet dat naast de verantwoordelijke gebruiker worden meegestuurd, niet in plaats daarvan.
- 7.4.6 en 7.4.7: het autorisatieprotocol is verplicht, het behandelrelatieprotocol conditioneel verplicht; de toelichting stelt dat autorisatieprotocol en rol samen bepalend zijn voor de rechtmatigheid van de gelogde actie. De standaardwaarden 'geen protocol' en 'rol onbekend' uit de opmerking bij 5.3 zijn bedoeld voor situaties waarin nog geen afspraken bestaan, niet als permanente inrichtingskeuze.
- NEN 7512 6.2.9-1 sluit de cirkel: logging conform NEN 7513 voor zowel de gebeurtenis verzending als ontvangst.

### 7.5 Uitkomst

Geen van beide richtingen van de uitwisseling voldoet. Bij de notificatie mag de zorggroep niet aannemen op een token dat alleen de URA van het ziekenhuis draagt: § 8.3 g eist ook de identiteit van de verzender, en § 6.5.3 b vraagt van de ontvanger dat hij de rechtmatigheid herkent. Bij het ophalen mag het ziekenhuis niet leveren op een token dat alleen de URA van de zorggroep draagt. Vereist is in beide richtingen een ondertekende assertie met identiteit en rol van de betrokken zorgverlener, Kwabena Mensah aan de verzendende kant, Priya Nandlal aan de ontvangende, en bij delegatie de verantwoordelijke gebruiker naast de handelende zorgmedewerker, geauthenticeerd op eIDAS-hoog (UZI-pas, straks Dezi), plus een verifieerbare koppeling tussen het ophaalverzoek en de notificatie waaruit de behandelrelatie blijkt. Dat het ophalen geautomatiseerd verloopt, ontslaat de zorggroep niet van die eis: het is haar eigen inrichtingskeuze om de handeling los te koppelen van de zorgverlener die haar veroorzaakt. De veronderstelde toestemming uit de verwijzing vervangt de authenticatie niet: zij regelt de grondslag, niet de vaststelling van wie er aan de andere kant zit.

---

## 8. De verschillen op een rij

Per thema: wat pool A stelt, wat pool B stelt, en op welke artikelen elk zich beroept.

### 8.1 Wie moet worden geauthenticeerd

| Aspect | Pool A: organisatie volstaat | Pool B: zorgverlener moet mee |
|---|---|---|
| Stelling | Over de organisatiegrens wordt uitsluitend de organisatie-identiteit (URA) geverifieerd | Actoren aan beide zijden worden op eIDAS-hoog geauthenticeerd |
| Artikelen | NEN 7545 8.3 h + OPMERKING 7; NEN 7545 6.5.3 a en c; NEN 7512 6.1.8-2 en -3; NEN 7512 6.1.9-1 en -2; NEN 7510-2 9.1.1 (checklistvraag 8, gefedereerd IAM) | NEN 7545 8.3 g (ook bijlage A, tabel A.1); NEN 7545 8.3 a; NEN 7512 6.1.8-4; NEN 7512 6.1.8 (toelichting: "communicerende medewerkers"); NEN 7512 6.1.8-5 |
| Kernwoord | "moet ervoor instaan" | "moet ... op niveau 'hoog' volgens eIDAS" |

### 8.2 Betekenis van het begrip 'gebruiker'

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | Gebruiker = gebruiker van het systeem van de eigen zorgaanbieder | Gebruiker = degene die de uitgewisselde gegevens feitelijk raadpleegt |
| Artikelen | NEN 7510-2 9.4.1 (systeem en zijn gebruikers); NEN 7510-2 9.2.1 (registratieproces is per organisatie); NEN 7510-1:2024 A.5.16 | NEN 7512 6.1.8-4 ("gebruikers van de uit te wisselen persoonlijke gezondheidsinformatie"); NEN 7545 3.21 (raadplegen vereist authenticatie); NEN 7545 3.31 (zorgmedewerker, goedgekeurd inlogmiddel); NEN 7513 7.3 |

### 8.3 Transport versus toegang

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | De uitwisseling is informatietransport tussen twee verantwoordelijken | De uitwisseling is toegang tot het brondossier op afstand |
| Artikelen | NEN 7510-2 13.2.1 en 13.2.2; NEN 7510-2 12.4.1 (berichtensystemen: tijd, datum, herkomst, bestemming); NEN 7510-1:2024 A.5.14 | NEN 7510-2 9.1.1 (zorgrelatie tussen gebruiker en cliënt); NEN 7510-2 9.2.3 (RBAC, koppeling tussen gebruiker en cliënt); NEN 7510-2 12.4.1 (auditverslag identificeert gebruiker en cliënt uniek); NEN 7545 3.16 (inzien) |

### 8.4 Waar de bevoegdheid wordt getoetst

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | In het eigen domein, voorafgaand aan de transactie (toetreding, autorisatierichtlijn, BIG-toets) | In de transactie, door de verstrekkende partij |
| Artikelen | NEN 7545 6.5.3 a en c ("geëffectueerd in de toegangsbeheersing van het zorginformatiesysteem"); NEN 7545 8.3 e; NEN 7545 8.8 b (afsprakenstelsel als contractuele invulling); NEN 7512 6.1.4-1; NEN 7510-2 9.1.1 | NEN 7545 6.5.3 b (ontvanger herkent rechtmatigheid; (U)eIDAS van toepassing op de uitwisseling); NEN 7545 8.3 e (rol van opvrager); NEN 7510-2 9.2.1 (authenticatieniveau moet overeenkomen met toegangsniveau) |

### 8.5 Ondertekening en cryptografisch bewijs

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | Ondertekening op organisatieniveau (private_key_jwt + ondertekend access token, gevalideerd via JWKS) volstaat | Bij risicoklasse C of hoger is een gekwalificeerde e-handtekening van een natuurlijk persoon vereist |
| Artikelen | NEN 7512 6.1.8-2 en -3; NEN 7545 8.3 h OPMERKING 7 (mTLS met URA als voorbeeld, niet als voorschrift); NEN 7510-2 10.1.1 d | NEN 7512 6.2.7-1 en -2 (Besluit 2015/1506, eIDAS bijlage I en II, Tw art. 18.15a tot en met 18.15e); NEN 7512 6.2.7-3; NEN 7512 tabel 1a/1b en tabel 3 (risicoklassebepaling) |

### 8.6 Logging en herleidbaarheid

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | Herleidbaarheid ontstaat achteraf uit de combinatie van twee logs | Elke logregel bij de bron moet zelfstandig de verantwoordelijke natuurlijke persoon bevatten |
| Artikelen | NEN 7513 5.2 onder 2 en 3; NEN 7513 8.4.1 (soa-kliniek/apotheek); NEN 7513 tabel 1 bij 8.4; NEN 7513 8.6 (exportfaciliteit); NEN 7545 8.7.4 (bron, uitwisseling, doelapplicatie loggen elk) | NEN 7513 5.1; NEN 7513 7.3 en 7.3.1; NEN 7513 7.3.4; NEN 7513 7.4.6 en 7.4.7; NEN 7512 6.2.9-1; NEN 7545 5.6.1 (elke stap gelogd, o.a. voor rechtmatigheidsbeoordeling); NEN 7545 7.2 e |

### 8.7 Toestemming

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | Veronderstelde toestemming volgt uit de verwijzing; controle bij de bron is niet nodig | Bij een elektronisch uitwisselingssysteem geldt de hoofdregel van uitdrukkelijke toestemming |
| Artikelen | NEN 7545 6.4.3 (veronderstelde toestemming bestaat als categorie); WGBO-grondslag; NEN 7512 6.1.10 (eigen grondslag per partij) | NEN 7545 6.4.1 jo. Wabvpz art. 15a lid 1; NEN 7545 3.8 (definitie elektronisch uitwisselingssysteem); NEN 7545 3.21; NEN 7513 7.4.8 (toestemmingsprofiel conditioneel verplicht) |

### 8.8 Koppelvlak en protocolkeuze

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | De koppelvlakinvulling hoort in de LDN TA Pull; de notitie levert daarvoor de onderbouwing | De norm wijst die plaats aan, en een memo is die plaats niet; bij bevragen is IHE-MHD bovendien voorgeschreven |
| Artikelen | NEN 7545 8.2.2.1 en 8.2.2.2 (eisen "worden vastgelegd in de LDN TA Pull, die in ontwikkeling is"); NEN 7545 voorwoord (herziening zodra generieke normen er zijn); NEN 7545 8.3 a (verwijst naar NEN 7518, in voorbereiding) | NEN 7545 8.2.2.1 en 7.4.10.1 (koppelvlakken uit de bijlage eOverdracht van LDN TA Pull; NTA 7516 bij mailtransport); NEN 7545 8.2.2.2 en 7.4.10.2 (IHE-MHD bij gericht bevragen); NEN 7545 bijlage A, tabel A.1 bij 8.2.2.1 en 8.2.2.2; NEN 7522 en NEN 7545 7.5 / bijlage D (standaardhouder, stelselbeheerder, roadmap) |

### 8.9 De rol van de voorafgaande verwijzing of aanmelding

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | De aanmelding en de door de bron zelf verstuurde notificatie nemen het kernrisico weg voordat de uitwisseling plaatsvindt; de techniek hoeft het niet nogmaals af te dekken | De binding bestaat in het proces maar wordt niet in het autorisatieverzoek uitgedrukt, en bij bevragen ontbreekt zij geheel |
| Artikelen | NEN 7512 hfd. 5, beheersmaatregel 6 (risicobehandeling voorafgaand aan de uitwisseling); NEN 7545 5.3 stap 4 en 5 (notificatie door de bron, daarna ophalen); NEN 7545 5.5 (usecase 3, aanmelding met geminimaliseerd bericht); NEN 7545 5.6.4, 6.5.2 en 7.4.4 c (relevantietoets, afscherming en tonen aan de patiënt voor verzending); NEN 7545 8.8 b (afsprakenstelsel als borging); NEN 7545 tabel 1 voetnoot b (delegatie via lokaal autorisatieprotocol) | NEN 7513 7.4.7 (behandelrelatieprotocol, conditioneel verplicht); NEN 7513 7.4.8 (toestemmingsprofiel); NEN 7510-2 9.1.1 (zorgrelatie tussen gebruiker en cliënt); NEN 7513 7.3 (bij delegatie en bij geautomatiseerd ophalen: initiator en verantwoordelijke gebruiker); NEN 7512 hfd. 5 beheersmaatregel 7 en NEN 7510-2 18.2.1 (toetsbaarheid) |

### 8.10 Het moment van authenticatie in het uitwisselingsmodel

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | 8.3 g grijpt aan op stap 1 (vastleggen) en stap 8 (raadplegen); op stap 5 (uitwisselen) geldt 8.3 h | 8.3 g geldt op de uitwisseling zelf, voor verzender en ontvanger, ongeacht of het ophalen geautomatiseerd is |
| Artikelen | NEN 7545 5.3 stap 5 ("Dit ophalen kan ook automatisch gebeuren"); NEN 7545 tabel 1 (Verstrekker en Ontvanger zijn zorgaanbieders, Opvrager en Verzender zijn personen); NEN 7545 8.3 h | NEN 7545 8.3 g ("actoren die zijn betrokken bij de uitwisseling ... voor de verzender en de ontvanger"); NEN 7545 bijlage A tabel A.1 bij 8.3 g; NEN 7545 5.6.1 (elke stap loggen); NEN 7513 7.3 |

### 8.11 Normatief gewicht en status

| Aspect | Pool A | Pool B |
|---|---|---|
| Stelling | De I&A-eisen van NEN 7545 zijn zelfverklaard voorlopig en kennen een overgangsregeling | De beheersmaatregelen in bijlage A zijn normatief en gelden nu |
| Artikelen | NEN 7545 voorwoord ("wanneer de normen voor de generieke functies zijn gepubliceerd ... zal deze norm moeten worden herzien"); NEN 7545 8.3 OPMERKING 5 en 6 (overgangsregeling bij niet-beschikbare eIDAS-hoog-middelen); NEN 7545 5.4 en 5.5 OPMERKING ("nog niet normatief uitgewerkt"); NEN 7510 'behoren te' | NEN 7545 bijlage A (normatief), tabel A.1 bij 8.3 g en h; NEN 7512 voorwoord ('moeten' voor afspraken tussen partijen); NEN 7512 6.1.8-5 (federatie ontslaat niet van de eisen) |

---

## 9. Beredenering: waarom "Reactie escalatie Twiin" volledig klopt

De notitie is normconform. Zij doet precies wat de normen op dit moment van een kaderstellende partij vragen, niet meer en niet minder.

### 9.1 De notitie vult exact de eisen in die NEN 7545 expliciet stelt

NEN 7545 § 8.3 h en de bijbehorende beheersmaatregel in bijlage A eisen dat het zorginformatiesysteem de betrokken zorgaanbieders authenticeert en identificeert, voor verzender en ontvanger. OPMERKING 7 noemt als voorbeeld van authenticatie van de zorgaanbieder op eIDAS-hoog: mTLS met een vertrouwd certificaat met daarin het URA. Eis 1 van de notitie, wederzijds vaststellen van de identiteit van de zorgaanbieder op basis van het URA uit het UZI-register, ook wanneer een knooppunt namens een partij optreedt, is de letterlijke invulling daarvan. Dat de notitie de organisatie-identiteit op berichtniveau borgt (ondertekend token, validatie via JWKS) in plaats van uitsluitend op transportniveau, is geen afwijking: OPMERKING 7 geeft een voorbeeld, geen voorschrift, en de gekozen constructie is aantoonbaar sterker omdat de organisatie-identiteit daarmee op elk punt in de keten cryptografisch verifieerbaar blijft, ook wanneer een knooppunt of dienstverlener het transportcertificaat beheert. Dat is precies het risico dat 8.3 h beoogt af te dekken.

### 9.2 De verantwoordelijkheidsverdeling van de notitie is die van NEN 7545 zelf

NEN 7545 § 6.5.3 a belegt de autorisatierichtlijn voor het opvragen in het zorginformatiesysteem van de opvragende zorgaanbieder, en c die voor het beschikbaar stellen in het systeem van de verstrekkende zorgaanbieder. Beide bepalingen sluiten af met dezelfde zin: dit wordt geëffectueerd in de toegangsbeheersing van het zorginformatiesysteem. De norm belegt de toegangsbeheersing dus expliciet lokaal, per zorgaanbieder. § 8.3 e doet hetzelfde met de bevoegdheidsverificatie: het systeem moet de bevoegdheid van een zorgmedewerker kunnen verifiëren via het BIG-register of een intern bekwaamheidsregister, een register dat alleen de eigen werkgever bijhoudt en beheert, zoals OPMERKING 4 bij 8.3 e uitdrukkelijk beschrijft. Het federatieve vertrouwensmodel van de notitie is dus niet iets wat de notitie de norm oplegt; het is de architectuur die NEN 7545 zelf hanteert.

Datzelfde beeld geeft § 8.3 f: de identiteiten van zorgaanbieder en zorgverleners zijn metagegevens die door het systeem van de verstrekker aan de eOverdracht worden toegevoegd. Metagegevens zijn een verklaring die meereist; ze zijn geen authenticatiemiddel dat de wederpartij verifieert. Dat is exact de constructie die de notitie kiest: de organisatie-identiteit is cryptografisch verifieerbaar, het doel en de context reizen mee als verklaring waarvoor de afgevende organisatie verantwoordelijk en aansprakelijk is.

### 9.3 NEN 7512 legt de zorgverlener-borging bij de partij zelf, niet bij de wederpartij

NEN 7512 § 6.1.9-1 en -2 gebruiken de formulering "moet ervoor instaan dat". Dat is een garantieverplichting, geen verificatieplicht. § 6.1.10 versterkt dat: elke partij moet over een eigen geldige grondslag beschikken en mag niet meeliften op die van een ander; de spiegelbeeldige conclusie is dat de bron niet verantwoordelijk is voor de interne inrichting van de ontvanger. § 6.1.4-1 maakt die garantie afdwingbaar: de communicatiepartij moet aantoonbaar aan NEN 7510 voldoen, met extra nadruk op de onafhankelijke beoordeling van 18.2.1. En daar, in het eigen domein, dwingen NEN 7510-2 9.4.1 en NEN 7510-1:2024 A.8.5 tweefactorauthenticatie af en NEN 7510-2 9.2.1 en A.5.16 formele gebruikersregistratie. De eis van eIDAS-hoog wordt dus gehaald; alleen niet binnen de transactie. § 6.2.1 belegt het doorlopende toezicht daarop.

De praktische onmogelijkheid van het alternatief bevestigt deze lezing. NEN 7510-2 9.2.1 vereist een formeel gebruikersregistratieproces waarin de identiteit van de gebruiker nauwkeurig wordt vastgelegd (naam, geboortedatum, adres) en de beroepsgegevens na verificatie worden geregistreerd. Geen enkele bronhouder kan dat proces uitvoeren voor het personeel van elke Nederlandse tegenpartij. Een norm die dat zou eisen, zou landelijke gegevensuitwisseling onmogelijk maken, en NEN 7510-2 9.1.1 laat, met de checklistvraag over gefedereerde identiteits- en toegangsmanagementoplossingen, expliciet ruimte voor het alternatief dat de notitie kiest.

### 9.4 De afbakening levert de risicoreductie die de techniek niet hoeft te leveren

De afbakening van de notitie is geen beperking om de analyse makkelijker te maken; zij is de risicobehandeling die NEN 7512 hoofdstuk 5, beheersmaatregel 6 van de kaderstellende partijen vraagt. Door de scope te beperken tot uitwisselingen waaraan een verwijzing, overdracht of aanmelding voorafgaat, wordt het kernrisico, een onbevoegde partij die zonder zorgrelatie een dossier opent, al weggenomen voordat de transactie plaatsvindt.

In de use case is dat concreet aanwijsbaar. Op t1 spreken twee BIG-geregistreerde zorgverleners elkaar; op t2 en t3 verloopt de aanmelding volgens NEN 7545 usecase 3 (§ 5.5), met een geminimaliseerd bericht; op t4 stemt mevrouw De Vries in; op t5 toetst Kwabena Mensah zelf op relevantie en op het niet schaden van de privacy van derden, en schermt hij op verzoek van de patiënt een passage af. Dat laatste is geen coulance maar een normeis: NEN 7545 § 5.6.4 en § 6.5.2, en als beheersmaatregel in bijlage A bij 6.5.2. De inhoudelijke poortwachtersfunctie ligt dus, normconform, bij de vastleggende zorgverlener aan de bronzijde, voordat er ook maar een token wordt aangevraagd.

Wanneer dat proces is doorlopen, resteert bij de uitwisseling zelf nog precies één vraag die de techniek moet beantwoorden: gaan deze gegevens naar de organisatie waarmee de overdracht is afgesproken, en naar geen andere? Dat is exact het risico dat de notitie benoemt en cryptografisch afdekt met het ondertekende token en de URA-verificatie in beide richtingen van de uitwisseling, en het is exact wat NEN 7545 § 8.3 h eist. De vraag "is Priya Nandlal wel Priya Nandlal" wordt beantwoord waar zij thuishoort: bij haar eigen werkgever, op het moment dat zij vrijdagochtend inlogt en de overdracht raadpleegt, met twee factoren conform NEN 7510-2 9.4.1 en NEN 7510-1:2024 A.8.5, en met een bevoegdheidstoets conform NEN 7545 § 8.3 e.

Dat NEN 7545 dit model aanvaardt, blijkt uit tabel 1, voetnoot b: een zorgmedewerker (in de use case Fatima el Amrani) mag de eOverdracht opvragen of versturen onder verantwoordelijkheid van een verpleegkundige, mits dat in een lokaal autorisatieprotocol is vastgelegd. De norm accepteert hier dus uitdrukkelijk dat de handelende persoon geen BIG-geregistreerde zorgverlener is, en legt de borging daarvan bij de eigen organisatie. Een model dat de wederpartij zou verplichten de individuele handelende persoon te authenticeren, zou deze door de norm zelf toegestane praktijk onmogelijk maken.

### 9.5 Bij een notified pull is er op het moment van uitwisselen geen actor om te authenticeren

NEN 7545 § 5.3, stap 5 beschrijft de in-scope use case zo dat zorgaanbieder B de notificatie accepteert en de eOverdracht vervolgens ophaalt, met de uitdrukkelijke toevoeging: "Dit ophalen kan ook automatisch gebeuren op het moment dat de notificatie binnenkomt." De norm voorziet dus zelf in een uitwisselingsstap waarin aan de ontvangende kant helemaal geen mens aanwezig is.

Dat maakt de strikte lezing van § 8.3 g, namelijk actoren op eIDAS-hoog authenticeren bij de uitwisseling, bij deze use case onuitvoerbaar zoals zij bedoeld zou zijn. Je kunt geen actor authenticeren die er niet is. De houdbare lezing is dan dat 8.3 g aangrijpt op de stappen waar de zorgverlener daadwerkelijk handelt: stap 1 (vastleggen, door Kwabena Mensah) en stap 8 (raadplegen, door Priya Nandlal), beide binnen het eigen domein en beide met de tweefactorauthenticatie die NEN 7510-2 9.4.1 en NEN 7510-1:2024 A.8.5 daar afdwingen. Op stap 5 (uitwisselen) resteert dan precies wat § 8.3 h eist: authenticatie van de zorgaanbieders. Dat is exact de knip die de notitie maakt.

Deze lezing verklaart ook waarom NEN 7545 in tabel 1 de rollen Opvrager en Verzender toekent aan zorgverleners en aan "overige zorgmedewerkers", terwijl de rollen Verstrekker en Ontvanger aan de zorgaanbieder zijn toegekend. Op het niveau van de uitwisseling zijn de partijen organisaties; de persoonsrollen zitten aan de uiteinden.

### 9.6 De logging-eis is een keten-eis, geen transactie-eis

NEN 7545 § 8.7.4 verdeelt de logging over drie punten: bron (zender), uitwisseling en doelapplicatie (ontvanger) loggen elk hun eigen transacties volgens NEN 7513. NEN 7513 § 5.2 doet hetzelfde: onder 2 moet worden gelogd welke medewerkers gegevens bij andere organisaties hebben opgevraagd (bij de opvrager), onder 3 welke andere organisaties toegang hebben gehad (bij de bron). NEN 7513 § 8.4.1 illustreert waarom dat verstandig is: de logbeheerder van de apotheek mag niet zien dat een specifieke persoon van een soa-kliniek heeft opgevraagd; voldoende is dat hij ziet dat de kliniek dat deed. En § 8.6 regelt vervolgens hoe de keten alsnog wordt gesloten: via een exportfaciliteit met vastgelegde syntax en semantiek, zodat logging uit verschillende informatiedomeinen vergelijkbaar is. De herleidbaarheid tot de individuele zorgverlener is dus normatief voorzien als samenstelling van twee logs: precies wat de notitie beschrijft wanneer zij stelt dat met NEN 7513 en het inzagerecht uit de Wabvpz achteraf te achterhalen is wie gegevens heeft opgevraagd.

### 9.7 NEN 7545 delegeert de I&A-invulling uitdrukkelijk naar juist dit soort afspraken

Dit is het sterkste argument. NEN 7545 verklaart zijn eigen identificatie- en authenticatiehoofdstuk voorlopig:

- § 8.3 verwijst voor de betrouwbare verwerking van identiteiten door naar NEN 7518, in voorbereiding.
- § 6.4 en 8.5 verwijzen voor toestemming door naar NEN 7517, in voorbereiding.
- § 8.2.2.1 en 8.2.2.2 leggen de eisen aan de koppelvlakken bij de LDN TA Pull, die in ontwikkeling is. Blijkens de opmerking bij 8.2.2.2 gaat het daarbij ook om de technische eisen voor identificatie, authenticatie en adressering.
- Het voorwoord stelt dat de norm is opgesteld terwijl afspraken over onder meer de generieke functies identificatie, authenticatie en toestemming nog niet volledig beschikbaar zijn, en dat de norm zal moeten worden herzien zodra die er zijn.
- De use cases gericht bevragen (§ 5.4) en patiënt aanmelden (§ 5.5) dragen beide de opmerking dat zij nog niet normatief zijn uitgewerkt en dat hierover in het veld nog afspraken moeten worden gemaakt.

De notitie is precies zo'n afspraak, opgesteld door precies de partij die daarvoor aan zet is. NEN 7512 hoofdstuk 5 belegt bij de kaderstellende partijen de plicht om de acceptabele risicoklasse vast te stellen, de uitwisseling zo nodig aan te passen en het geheel te documenteren; § 6.1.3 vereist dat zij onderzoeken en vastleggen welke zekerheden een identificatiestelsel biedt. De notitie doet dat: zij benoemt welke risico's met techniek worden afgedekt en welke met afspraken, toetredingseisen, audits, logging en aansprakelijkheid. NEN 7545 § 8.8 b aanvaardt daarbij uitdrukkelijk dat de contractuele borging kan worden ingevuld door deelname aan een landelijk of regionaal afsprakenstelsel.

### 9.8 De overgangsregeling in NEN 7545 dekt de korte termijn expliciet af

NEN 7545 § 8.3 OPMERKING 5 (bij g, actoren) en OPMERKING 6 (bij h, zorgaanbieders) bepalen beide: bij het (nog) niet beschikbaar of (nog) niet goed toepasbaar zijn van middelen van het betrouwbaarheidsniveau 'hoog' volgens eIDAS, kan sprake zijn van een overgangsregeling. Dat is de situatie waarin het veld zich vandaag bevindt: de Wet DIAZ is niet in werking, het Dezi-stelsel is niet operationeel, en de UZI-pas is in de systeem-tot-systeem-context niet goed toepasbaar. De notitie kiest expliciet voor de korte termijn ("de nadruk van dit memo ligt op het komen tot duidelijkheid en oplossingen op de korte termijn"; "voorlopig op basis van UZI-servercertificaten of PKIoverheid-certificaten") en is daarmee de overgangsregeling die de norm zelf voorziet.

### 9.9 De technische keuzes zijn conform de open-standaardeneis

NEN 7545 § 7.2 c eist dat de ICT-leverancier zich vergewist van de laatste stand van wetenschap en techniek op het gebied van informatiebeveiliging en gegevensbescherming, en zich daarover verantwoordt. OAuth 2.0 met FAPI 2.0 (asymmetrische client-authenticatie, sender-constrained tokens, strikte iss/aud/exp/jti-validatie tegen replay) is aantoonbaar die stand van techniek en wordt breed ondersteund. RAR (RFC 9396) is een generiek IETF-mechanisme dat een nieuwe stelselspecifieke JWT-extensie voorkomt; IHE IUA noemt RAR zelf als ontwikkelrichting. Dit sluit aan op de GISA-principes GIS03/HA3 (open, internationaal erkende standaarden) en GIS07 (hergebruik van bewezen oplossingen), en daarmee op NEN 7545 § 8.2.1, dat eist dat de gekozen infrastructuur zo veel mogelijk onafhankelijk is van de lagen daarboven in het interoperabiliteitsmodel.

### 9.10 Conclusie van deze beredenering

De notitie vult de eisen in die NEN 7545 daadwerkelijk stelt (8.3 h) in beide richtingen van de uitwisseling, volgt de verantwoordelijkheidsverdeling die NEN 7545 zelf hanteert (6.5.3, 8.3 e en f), respecteert de garantiestructuur van NEN 7512 (6.1.9, 6.1.10, 6.1.4), bakent haar scope af op een manier die het kernrisico wegneemt voordat de uitwisseling plaatsvindt, zoals NEN 7512 hoofdstuk 5 beheersmaatregel 6 vraagt, sluit aan op een uitwisselingsstap waarin de norm zelf een geautomatiseerd ophalen zonder aanwezige actor toestaat (5.3 stap 5), gebruikt de logging-architectuur die NEN 7513 en NEN 7545 8.7.4 voorschrijven, beweegt binnen de overgangsregeling die NEN 7545 8.3 expliciet biedt, en levert de kaderstellende afspraak die NEN 7512 hoofdstuk 5 en NEN 7545 zelf van het veld vragen. Zij is normconform.

---

## 10. Beredenering: waarom "Reactie escalatie Twiin" niet klopt

De notitie botst frontaal met een normatieve beheersmaatregel in de Wegiz-norm voor de eOverdracht, en herdefinieert een overgangssituatie tot eindbeeld.

### 10.1 Eis 2 van de notitie is de letterlijke ontkenning van NEN 7545 8.3 g

De notitie formuleert als eis aan de techniek:

> "Geen authenticatie van individuele zorgverleners of systemen van de partner. De techniek hoeft binnen de gegevensoverdracht niet op persoons- of systeemniveau te controleren."

NEN 7545 § 8.3 g, opgenomen als beheersmaatregel in de normatieve bijlage A, tabel A.1, luidt:

> "Het zorginformatiesysteem moet actoren (zoals zorgverleners) die zijn betrokken bij de uitwisseling van de eOverdracht op niveau 'hoog' volgens eIDAS, authenticeren en identificeren. Dit geldt voor de verzender en de ontvanger."

Dit is geen interpretatieverschil dat met een definitiekwestie is weg te nemen. NEN 7545 gebruikt de term actoren die zijn betrokken bij de uitwisseling, benoemt zorgverleners als voorbeeld, en verklaart de eis van toepassing op verzender en ontvanger. De notitie sluit precies dat uit. Bovendien voegt § 8.3 a daaraan toe dat de identiteit en authenticiteit van zorgaanbieders, zorgmedewerkers en zorginformatiesystemen betrouwbaar moeten kunnen worden verwerkt: drie niveaus, waarvan de notitie er één invult en twee expliciet afwijst.

### 10.2 De asymmetrie tussen 8.3 g en 8.3 h wijst de andere kant op

Wie de tekst nauwkeurig leest, ziet dat NEN 7545 strenger is over de zorgverlener dan over de organisatie:

- 8.3 g (actoren): "op niveau 'hoog' volgens eIDAS" staat in de beheersmaatregel zelf.
- 8.3 h (zorgaanbieders): de beheersmaatregel eist slechts "authenticeren en identificeren"; het niveau 'hoog' komt alleen voor in OPMERKING 7, die niet normatief is.

De notitie beroept zich voor haar organisatie-authenticatie op precies die niet-normatieve opmerking, terwijl zij de wel-normatieve eis met betrekking tot de actoren terzijde schuift. Dat is de zwakste van de twee bepalingen inroepen om de sterkste te verdringen.

### 10.3 De overgangsregeling rekt niet zo ver als de notitie haar rekt

NEN 7545 § 8.3 OPMERKING 5 en 6 voorzien in een overgangsregeling "bij het (nog) niet beschikbaar of (nog) niet goed toepasbaar zijn van middelen van het betrouwbaarheidsniveau 'hoog'". Dat is een uitzondering die aangrijpt op de beschikbaarheid van middelen, en die naar haar aard tijdelijk is en gericht op het alsnog bereiken van de norm.

De notitie doet iets anders. Zij verklaart de eis structureel niet van toepassing, en presenteert dat als eindbeeld:

> "De komst van Dezi heeft daarom geen effect op de zorgaanbieder-authenticatie of op de uitwisseling tussen zorgaanbieders; de uitwisselingspartner voert immers geen eigen authenticatie van zorgverleners uit. De in deze notitie gekozen aanpak is hierop voorbereid, ook voor de lange termijn."

Een overgangsregeling die geen einddatum, geen migratiepad en geen doelbeeld naar de norm kent, is geen overgangsregeling maar een permanente afwijking. Precies dat maakt het verschil tussen een pragmatische korte-termijnoplossing en het herschrijven van de norm.

### 10.4 NEN 7512 6.1.8-5 sluit de federatieve ontsnappingsroute uitdrukkelijk af

NEN 7512 § 6.1.8-4 eist dat de authenticatie van gebruikers van de uit te wisselen persoonlijke gezondheidsinformatie in overeenstemming met eIDAS is, op betrouwbaarheidsniveau hoog, met het normatieve 'moeten'. De toelichting bij 6.1.8 stelt daarbij dat de identiteit van de communicerende medewerkers met een hoge mate van zekerheid moet worden vastgesteld.

En dan volgt § 6.1.8-5:

> "Wanneer gebruik wordt gemaakt van mechanismen zoals federatieve stelsels en tokenidentificatie, moeten de hiervoor genoemde eisen volledig worden gerespecteerd."

Deze bepaling is geschreven voor precies de constructie die de notitie kiest. Zij zegt: federatie en tokens zijn toegestaan, maar zij mogen de eis niet verdunnen; het federatieve stelsel moet de eIDAS-hoog-identiteit dragen, niet vervangen. Een token dat uitsluitend een URA vervoert doet dat niet. De notitie beroept zich voor haar model op federatie, terwijl de norm juist bij federatie de eis onverkort handhaaft.

### 10.5 Beide partijen kunnen hun eigen verplichtingen niet nakomen

Het model laat aan weerszijden van de grens een toets onuitvoerbaar. Dat is bij een notified pull geen eenzijdig probleem van de bron: er zijn twee richtingen, en in beide ontbreekt de persoon.

Bij de ontvanger, op de notificatie-actie. NEN 7545 6.5.3 b eist dat het beveiligingsbeleid en de autorisatierichtlijn bij de ontvanger de informatie als rechtmatig herkennen, en stelt daarbij expliciet dat de uitwisseling moet voldoen aan de eisen die (U)eIDAS en NEN 7510-1, NEN 7510-2 en NEN 7512 aan de betrokken partijen stellen. (U)eIDAS wordt hier op de uitwisseling zelf van toepassing verklaard, niet alleen op de interne inrichting. Zorggroep Duinrand ontvangt een eOverdracht die zij zonder verdere toets in het dossier van mevrouw De Vries opneemt, zonder te weten welke zorgverlener hem samenstelde en verzond, terwijl NEN 7545 § 8.3 g juist ook de identiteit van de verzender eist.

Bij de verstrekker, op de ophaal-actie. NEN 7545 8.3 e eist dat het zorginformatiesysteem een bevoegdheid kan verifiëren van een zorgmedewerker in de rol van opvrager eOverdracht of verzender eOverdracht, via het BIG-register of een bekwaamheidstoets. Bij een uitwisseling waarin de opvrager niet identificeerbaar is, is deze eis structureel niet vervulbaar. NEN 7510-2 9.1.1 beperkt toegang tot persoonlijke gezondheidsinformatie bovendien tot situaties waarin een zorgrelatie tussen de gebruiker en de cliënt bestaat. De notitie vervangt die toets door een organisatieclaim plus een purpose_of_use-verklaring die, zoals de notitie in de bijlage zelf erkent, "meereist als verklaring van de ontvangende organisatie" en niet cryptografisch verifieerbaar is. Daarmee wordt de kernbeheersmaatregel van hoofdstuk 9 van NEN 7510-2 aan de bronzijde effectief uitgeschakeld.

Het geautomatiseerde ophalen is geen excuus, maar een keuze. Dat er bij t6b aan de ontvangende kant geen mens aanwezig is, is de inrichtingskeuze van de ontvanger, niet een eigenschap van de norm. NEN 7545 § 5.3, stap 5 zegt dat automatisch ophalen kan; dat ontslaat de ontvanger niet van § 8.3 g, en het maakt de handeling niet minder een verwerking van persoonlijke gezondheidsinformatie. Wie de handeling loskoppelt van de zorgverlener die haar veroorzaakt, moet die zorgverlener alsnog als verantwoordelijke gebruiker kunnen aanwijzen: precies wat NEN 7513 § 7.3 voorschrijft en wat dit model niet levert.

### 10.6 De afbakening bewijst niet wat zij moet bewijzen

De afbakening draagt het hele betoog, maar wat zij aandraagt komt niet aan bij het systeem dat moet beslissen.

De behandelrelatie is niet uitgedrukt in het verzoek. Dit punt moet eerlijk worden begrensd: bij gericht beschikbaar stellen heeft de bron de notificatie van t6a zelf gestuurd, voor deze patiënt naar deze organisatie, dus de autorisatiebeslissing is materieel al genomen. Het bezwaar is smaller, maar het staat: het RAR-object van de notitie draagt purpose_of_use, locations en locations_organization_id, en verder niets: geen referentie naar de notificatie of de genotificeerde resource. De notitie beschrijft nergens hoe het ophaalverzoek van t6b aan de notificatie van t6a wordt gebonden; zij laat die binding impliciet aan de resource-URL of aan lokale state. NEN 7513 § 7.4.7 vraagt daar juist expliciet naar: een identificator van het protocol waarmee is vastgesteld dat er een behandelrelatie is, conditioneel verplicht, met de toelichting dat dit protocol bepaalt of de gebruiker op basis van de behandelrelatie toegang mag krijgen. Een autorisatiemodel dat zijn belangrijkste rechtvaardiging niet in het autorisatieverzoek uitdrukt, is niet toetsbaar, en dat is precies wat NEN 7512 hfd. 5, beheersmaatregel 7 en NEN 7510-2 18.2.1 van een kader verlangen.

Bij de bevraging is het geen expressieprobleem maar een echt gat. De notitie erkent dat zelf, met haar aankondiging van een "aanvullende securitymaatregel voor toetsing van de behandelrelatie" (§ 7). Maar zij presenteert diezelfde techniek, dezelfde OAuth/private_key_jwt/FAPI/RAR/mTLS-basis ("ook hier past hetzelfde model"), al wel als de gekozen richting voor die use case, terwijl de maatregel die het gat moet dichten nog moet worden bedacht.

De toestemming is niet toetsbaar en niet logbaar. De veronderstelde toestemming rust op de mondelinge instemming van t4. Die is nergens vastgelegd. NEN 7513 § 7.4.8 maakt het toestemmingsprofiel conditioneel verplicht zodra het object patiëntgebonden is, wat hier per definitie het geval is. De notitie levert daarvoor geen waarde, ook geen expliciete standaardwaarde. Bovendien is dit precies de plaats waar NEN 7545 § 6.4.1 de hoofdregel van uitdrukkelijke toestemming stelt bij gebruik van een elektronisch uitwisselingssysteem (zie § 10.8 hieronder).

De afbakening bevestigt dat de zorgverleners identificeerbaar zijn. Dit is de scherpste inconsistentie. De notitie beroept zich voor het bestaan van de behandelrelatie op "telefonisch contact tussen zorgverleners"; zij gebruikt dus het bestaan van twee identificeerbare, bevoegde zorgverleners als fundament van haar redenering, en verklaart diezelfde identiteiten vervolgens niet-relevant voor de techniek. Als de identiteit van Kwabena Mensah en Priya Nandlal goed genoeg is om de juridische grondslag op te bouwen, is niet vol te houden dat zij te weinig toevoegt om in het autorisatieverzoek te worden meegedragen.

De handelende persoon verdwijnt volledig. In t2 handelt Fatima el Amrani onder verantwoordelijkheid van Kwabena. NEN 7545 tabel 1, voetnoot b staat dat toe, maar bindt het aan een lokaal autorisatieprotocol, en NEN 7513 § 7.3 vraagt dan om beide: de initiator en de verantwoordelijke gebruiker. In t6b handelt zelfs helemaal niemand: het ECD haalt automatisch op. Het model van de notitie draagt in geen van deze situaties een persoon over de grens, waarmee beide partijen een constructie faciliteren die zij achteraf niet kunnen verantwoorden.

### 10.7 De logging-eis is aan beide zijden onvervulbaar gemaakt

NEN 7545 § 5.6.1 bepaalt dat elke stap uit het uitwisselingsmodel moet worden gelogd volgens NEN 7513, "onder andere om achteraf de rechtmatigheid van een overdracht te kunnen beoordelen en een inzageverzoek van een patiënt te kunnen honoreren". § 7.2 e en § 8.7.4 herhalen dat voor bron, uitwisseling en doelapplicatie. NEN 7512 § 6.2.9-1 eist logging volgens NEN 7513 voor zowel verzending als ontvangst.

NEN 7513 laat vervolgens geen ruimte:

- § 5.1: alle systemen die gegevens bevatten die deel uitmaken van een patiëntdossier houden ten minste bij wie de gebruiker was en wie de verantwoordelijke gebruiker was.
- § 7.3: bij elke gebeurtenis hoort ten minste één gebruiker, de verantwoordelijke gebruiker, en die is altijd een natuurlijk persoon. Optionaliteit: verplicht. Wordt de gebeurtenis door een proces geïnitieerd, dan moet dat proces naast de verantwoordelijke gebruiker worden meegestuurd, niet in plaats daarvan.
- § 7.3.4 (gebruikersrol) en § 7.4.6 (autorisatieprotocol) zijn eveneens verplicht, en de toelichting bij 7.4.6 stelt dat autorisatieprotocol en rol samen bepalend zijn voor de rechtmatigheid van de gelogde actie.

Het model van de notitie maakt het aan beide zijden structureel onmogelijk om aan § 7.3 te voldoen. Het ziekenhuis logt het ophaalverzoek van t6b zonder verantwoordelijke gebruiker, want het kent er geen. Zorggroep Duinrand logt de geautomatiseerde ontvangst van t6b evenmin met een natuurlijk persoon, want er handelde er geen, en de zorgverlener die de notificatie accepteerde is in het model van de notitie nergens als zodanig vastgelegd. Dat NEN 7513 § 7.3 juist voorziet in de combinatie proces als initiator, natuurlijke persoon als verantwoordelijke gebruiker, laat zien dat de norm deze situatie kent en er een antwoord op geeft: het proces logt, maar nooit in plaats van de persoon.

De standaardwaarden 'geen protocol' en 'rol onbekend' uit de opmerking bij § 5.3 zijn bedoeld voor situaties waarin nog geen afspraken bestaan, niet als permanente uitkomst van een bewuste architectuurkeuze. En de verwijzing van de notitie naar "logging achteraf" verplaatst een verplichting van de bron naar de opvrager, terwijl NEN 7512 § 6.2.9-1 en NEN 7545 § 8.7.4 die verplichting juist aan beide zijden opleggen.

### 10.8 De toestemmingsredenering slaat een stap over

NEN 7545 § 6.4.1 bepaalt, op grond van Wabvpz art. 15a lid 1:

> "Bij het gebruik van een elektronisch uitwisselingssysteem mag de zorgaanbieder de gegevens van de patiënt pas beschikbaar stellen na uitdrukkelijke toestemming van de patiënt."

Twee termen in deze bepaling verdienen precisie, want zij bepalen hoe ver de hoofdregel reikt.

De eerste is beschikbaar stellen. Dat is hier niet het gericht beschikbaar stellen van § 3.12, maar het ruimere begrip van § 3.6: gegevens verwerken in het zorginformatiesysteem of elektronisch uitwisselingssysteem in het standaard uitwisselformaat, zodat andere zorgaanbieders ze kunnen benaderen of opvragen. De bepaling komt immers uit Wabvpz art. 15a lid 1 en grijpt aan op het uitwisselingssysteem, niet op de handeling van het versturen. De hoofdregel raakt de notitie dus niet omdat zij toevallig hetzelfde werkwoord gebruikt, maar via de tweede term.

Die tweede term is elektronisch uitwisselingssysteem, in § 3.8 en in Wabvpz art. 1 onder j omschreven als het systeem waarmee zorgaanbieders dossiers, gedeelten van dossiers of gegevens daaruit voor andere zorgaanbieders raadpleegbaar kunnen maken. Daarmee verplaatst de vraag zich naar de infrastructuur: valt de landelijke voorziening waarop de notitie haar model bouwt onder die definitie? Bij een notified pull, waarin de ontvanger een resource ophaalt bij de bron, is dat moeilijk te ontkennen. En zodra dat zo is, geldt de hoofdregel van uitdrukkelijke toestemming, ongeacht of de uitwisseling in de notitie gericht verzenden heet.

De notitie verklaart de toestemmingscontrole bij de bron buiten scope met een beroep op veronderstelde toestemming die "al besloten ligt in de instemming met de verwijzing". NEN 7545 § 6.4.3 erkent veronderstelde toestemming als categorie, maar verwijst voor de eisen daaraan integraal door naar NEN 7517, die nog niet bestaat. De uitzondering is dus normatief nog niet ingevuld, terwijl de hoofdregel van 6.4.1 al wel geldt. Daar komt bij dat § 3.21 (raadplegen) toestemming, autorisatie en authenticatie als cumulatieve vereisten noemt: de notitie schrapt de derde en leunt zwaarder op de eerste, terwijl die eerste juist nog niet is uitgewerkt.

### 10.9 De koppelvlakkeuze wordt op de verkeerde plaats gemaakt

Voor de in-scope use case bepalen NEN 7545 § 8.2.2.1 en § 7.4.10.1, ook opgenomen als beheersmaatregel in de normatieve bijlage A, dat voor het gericht beschikbaar stellen gebruik moet worden gemaakt van het koppelvlak voor de eOverdracht, dat de eisen aan transacties en informatiebeveiliging draagt. De eisen aan dat koppelvlak en aan mogelijke andere toegestane koppelvlakken worden vastgelegd in de LDN TA Pull, die in ontwikkeling is. Bij push moeten de koppelvlakken uit de bijlage eOverdracht van die TA worden gebruikt; bij mailtransport geldt NTA 7516. De opmerking bij § 8.2.2.2 voegt toe dat de LDN TA Pull ook de technische eisen bevat voor de koppelvlakken voor identificatie, authenticatie en adressering.

De norm wijst dus een specifieke plaats aan waar deze keuze normatief thuishoort, en dat is niet een VWS-memo. NEN 7545 § 8.2.2 en NEN 7522 beleggen de specificatie bij de standaardhouder en de stelselbeheerder, en NEN 7545 § 7.5 en bijlage D binden dat aan een roadmap met baselines en migratieperiodes. Een concept-notitie die het autorisatieprofiel vaststelt, loopt op die besluitvorming vooruit; zij kan er hooguit input voor zijn.

Inhoudelijk komt daar één zelfgemaakt bezwaar bij. De notitie wijst de "IHE JWT IUA extension" en het "FHIR UDAP B2B Authorization Extension Object" af omdat die het purpose_of_use-attribuut aan een profiel-specifieke extensie binden, en kiest RAR "om een nieuwe, stelselspecifieke extensie te voorkomen". Vervolgens definieert zij een RAR-objecttype nl-gis-v1 met de zelfbedachte velden locations_organization_id en subject_organisation_type. Dat is een nieuwe, stelselspecifieke extensie, alleen op een andere plaats in de stack. Het argument waarmee de alternatieven worden afgewezen, geldt daarmee tegen de eigen keuze.

Voor de bevraging-variant is de afwijking harder: daar schrijven § 8.2.2.2 en § 7.4.10.2 ondubbelzinnig het IHE-MHD-koppelvlak voor, met de specifieke eisen in de bijlage eOverdracht van de LDN TA Pull, het IHE-spoor waarbinnen IUA de bijbehorende autorisatielaag is.

### 10.10 De risicoklasse-toets ontbreekt, en de uitkomst zou de ondertekening raken

NEN 7512 hoofdstuk 5 verplicht de kaderstellende partijen om de bedreigingen te inventariseren, gevolg- en kansklasse te bepalen (tabel 1a, 1b, 2), de risicoklasse vast te stellen (tabel 3), de uitwisseling zo nodig aan te passen en de hele redenering te documenteren (beheersmaatregel 7). De notitie bevat geen risicoklassebepaling. Dat is niet alleen een procedureel gebrek: de uitkomst is materieel bepalend. Een verpleegkundige overdracht met actuele verpleegproblemen, diagnoses en interventies van een kwetsbare oudere komt via tabel 1a en 1b al snel op gevolgklasse matig of groter uit, en daarmee op risicoklasse C of hoger. Dan geldt NEN 7512 6.2.7-2: ondertekening met een gekwalificeerd middel en op basis van een gekwalificeerd certificaat voor e-handtekeningen (eIDAS bijlage I en II, jo. art. 18.15a tot en met 18.15e Telecommunicatiewet), te controleren door de ontvanger (6.2.7-3). Een gekwalificeerde elektronische handtekening is per eIDAS die van een natuurlijke persoon; een UZI-servercertificaat is een ander type vertrouwensdienst. De motivering bij 6.2.7 benoemt bovendien exact het risico dat de notitie onafgedekt laat: voorkomen dat een niet-daartoe geautoriseerde medewerker de indruk kan wekken dat een onjuiste uitwisseling een goede is.

### 10.11 Conclusie van deze beredenering

De notitie ontkent een normatieve beheersmaatregel uit de Wegiz-norm voor de eOverdracht (NEN 7545 8.3 g, bijlage A), die uitdrukkelijk voor verzender en ontvanger geldt en dus beide richtingen van de notified pull raakt; beroept zich voor haar eigen model op een niet-normatieve opmerking (8.3 h, OPMERKING 7); rekt een overgangsregeling op tot eindbeeld; gebruikt federatie op de manier die NEN 7512 6.1.8-5 uitdrukkelijk afsluit; drukt de binding tussen notificatie en ophaalverzoek nergens in het autorisatieverzoek uit; maakt de logging-eisen van NEN 7513 5.1 en 7.3 aan beide zijden onvervulbaar; leunt op een toestemmingsroute die normatief nog niet is uitgewerkt terwijl de hoofdregel van 6.4.1, die juist over beschikbaar stellen gaat, wel geldt; maakt de koppelvlakkeuze op een plaats die NEN 7545 8.2.2 en NEN 7522 daarvoor niet aanwijzen; en slaat de verplichte risicoklassebepaling van NEN 7512 hoofdstuk 5 over, terwijl juist die bepaling de ondertekeningseis van 6.2.7 zou activeren.

---

## 11. Slotbeschouwing

Beide beredeneringen in hoofdstuk 9 en 10 zijn sluitend, en beide gebruiken bepalingen uit dezelfde vijf normen. De botsing is niet op te lossen door beter te lezen, want de normen bevatten letterlijk tegengestelde signalen:

- NEN 7545 8.3 g (actoren op eIDAS-hoog, verzender en ontvanger) tegenover NEN 7545 6.5.3 a en c (autorisatie geëffectueerd in de toegangsbeheersing van het eigen zorginformatiesysteem).
- NEN 7513 5.2 onder 3 (bron logt organisaties) tegenover NEN 7513 7.3 (elke logregel heeft een verantwoordelijke gebruiker, altijd een natuurlijk persoon, verplicht).
- NEN 7512 6.1.9 ("moet ervoor instaan", vertrouwen op verklaring) tegenover NEN 7512 6.1.8-4 en -5 ("moet eIDAS-hoog, ook in federatieve stelsels", verifiëren).
- NEN 7510-2 12.4.1 (berichtensystemen loggen herkomst en bestemming) tegenover NEN 7510-2 9.1.1 (toegang veronderstelt een zorgrelatie tussen gebruiker en cliënt).
- NEN 7545 6.4.1 (uitdrukkelijke toestemming bij een elektronisch uitwisselingssysteem) tegenover NEN 7545 6.4.3 (veronderstelde toestemming, uitgewerkt in een norm die nog niet bestaat).
- NEN 7545 8.3 g (authenticeer de actoren bij de uitwisseling, verzender en ontvanger) tegenover NEN 7545 5.3 stap 5 (het ophalen mag automatisch gebeuren bij binnenkomst van de notificatie, dus zonder enige actor).
- NEN 7510 hanteert 'behoren te' waar NEN 7512 en NEN 7545 voor dezelfde materie 'moeten' hanteren, en NEN 7512 verklaart zichzelf in het voorwoord tot nadere invulling van NEN 7510.

Die vijfde tegenstelling is de meest praktische van allemaal, en zij is bij de eOverdracht niet theoretisch: de in-scope use case is een notified pull, waarin de bron eerst notificeert en de ontvanger vervolgens ophaalt, mogelijk volautomatisch. Op dat moment is er aan de ontvangende kant niemand om te authenticeren, terwijl de norm die authenticatie in dezelfde adem eist.

Wat de normen wel eenduidig voorschrijven, is dat de keuze wordt gemaakt en verantwoord:

- NEN 7512 hoofdstuk 5 legt bij de kaderstellende partijen de plicht om de acceptabele risicoklasse vast te stellen (beheersmaatregel 1), de uitwisseling aan te passen tot dat niveau is bereikt (6) en het geheel inclusief restrisico's te documenteren (7), toetsbaar via NEN 7510-2 13.2.2 en 18.2.1.
- NEN 7512 6.1.3 vereist dat wordt onderzocht en vastgelegd welke zekerheden een identificatiestelsel biedt.
- NEN 7545 8.2.2 en NEN 7522 beleggen de koppelvlakinvulling bij de standaardhouder en de stelselbeheerder, via de LDN TA Pull.
- NEN 7545 voorwoord kondigt aan dat de norm wordt herzien zodra NEN 7517 en NEN 7518 er zijn, en dat die herziening eerder komt dan de standaardtermijn van vijf jaar.

De Twiin-escalatie is daarmee strikt genomen geen normvraag maar een kaderlacune met een adres. Er is geen vastgestelde, gedocumenteerde keuze tussen pool A en pool B, met risicoanalyse en restrisico-verantwoording, op de plaats waar die volgens NEN 7545 en NEN 7522 hoort: de LDN TA Pull en de nog te publiceren NEN 7517 en NEN 7518. Zolang die er niet is, kan elke deelnemer zijn eigen pool kiezen en zich daarbij op de norm beroepen, en dat is exact wat er gebeurt.

Eén concrete vraag verdient daarbij voorrang, omdat zij beide polen raakt en met een korte tekstuele ingreep te beslechten is: op welke stap van het uitwisselingsmodel grijpt NEN 7545 § 8.3 g aan? Op stap 5 (uitwisselen), waar bij een notified pull geen actor aanwezig hoeft te zijn, of op stap 1 en stap 8, waar de zorgverlener daadwerkelijk handelt? Wie die vraag beantwoordt, beslist tegelijk of het model van de notitie normconform is of niet.

De scherpste formulering van de patstelling is deze: de notitie is een verdedigbare invulling van een lacune die NEN 7545 zelf benoemt, maar zij vult die lacune in op een manier die botst met een bepaling die NEN 7545 niet als lacune heeft achtergelaten.
