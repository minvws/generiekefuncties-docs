## Werkgroepen

De architectuurwerkgroepen hebben de taak om de opgestelde requirements door de requirements werkgroepen te vertalen naar een architectuur en technisch ontwerp voor de betreffende generieke functie.
Om dit te doen, maken de architectuur werkgroepen gebruik van de volgende instrumenten:

## Wekelijkse meetings

De architectuur werkgroep komt wekelijks bij elkaar. Tijdens die meetings worden de volgende stappen doorlopen:

1. **Requirements review**: De architectuurwerkgroep neemt de requirements door die door de requirements werkgroep zijn opgesteld. De architectuurwerkgroep beoordeelt of de requirements voldoende zijn om een architectuur en technisch ontwerp voor de generieke functie op te stellen. Indien de requirements onvoldoende zijn, vraagt de architectuurwerkgroep feedback aan de requirements werkgroep. Dit gebeurt door [commentaar te plaatsen](handleidingen/handleiding commentaar plaatsen.md) onder de requirement op Github.
2. **Requirements omzetten naar items op een backlog**: De architectuurwerkgroep zet de requirements om naar items op een backlog. Deze items zijn de basis voor de architectuur en het technisch ontwerp. Requirements vallen uit een in eenvoudige features zoals een extra scherm of formulier, maar andere hebben fundamentele impact op de architectuur van de generieke functie. Die laaste categorie vereist een grondige analyse van het probleem en de mogelijke oplossingen. Het besluitvormingsproces vind plaats aan de hand van een Architectuur Decision Record (ADR).
3. **Architectuur beslissingen nemen**: Het bespreken van ADRs en het nemen van beslissingen op basis van voorgestelde opties.
4. **Actualiseren van de backlog**: De architectuurwerkgroep actualiseert de backlog op basis van de besproken onderwerpen.
5. **Werk verdelen**: De architectuurwerkgroep verdeelt items van de backlog onder de leden van de werkgroep.

## Architectuur Decision Records

Complexere architecturele beslissingen worden vastgelegd in [Architectuur Decision Records (ADR)](https://github.com/joelparkerhenderson/architecture-decision-record).
Een ADR is een document dat een architectuur beslissing beschrijft.
Het document beschrijft de context van het probleem, mogelijke opties en de uitkomst van de beslissing.
Het doel van een ADR is om zowel tijdens als achteraf een duidelijk beeld te geven van de overwegingen die hebben geleid tot een bepaalde architectuur beslissing.

Het vraagstuk wat een ADR beantwoord moet zo klein mogelijk zijn.
Als een ADR te complex blijkt, kan deze opgesplitst worden in meerdere nieuwe ADRs.
Een eenmaal opgestelde ADR moet niet meer aangepast moeten worden, maar indien niet meer relevant, vervangen door een nieuwe ADR.

### Structuur van een ADR

```
- Identifier
  Uniek nummer om de ADR te identificeren.
- Titel
- Beslissers
  Wie heeft er mee gewerkt aan deze beslissing?
- Status
  Wat is de status van deze beslissing?
  [Voorgesteld | Afgewezen | Geaccepteerd | Opgevolgd | Vervallen]
- Samenvatting van het genomen besluit
  Indien de keuze is genomen, een korte samenvatting van de uitkomst.
- Changelog
  Lijstje van wijzigingen.
- Context en probleemstelling
  - Samenvatting
    In vrije tekst in een paar regels een samenvatting van het probleem.
  - Aannames
    Wat voor aannames doen we.
  - Beperkingen
    Welke dingen kunnen we niet oplossen met deze keuze en moeten we mee werken.
  - Meningen
    Wat vinden we belangrijk.
- Mogelijke opties
  - Optie 1
    - Pros, cons
  - Optie 2
    - Pros, cons
- Genomen besluit
  - Gekozen optie(s)
    Optie eventueel afhankelijk van onstandigheden.
  - Argumenten
    Inhoudelijke argumenten voor deze beslissing.
  - Gevolgen
    Wat zijn mogelijke gevolgen van deze keuze?
- Relaties
  - Gerelateerde beslissingen
    Lijstje van gerelateerde ADRs
  - Gerelateerde requirements
    Link naar relevante requirements
- Notities
```
