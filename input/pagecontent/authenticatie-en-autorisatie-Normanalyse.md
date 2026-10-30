# Normanalyse in het kort

Knelpunten in NEN 7510, NEN 7512, NEN 7513 en NEN 7545 bij identificatie en authenticatie. Verkorte weergave van de analyse bij de notitie "Reactie escalatie Twiin" over de harmonisatie van authenticatie en autorisatie voor BgZ en eOverdracht.

## Leeswijzer en verantwoording

Dit document benoemt per norm de bepalingen die een patstelling veroorzaken en sluit af met het knelpunt dat NEN 7545 voor de generieke functies doorverwijst naar documenten die nog niet beschikbaar zijn. Bij elk knelpunt staat de betreffende normtekst in een kader, zodat de lezer niet hoeft te zoeken.

De citaten zijn korte fragmenten uit de normteksten, overgenomen ten behoeve van analyse en besluitvorming. Alle nummers en teksten zijn nagelopen op de volgende edities: NEN 7510-1:2024, NEN 7510-2:2017, NEN 7512:2022, NEN 7513:2018 en NEN 7545:2026.

## 1. De kwestie

Op 31 maart 2026 ontving VWS een escalatiememo van Twiin over de authenticatie-eis bij landelijke databeschikbaarheid. De concept-reactie van 13 juli 2026 beantwoordt die met een federatief vertrouwensmodel: iedere zorgaanbieder authenticeert de eigen zorgverleners en systemen binnen het eigen domein, en over de organisatiegrens heen wordt uitsluitend de organisatie-identiteit geverifieerd. Op die notitie is vanuit het veld veel en onderling tegenstrijdige reactie gekomen, waarbij veel reacties zich op de normen beroepen.

De kernvraag is smal: moet bij een uitwisseling tussen twee zorgaanbieders de individuele zorgverlener van de tegenpartij worden geauthenticeerd, of volstaat de organisatie-identiteit uit het UZI-register?

De uitkomst van de analyse is dat beide antwoorden met de normen in de hand zijn te onderbouwen. De normen kiezen niet. De discussie is daarmee niet met een verwijzing naar een norm te beslechten; het is een stelselkeuze. De normen laten die keuze open, maar zij wijzen wel aan wie hem moet maken en waar hij moet worden vastgelegd. Juist op die plaatsen is hij nog niet gemaakt.

> NEN 7512:2022, 3.10 en 3.11, termen en definities "kader: overeenkomst die de bij de uitvoering van de uitwisseling betrokken communicatiepartijen bindt. Opmerking 1 bij de term: Gaat het om een 1-op-1-overeenstemming, dan zal het vaak als uitwisselingsovereenkomst worden betiteld; bij een 1-op-n-overeenstemming zal waarschijnlijk worden gesproken over aansluitvoorwaarden. kaderstellende partijen: partijen die het kader ontwikkelen en opstellen."

Voor precies de keuze die hier voorligt, het vertrouwen op een bestaand federatief identificatiestelsel, wijst de norm die partijen ook uitdrukkelijk aan. De vraag of een federatief stelsel voldoende zekerheid biedt, moet dus niet per zorgaanbieder en niet in de techniek worden beantwoord, maar door de kaderstellende partijen, vastgelegd en onderbouwd.

> NEN 7512:2022, 6.1.3 Gebruik identificatiestelsels, beheersmaatregel 1 "Bij het gebruik van bestaande identificatiestelsels (zoals federatieve) moeten de kaderstellende partijen deze onderzoeken en concluderen dat deze voldoende zekerheden bieden."

Daarmee zijn vier concrete plaatsen aanwijsbaar waar het antwoord volgens de normen hoort te landen:

1. In de risicobeoordeling die aan het kader voorafgaat. NEN 7512 hoofdstuk 5 schrijft voor dat bedreigingen worden geïnventariseerd, dat gevolg- en kansklasse worden bepaald, dat de risicoklasse wordt vastgesteld en dat de restrisico's worden gedocumenteerd. Die uitkomst bepaalt welk authenticatieniveau proportioneel is.
2. In het kader zelf. NEN 7512 6.1.1 onder 2 eist procedures die ten minste het autorisatiebeleid en de technische en organisatorische waarborgen duidelijk maken, 6.1.2 stelt eisen aan de inhoud en aan de ondertekening van het kader door elke deelnemende organisatie, en NEN 7510-2 9.1.1 eist dat met elke partij waarmee cliëntgegevens worden uitgewisseld vooraf afspraken over toegang en rechten zijn gemaakt.
3. In de koppelvlakspecificatie waarnaar NEN 7545 verwijst. Volgens 8.2.2 liggen de eisen voor identificatie, authenticatie en adressering bij de technische afspraak zelf, de LDN TA Pull met de bijlage eOverdracht, waarvan het beheer volgens NEN 7522 bij de standaardhouder en de stelselbeheerder ligt.
4. In de generieke normen waarnaar NEN 7545 doorverwijst. Voor identificatie en authenticatie is dat NEN 7518 via 8.3 a, voor toestemming NEN 7517 via 6.4.

Op geen van deze vier plaatsen is de keuze op dit moment vastgelegd.

## 2. De casus als toetssteen

Mevrouw De Vries wordt na een heupfractuur vanuit het ziekenhuis overgedragen aan een VVT-organisatie. De casus volgt usecase 1 van NEN 7545, het gericht beschikbaar stellen, dat in de notitie gericht verzenden heet.

| Stap | Wat er gebeurt | Wie |
|---|---|---|
| t0 | Ontslagbesluit en vastlegging van de medische ontslaggegevens | klinisch geriater |
| t1 | Telefonisch contact over de zorgvraag en de overname | transferverpleegkundige en wijkverpleegkundige |
| t2 | Aanmelding met een geminimaliseerd bericht | secretaresse namens de transferverpleegkundige |
| t3 | Acceptatie; hier ontstaat de behandelrelatie en de veronderstelde toestemming | VVT |
| t4 | Mondelinge instemming van de patiënt, niet vastgelegd | patiënt |
| t5 | Opstellen van de eOverdracht, relevantietoets en afscherming van een passage | transferverpleegkundige |
| t6a | Notificatie naar de VVT; de VVT verifieert de URA van het ziekenhuis | systeem tot systeem |
| t6b | Automatisch ophalen; het ziekenhuis verifieert de URA van de VVT | systeem tot systeem, geen mens aanwezig |
| t7 | De VVT verwerkt de gegevens in het eigen dossier | systeem, geen mens aanwezig |
| t8 | Een zorgverlener van de VVT raadpleegt de gegevens, bijvoorbeeld de volgende ochtend | wijkverpleegkundige |

Wat het bronsysteem bij t6b ontvangt is een ondertekend token met de URA van de opvragende organisatie en het doel (behandeling) als meereizende verklaring. Wat er niet in staat: geen persoon, geen rol, geen referentie naar de aanmelding van t2, en geen toestemmingsindicatie. Alles wat de notitie juridisch draagt, het telefoontje van t1, de aanmelding van t2 en de instemming van t4, bereikt het bronsysteem niet.

Twee waarnemingen keren in alle knelpunten hieronder terug. Bij t6b handelt aan de ontvangende kant niemand, en pas bij t7 en t8 is er aan die kant voor het eerst een geauthenticeerde natuurlijke persoon.

## 3. Knelpunten in NEN 7510

### 3.1 Het begrip gebruiker is niet aan een domein gebonden

De kernbepaling over authenticatie spreekt over gebruikers van gezondheidsinformatiesystemen, zonder te zeggen of daarmee de gebruikers van het eigen systeem worden bedoeld of ook degene die via een uitwisseling de gegevens raadpleegt. Wie het eerste leest, komt uit bij het federatieve model; wie het tweede leest, eist authenticatie in de transactie.

> NEN 7510-2:2017, 9.4.1, zorgspecifieke beheersmaatregel
> "Gezondheidsinformatiesystemen die persoonlijke gezondheidsinformatie verwerken, behoren de identiteit van gebruikers vast te stellen en dit behoort te worden gedaan door middel van authenticatie waarbij ten minste twee factoren betrokken worden."

Deze bepaling is bovendien geformuleerd met "behoren te" en is daarmee risicogebaseerd invulbaar, terwijl NEN 7512 en NEN 7545 voor dezelfde materie "moeten" gebruiken. Dat verschil in normatief gewicht is nergens uitgewerkt.

### 3.2 Toegang veronderstelt een zorgrelatie met de persoon

Het toegangsbeveiligingsbeleid koppelt toegang tot persoonlijke gezondheidsinformatie aan een relatie tussen de gebruiker en de cliënt, niet tussen de organisatie en de cliënt. Een bronhouder die alleen een organisatie-identiteit ontvangt, kan die toets niet uitvoeren.

> NEN 7510-2:2017, 9.1.1, zorgspecifieke beheersmaatregel
> "In het algemeen behoren de gebruikers van gezondheidsinformatiesystemen hun toegang tot persoonlijke gezondheidsinformatie te beperken tot situaties: a) waarin er een zorgrelatie bestaat tussen de gebruiker en de persoon waarop de gegevens betrekking hebben (de cliënt tot wiens persoonlijke gezondheidsinformatie er toegang wordt gemaakt); b) waarin de gebruiker een activiteit uitvoert namens de persoon waarop de gegevens betrekking hebben; c) waarin er specifieke gegevens nodig zijn om deze activiteit te ondersteunen."

Dezelfde bepaling regelt de organisatiegrens juist op partijniveau, en de bijbehorende nalevingschecklist vraagt uitdrukkelijk of gefedereerde oplossingen worden toegepast. Ook binnen dit ene artikel wijzen de signalen dus twee kanten op.

> NEN 7510-2:2017, 9.1.1, zorgspecifieke beheersmaatregel, slot
> "De organisatie behoort alle partijen te identificeren en documenteren waarmee cliëntgegevens worden uitgewisseld, en met deze partijen behoren contractuele afspraken over toegang en rechten te worden gemaakt, alvorens cliëntgegevens uit te wisselen."

### 3.3 Het registratieproces is naar zijn aard per organisatie

De norm eist dat het authenticatieniveau past bij het toegangsniveau en verbindt dat aan een formeel registratieproces waarin identiteit en beroepsgegevens worden vastgelegd en geverifieerd. Zo'n proces kan een bronhouder onmogelijk uitvoeren voor het personeel van elke tegenpartij. Dat is een argument voor het federatieve model, maar het legt tegelijk een mismatch bloot: het toegangsniveau is een volledig verpleegkundig dossier, terwijl de geclaimde identiteit een organisatie is.

> NEN 7510-2:2017, 9.2.1, zorgspecifieke beheersmaatregel
> "Procedures voor het registreren van gebruikers behoren te garanderen dat het vereiste niveau van authenticatie van de geclaimde identiteit van gebruikers overeenkomt met het (de) toegangsniveau(s) waarover de gebruiker zal gaan beschikken."

### 3.4 Rolgebaseerde toegang en koppeling aan cliëntregistraties

De norm veronderstelt dat het systeem gebruikers aan rollen en aan cliëntregistraties koppelt. Een clientaccount per organisatie, zoals in de client-credentials flow, maakt dat aan de bronzijde structureel onmogelijk.

> NEN 7510-2:2017, 9.2.3, zorgspecifieke implementatierichtlijn
> "Gezondheidsinformatiesystemen die persoonlijke gezondheidsinformatie bevatten, behoren op rollen gebaseerde toegangscontrole te ondersteunen waarmee elke gebruiker aan een of meer rollen kan worden toegewezen en elke rol aan een of meer systeemfuncties. [...] Gezondheidsinformatiesystemen behoren gebruikers (waaronder begrepen zorgverleners, ondersteunend personeel en anderen) aan de registraties van cliënten te koppelen en toekomstige toegang op basis van deze koppeling mogelijk te maken."

### 3.5 Twee regimes naast elkaar: toegang en berichtenverkeer

Dezelfde paragraaf over verslaglegging bevat twee eisen die verschillende kanten op wijzen. Voor toegang moet het auditverslag de gebruiker en de cliënt uniek identificeren. Voor het overdragen van berichten volstaat een registratie van herkomst en bestemming, dus van organisaties.

> NEN 7510-2:2017, 12.4.1, zorgspecifieke implementatierichtlijn
> "Het auditverslag behoort op unieke wijze de gebruiker en de persoon waarop de gegevens betrekking hebben (d.w.z. de cliënt), te identificeren, de functie te identificeren die wordt uitgevoerd door de gebruiker (het aanmaken van, toegang maken tot, bijwerken van registraties enz.) en het tijdstip en de datum te vermelden waarop de functie werd uitgevoerd."

> NEN 7510-2:2017, 12.4.1, zorgspecifieke implementatierichtlijn
> "Berichtensystemen die worden gebruikt voor het overdragen van berichten die persoonlijke gezondheidsinformatie bevatten, behoren een registratie bij te houden van de overdracht van berichten (die registratie behoort de tijd, datum, herkomst en bestemming van het bericht te bevatten, maar niet de inhoud ervan)."

De vraag of een eOverdracht via een notified pull onder het eerste of het tweede regime valt, beslist de hele discussie. De norm beantwoordt die vraag niet.

### 3.6 Deel 1 en deel 2 lopen uit de pas

NEN 7510-1 is in 2024 herzien naar de structuur van de nieuwe ISO-reeks, met beheersmaatregelen genummerd A.5 tot en met A.8. NEN 7510-2 dateert nog uit 2017 en hanteert de oude nummering met hoofdstukken 9 en 12. Dezelfde eis komt daardoor onder twee nummers voor.

> NEN 7510-1:2024, A.8.5 Beveiligde authenticatie, zorgspecifieke beheersmaatregel (aanvullend)
> "Er moet ten minste tweefactorauthenticatie worden gebruikt voor systemen die persoonlijke gezondheidsinformatie verwerken."

Let op het verschil in formulering: waar NEN 7510-2 9.4.1 "behoren te" gebruikt, gebruikt NEN 7510-1 A.8.5 "moet". Voor dezelfde eis bestaan dus twee formuleringen met verschillend normatief gewicht, in twee delen van dezelfde norm.

Dit werkt door in de andere normen. NEN 7512:2022 verwijst in zijn normatieve verwijzingen naar de inmiddels vervangen editie van deel 1, en benoemt beheersmaatregelen met de nummering van 2017.

> NEN 7512:2022, hoofdstuk 2, normatieve verwijzingen
> "NEN 7510-1:2017+A1:2020, Medische informatica - Informatiebeveiliging in de zorg - Deel 1: Managementsysteem. NEN 7510-2:2017, Medische informatica - Informatiebeveiliging in de zorg - Deel 2: Beheersmaatregelen. OPMERKING NEN 7510-1:2017+A1:2020 en NEN 7510-2:2017 worden gezamenlijk aangeduid als NEN 7510."

Wie NEN 7512 leest en vervolgens de actuele NEN 7510-1:2024 erbij pakt, moet de nummers zelf vertalen. Dat geldt ook voor de scharnierbepaling waarop NEN 7512 zichzelf baseert, 13.2.2 van NEN 7510-2:2017, en voor de in 6.1.4 benadrukte 18.2.1.

## 4. Knelpunten in NEN 7512

### 4.1 eIDAS hoog voor gebruikers van de uit te wisselen informatie

Dit is de scherpste bepaling in het stelsel. Zij spreekt niet over gebruikers van het eigen systeem, maar over gebruikers van de uit te wisselen informatie, en zij gebruikt het normatieve "moeten".

> NEN 7512:2022, 6.1.8 Identiteiten, beheersmaatregel 4
> "Authenticatie van gebruikers van de uit te wisselen persoonlijke gezondheidsinformatie moet in overeenstemming met eIDAS zijn, waarbij het betrouwbaarheidsniveau 'hoog' moet worden gebruikt."

Of dit voor uitwisseling uitgevoerd moet worden door de bronhouder, of dat de ontvangende zorgaanbieder dit moet implementeren, is niet expliciet.

### 4.2 Federatie ontslaat niet van de eis

De bepaling die direct volgt, is geschreven voor precies de constructie die de notitie kiest. Zij staat federatie en tokens toe, maar eist dat de voorgaande eisen volledig worden gerespecteerd. Een token dat uitsluitend een URA vervoert doet dat niet.

> NEN 7512:2022, 6.1.8 Identiteiten, beheersmaatregel 5
> "Wanneer gebruik wordt gemaakt van mechanismen zoals federatieve stelsels en tokenidentificatie, moeten de hiervoor genoemde eisen volledig worden gerespecteerd."

### 4.3 De toelichting bij 6.1.8 verwijst naar de verkeerde beheersmaatregel

Dit is een concrete fout in de norm, en het raakt precies het omstreden punt. De toelichtende tekst boven de beheersmaatregelen stelt dat de identiteit van de communicerende medewerkers met hoge zekerheid moet worden vastgesteld, en verwijst daarvoor naar beheersmaatregel 3. Beheersmaatregel 3 gaat echter uitdrukkelijk over niet-menselijke entiteiten.

> NEN 7512:2022, 6.1.8 Identiteiten, toelichting
> "Daarnaast behoort de identiteit van de communicerende medewerkers met een hoge mate van zekerheid te worden vastgesteld. Dit is bepaald in beheersmaatregel 3)."

> NEN 7512:2022, 6.1.8 Identiteiten, beheersmaatregel 3
> "Voor elke andere niet-menselijke te identificeren entiteit: a) moet de betreffende eigenaar en verantwoordelijke aangewezen zijn; b) moet de identificatie eenduidig zijn; en c) moet de identificatie herleidbaar zijn gedurende de periode die het doel van de uitwisseling nastreeft. OPMERKING Met niet-menselijke entiteit worden dingen bedoeld zoals servers, telefoons, infuuspompen, enz., die binnen elektronische communicatie kunnen worden geïdentificeerd."

De eis voor communicerende medewerkers heeft daarmee geen eigen beheersmaatregel. De lezer moet zelf beslissen of die eis besloten ligt in beheersmaatregel 4, dat over eIDAS gaat, of dat zij alleen als toelichting is bedoeld en dus niet normatief is. Dat is een van de plaatsen waar de twee interpretaties letterlijk uiteenlopen.

### 4.4 Instaan voor is iets anders dan verifiëren

De bepaling over bevoegdheden gebruikt de formulering "ervoor instaan". Dat is een garantieverplichting jegens de wederpartij en geen verplichting om die bevoegdheid technisch te verifiëren. Zou de norm verificatie bedoelen, dan zou deze bepaling naast 6.1.8 overbodig zijn.

> NEN 7512:2022, 6.1.9 Bevoegdheden, beheersmaatregelen 1 en 2
> "Een verzendende communicatiepartij moet ervoor instaan dat de verzending van de persoonlijke gezondheidsinformatie door een daartoe bevoegde medewerker geschiedt. De bij de uitwisseling van persoonlijke gezondheidsinformatie ontvangende communicatiepartij moet ervoor instaan dat de ontvangst van de persoonlijke gezondheidsinformatie door een daartoe bevoegde medewerker geschiedt."

### 4.5 Ondertekening hangt aan een risicoklasse die niet is bepaald

De ondertekeningseis is gekoppeld aan de risicoklasse. Bij de zwaardere klassen A, B en C is niet alleen een gekwalificeerd middel vereist, maar ook een gekwalificeerd certificaat voor elektronische handtekeningen. Een gekwalificeerde elektronische handtekening is per eIDAS die van een natuurlijke persoon; een servercertificaat is een andere vertrouwensdienst.

> NEN 7512:2022, 6.2.7 Ondertekening, beheersmaatregel 2
> "Om zekerheid omtrent de herkomst en de integriteit van een uitwisseling in risicoklasse A, B of C te realiseren moet deze worden ondertekend conform Besluit 2015/1506, dat is aangemaakt met een gekwalificeerd middel voor het aanmaken van e-handtekeningen (conform bijlage II van eIDAS) en is gebaseerd op een gekwalificeerd certificaat voor e-handtekeningen (conform bijlage I van eIDAS) en in overeenstemming met artikel 18.15a tot en met 18.15e van de Telecommunicatiewet."

## 5. Knelpunten in NEN 7513

### 5.1 De verantwoordelijke gebruiker is altijd een natuurlijk persoon

Dit is de bepaling die in geen van beide lezingen wordt gehaald. Het veld is verplicht, en de norm laat geen ruimte voor een proces in plaats van een persoon.

> NEN 7513:2018, 7.3 Gebruiker
> "De gebruiker kan een natuurlijk persoon zijn, maar ook een organisatie of een proces in een informatiesysteem. Bij elke gebeurtenis hoort ten minste een gebruiker; dit is de verantwoordelijke gebruiker. Een verantwoordelijke gebruiker is altijd een natuurlijk persoon. [...] Indien een andere gebruiker dan de verantwoordelijke gebruiker of een proces de gebeurtenis initieert, dan moet deze gebruiker of dit proces ook worden meegestuurd in de log. Optionaliteit: verplicht"

De norm voorziet dus juist in de combinatie van een proces als initiator naast een natuurlijk persoon als verantwoordelijke gebruiker. Het proces logt, maar nooit in plaats van de persoon. In het model van de notitie draagt de uitwisseling geen van beide over de organisatiegrens, en bij t6b handelde aan de ontvangende kant helemaal niemand.

### 5.2 De eis geldt voor elk systeem dat dossiergegevens bevat

De reikwijdte is ruim geformuleerd. Ook het bronsysteem dat gegevens verstrekt valt eronder, want het bevat gegevens die deel uitmaken van een patiëntdossier.

> NEN 7513:2018, 5.1 Algemeen
> "Daartoe moeten alle systemen die gegevens bevatten die deel uitmaken van een patiëntdossier, daarover ten minste bijhouden: welke gebeurtenis heeft plaatsgevonden; datum en tijdstip van de gebeurtenis; welke cliënt het betrof; wie de gebruiker was; wie de verantwoordelijke gebruiker was namens wie de gebruiker optrad."

### 5.3 Maar bij de bron volstaat organisatieniveau

Twee bladzijden verder staat het tegengestelde. Voor de informatiebehoefte van de cliënt legt de norm persoonsniveau bij de opvragende instelling en organisatieniveau bij de bron. Dat is precies het federatieve model, in dezelfde norm die in 7.3 een natuurlijk persoon verplicht stelt.

> NEN 7513:2018, 5.2 Cliënten
> "In de logging moet daarom worden opgenomen: 1) welke medewerkers van de zorginstelling toegang hebben gehad tot de gegevens van de cliënt in het elektronisch patiëntdossier; 2) welke medewerkers van de zorginstelling gegevens van de cliënt hebben opgevraagd bij andere organisaties; 3) welke andere organisaties toegang hebben gehad tot de gegevens van de cliënt in het elektronisch patiëntdossier."

Het knelpunt is niet dat een van beide fout is, maar dat de norm niet zegt welke van de twee geldt wanneer de bron een verzoek van een andere zorgaanbieder afhandelt.

### 5.4 Behandelrelatie en toestemming moeten in de log, maar zijn niet geleverd

Twee velden in het datamodel vragen precies naar wat in het huidige model ontbreekt.

> NEN 7513:2018, 7.4.7 Behandelrelatieprotocol
> "Identificator van het protocol dat beschrijft hoe wordt vastgesteld dat er sprake is van een behandelrelatie. Optionaliteit: conditioneel verplicht. TOELICHTING Het behandelrelatieprotocol bepaalt of de gebruiker op basis van de behandelrelatie toegang mag krijgen tot de medische gegevens."

Hetzelfde geldt voor 7.4.8, het toestemmingsprofiel, dat conditioneel verplicht is zodra het object patiëntgebonden is, en voor 7.4.6, het autorisatieprotocol, dat onvoorwaardelijk verplicht is. De toelichting bij 7.4.6 stelt dat autorisatieprotocol en rol samen bepalend zijn voor de rechtmatigheid van de gelogde actie. Zonder rol en zonder persoon logt de bron dus een gebeurtenis waarvan de rechtmatigheid per definitie niet toetsbaar is.

### 5.5 De norm is geschreven vanuit een enkel informatiedomein

NEN 7513 dateert uit 2018 en gaat uit van acties op een elektronisch patiëntdossier binnen een informatiedomein. Domeinoverschrijdende communicatie wordt opgelost door achteraf loggegevens vergelijkbaar te maken, niet door identiteiten mee te sturen in de transactie.

> NEN 7513:2018, 8.6 Voorwaarden voor interoperabiliteit
> "Bij informatiedomein overschrijdende communicatie (buiten de zorginstelling) of landelijke communicatie moet logging uit verschillende bronnen vergelijkbaar zijn. Hiertoe moet een exportfaciliteit aanwezig zijn."

Twee kleinere signalen van veroudering: de norm noemt naast de AVG nog de inmiddels ingetrokken Wet bescherming persoonsgegevens, en het datamodel is afgeleid van IETF RFC 3881 en het IHE IT Framework, zonder de latere FHIR-gebaseerde uitwisselpatronen waarop NEN 7545 bouwt.

## 6. Knelpunt: NEN 7545 verwijst naar wat er nog niet is

NEN 7545:2026 is de Wegiz-norm voor de eOverdracht en bevat in hoofdstuk 8 en in de normatieve bijlage A harde eisen aan identificatie en authenticatie. Tegelijk verwijst de norm voor de uitwerking van vrijwel al die eisen door naar documenten die nog niet beschikbaar zijn. De norm is daarmee normatief en zelfverklaard voorlopig.

> NEN 7545:2026, Voorwoord
> "Deze norm is opgesteld, terwijl afspraken over gerelateerde onderwerpen nog niet volledig beschikbaar zijn. [...] Wanneer de normen voor de generieke functies zijn gepubliceerd en (een deel van) de hiervoor genoemde afspraken beschikbaar zijn, zal deze norm moeten worden herzien. Deze herziening vindt naar verwachting eerder plaats dan na de standaardtermijn van vijf jaar."

Het overzicht van openstaande verwijzingen:

| Onderwerp | Waarheen NEN 7545 verwijst | Status | Gevolg |
|---|---|---|---|
| Identificatie en authenticatie | NEN 7518, via 8.3 a | In voorbereiding | De invulling van de kernbepaling ontbreekt |
| Toestemming | NEN 7517, via 6.4.1, 6.4.3 en 8.5 | In voorbereiding | Veronderstelde toestemming is niet uitgewerkt |
| Autorisatie | NEN 7520, genoemd in de bibliografie | In voorbereiding | Autorisatierichtlijn blijft lokaal ingevuld |
| Koppelvlakken push en pull | LDN TA Pull, bijlage eOverdracht, via 8.2.2.1 en 8.2.2.2 | In ontwikkeling | Ook de eisen voor identificatie, authenticatie en adressering liggen daar |
| Adressering | Norm in ontwikkeling, via 8.4 | In ontwikkeling | Geen specifieke eisen in deze norm |
| Informatiestandaard eOverdracht | Register van kwaliteitsstandaarden | Opname verwacht medio 2026 | Verwijzing naar een nog niet geregistreerde standaard |
| Usecase gericht bevragen | 5.4 | Niet normatief uitgewerkt | Afspraken moeten nog in het veld worden gemaakt |
| Usecase patiënt aanmelden | 5.5 | Niet normatief uitgewerkt | Afspraken moeten nog in het veld worden gemaakt |

De meest ingrijpende hiervan is de eerste. De norm stelt de eis, maar belegt de uitwerking bij een norm die nog niet bestaat.

> NEN 7545:2026, 8.3 Identificatie en authenticatie, beheersmaatregel a
> "De identiteit en authenticiteit van zorgaanbieders, zorgmedewerkers en zorginformatiesystemen moeten betrouwbaar kunnen worden verwerkt volgens NEN 7518."

Datzelfde geldt voor de toestemming. De hoofdregel is hard geformuleerd, en gaat blijkens het gekozen werkwoord juist over het beschikbaar stellen. De uitzondering die de notitie inroept, de veronderstelde toestemming, wordt integraal doorverwezen naar NEN 7517.

> NEN 7545:2026, 6.4.1 Algemeen
> "Bij het gebruik van een elektronisch uitwisselingssysteem mag de zorgaanbieder de gegevens van de patiënt pas beschikbaar stellen na uitdrukkelijke toestemming van de patiënt. OPMERKING Dit is op grond van de Wabvpz, artikel 15a, lid 1."

> NEN 7545:2026, 6.4.3 Veronderstelde toestemming
> "De toestemming die nodig is voor het doorbreken van het beroepsgeheim, kan in bepaalde situaties worden verondersteld. De zorgaanbieder moet voldoen aan de eisen voor veronderstelde toestemming in NEN 7517."

Het gevolg is drieledig. De hoofdregel geldt al, terwijl de uitzondering normatief nog niet is ingevuld. De koppelvlakkeuze en het autorisatieprofiel horen volgens 8.2.2 en NEN 7522 bij de standaardhouder en de stelselbeheerder thuis, maar het document waarin dat moet landen is er nog niet, waardoor die keuze feitelijk in memo's en projectafspraken wordt gemaakt. En partijen die vandaag moeten bouwen, kunnen op geen van deze punten naar een vastgestelde uitwerking verwijzen, terwijl de norm wel al als toetsingskader in beeld is.

Er is één bepaling die de norm zelf als tijdelijke ontsnapping biedt, en die in de praktijk zwaar wordt belast.

> NEN 7545:2026, 8.3, OPMERKING 5 en OPMERKING 6
> "Bij het (nog) niet beschikbaar of (nog) niet goed toepasbaar zijn van middelen van het betrouwbaarheidsniveau 'hoog' volgens eIDAS, kan sprake zijn van een overgangsregeling."

Deze opmerking grijpt aan op de beschikbaarheid van middelen en is naar haar aard tijdelijk. Zij kent geen einddatum, geen migratiepad en geen doelbeeld, en zij is niet-normatief. Een aanpak die zich daarop beroept en tegelijk als eindbeeld voor de lange termijn wordt gepresenteerd, rekt de regeling op tot een permanente afwijking.

### De twee bepalingen waar het in NEN 7545 op vastloopt

> NEN 7545:2026, 8.3, beheersmaatregel g, tevens opgenomen in de normatieve bijlage A
> "Het zorginformatiesysteem moet actoren (zoals zorgverleners) die zijn betrokken bij de uitwisseling van de eOverdracht op niveau 'hoog' volgens eIDAS, authenticeren en identificeren. Dit geldt voor de verzender en de ontvanger."

> NEN 7545:2026, 5.3, stap 5
> "Zorgaanbieder B ontvangt en accepteert de notificatie. De eOverdracht kan worden opgehaald bij zorgaanbieder A (uitwisselen). Dit ophalen kan ook automatisch gebeuren op het moment dat de notificatie binnenkomt."

De eerste eist authenticatie van actoren bij de uitwisseling, aan beide zijden. De tweede staat toe dat die uitwisseling verloopt zonder dat er aan de ontvangende kant iemand aanwezig is. Daarnaast belegt 6.5.3 de autorisatie uitdrukkelijk in de toegangsbeheersing van het eigen zorginformatiesysteem, en legt 8.3 e de bevoegdheidstoets bij de eigen werkgever. Let ten slotte op de asymmetrie tussen g en h: bij actoren staat het betrouwbaarheidsniveau hoog in de beheersmaatregel zelf, bij zorgaanbieders komt dat niveau alleen voor in een niet-normatieve opmerking.

## 7. Waar de normen elkaar tegenspreken

| Onderwerp | Wijst naar het federatieve model | Wijst naar authenticatie in de transactie |
|---|---|---|
| Wie moet worden geauthenticeerd | NEN 7545 8.3 h en 6.5.3; NEN 7512 6.1.9 | NEN 7545 8.3 g en 8.3 a; NEN 7512 6.1.8-4 en -5 |
| Betekenis van gebruiker | NEN 7510-2 9.4.1 en 9.2.1 | NEN 7512 6.1.8-4; NEN 7545 3.21 en 3.31 |
| Transport of toegang | NEN 7510-2 12.4.1, berichtensystemen | NEN 7510-2 9.1.1 en 12.4.1, auditverslag |
| Logging | NEN 7513 5.2 onder 3; NEN 7513 8.6 | NEN 7513 5.1 en 7.3; NEN 7512 6.2.9-1 |
| Moment van authenticatie | NEN 7545 5.3 stap 5, automatisch ophalen | NEN 7545 8.3 g, bij de uitwisseling |
| Toestemming | NEN 7545 6.4.3, veronderstelde toestemming | NEN 7545 6.4.1, uitdrukkelijke toestemming |
| Normatief gewicht | NEN 7510-2, behoren te | NEN 7512 en NEN 7545, moeten |

## 8. De beslisvraag en het vervolg

Alles draait op een vraag die met een korte tekstuele ingreep te beslechten is: op welke stap van het uitwisselingsmodel grijpt NEN 7545 8.3 g aan? Op stap 5, het uitwisselen, waar bij een notified pull geen actor aanwezig hoeft te zijn, of op stap 1 en stap 8, het vastleggen en het raadplegen, waar de zorgverlener daadwerkelijk handelt? Het eerste antwoord maakt het model van de notitie ontoereikend, het tweede maakt het normconform.

Vier zaken staan los van dat antwoord vast en verdienen geen verdere discussie: 
- het URA als stelselbrede organisatie-identificatie binnen de primaire zorg; 
- tweefactorauthenticatie van de eigen medewerkers door elke zorgaanbieder; 
- logging conform NEN 7513 aan zowel verzendende als ontvangende zijde; 
- en het vooraf vastleggen van toegang en rechten met elke partij waarmee cliëntgegevens worden uitgewisseld, waarvoor deelname aan een landelijk afsprakenstelsel volstaat.

De vervolgstappen:

1. Beleg het antwoord op de beslisvraag op de plaats die de norm aanwijst: de bijlage eOverdracht van de LDN TA Pull, en agendeer het voor NEN 7517 en NEN 7518. Ook kan dit als architectuurbeslissing worden opgenomen in de GISA en worden beschreven in het Landelijk Afsprakenstelsel.
2. Voer de risicobeheersing van NEN 7512 hoofdstuk 5 (opnieuw) uit, inclusief de vaststelling van de acceptabele risicoklasse en de documentatie van de restrisico's. Dat bepaalt tevens of de ondertekeningseis van 6.2.7 van toepassing is.
3. Repareer de twee punten die in beide lezingen moeten kloppen: de technische binding tussen de notificatie en het daaropvolgende ophaalverzoek, en het vastleggen van een verantwoordelijke gebruiker in de logging aan beide zijden.
4. Verbind aan de overgangsregeling van 8.3 een einddatum en een migratiepad naar het Dezi-stelsel, zodat het een overgangsregeling blijft.

Bij de herziening van de normen verdienen drie punten aandacht die in deze analyse als probleempunten zijn aangemerkt:
- de verwijzing in de toelichting bij NEN 7512 6.1.8 naar beheersmaatregel 3, terwijl die over niet-menselijke entiteiten gaat;
- de verouderde verwijzingen van NEN 7512 naar NEN 7510-1:2017+A1:2020 en naar de nummering van NEN 7510-2:2017; 
- en de spanning binnen NEN 7513 tussen 5.1 en 7.3 enerzijds en 5.2 anderzijds.

De scherpste formulering van de patstelling blijft deze: de notitie is een verdedigbare invulling van een lacune die NEN 7545 zelf benoemt, maar zij vult die lacune in op een manier die botst met een bepaling die NEN 7545 niet als lacune heeft achtergelaten.
