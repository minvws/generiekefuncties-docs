# Github handleiding

Github is een website om samen te werken aan projecten. Het is een vrij technische site met bijbehorende leercuve.

In deze handleiding zullen we de meest voorkomende acties uitleggen:

- [Vocabulair](#vocabulair)
- [Werken met tekstbestanden](#werken-met-tekstbestanden)
- [Aanmaken van een nieuw document](#aanmaken-van-een-nieuw-document)
- [Goedkeuren van een suggestie](#reviewen-en-goedkeuren-van-voorgestelde-wijzigingen)

## Vocabulair

- **Pull request**: Dit is een suggestie of wijzigingsverzoek.
- **Repository**: De verzameling bestanden die tot stand is gekomen door het goedkeuren van de diverse suggesties.
- **Issue**: Een plek om over een onderwerp samen te werken, voortgang bij te houden en discussies te voeren. Te gebruiken voor bijvoorbeeld requirements.

## Werken met tekstbestanden

Github werkt het beste met platte tekstbestanden. Je kunt met een simpele notatie structuur aanbrengen in een document.
Deze notatie heet [Markdown](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax).

!!! tip

    Als je Markdown wilt gebruiken moet je de `.md` extentie voor je bestand gebruiken!

Als je een nieuwe paragraaf wilt beginnen, moet je een lege regel toevoegen.

Markdown gebruikt de volgende notatie:

```
# Header 1
## Header 2
### Header 3

Dit is een paragraaf
en die gaat hier verder.

Dit is een nieuwe paragraaf

Ongeorderde Lijst:
* item
* item

Geordende lijst:
1. Eerste item
2. Tweede item

```

<figure markdown="span">
  ![Markdown Resultaat](https://github.com/minvws/generiekefuncties-adressering/assets/3896736/037db491-4a22-495c-8565-2f83cc019139){ width="442" align=left }
  <figcaption>Resultaat van bovenstaande tekst</figcaption>
</figure>

## Aanmaken van een nieuw document

Navigeer naar de juiste map.

<div class="grid" markdown>
![navigate-to-folder](https://github.com/minvws/generiekefuncties-adressering/assets/3896736/8eac0329-8c50-4091-a111-7470c325e24f){ .card }

</div>

Klik op `Add file` en dan op `Create new file`.

<img width="337" alt="create-file" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/190bd2a8-744e-4018-9e8e-a8f59606d46a">

Kies de bestandsnaam en gebruik de `.md` extentie.

<img width="814" alt="empty-file" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/9899fce5-ca14-490b-a6ca-74fb28bd4b4c">

Tijdens het schrijven kun je de `Preview` knop gebruiken om te kijken hoe het document er uit komt te zien.

<img width="1172" alt="preview" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/1782a9e6-3e6e-40a1-b5c4-a1c430d181ad">

Wanneer je klaar bent klik op `Commit changes`.

<img width="1064" alt="done-editing" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/1ef5314c-b59c-4719-8921-60bcbd0d6b4d">

Vul in wat je hebt gedaan. Dit is handig voor de reviewer die de wijzigingen moet goedkeuren.

<img width="482" alt="commit-message" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/230a9f98-316f-44c1-a9ca-2d85ebe24720">

Om de wijzigingen ter review voor te leggen maak je een "Pull request". Klik op `Create Pull request` om de wijzingen aan te bieden.

<img width="698" alt="open-pull-request" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/93d14103-6554-42ec-9856-43cb1ec3c94e">

## Reviewen en goedkeuren van voorgestelde wijzigingen

!!! warning

    Deze handelingen kunnen alleen worden uitgevoerd door mensen met de juiste rechten!

### Open het wijzigingsverzoek

Navigeer naar `Pull Requests` en open het verzoek wat je wilt beoordelen.

<img width="524" alt="navigeer-naar-prs" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/9d2fd457-ff65-4460-b66d-e1ae73a8b5c1">

Dit is het overzicht scherm van het verzoek.

Om een review te plaatsen, klik op de groene knop `Add your review`.

<img width="961" alt="bekijk-pr" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/e7b2ff08-3edb-4030-87cb-0521b7db7f24">

Je komt uit bij de het overzicht van gewijzigde bestanden

<img width="945" alt="bekijk-files" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/895ece7b-e2e7-4cba-8cdc-2b9d8be945b6">

Voor Markdown files of afbeeldingen is het handig om de `Preview` te bekijken ipv de ruwe notatie. Klik op de puntjes `...` en daarna op `View File`

<img width="299" alt="bekijk-file" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/c7d8cbb4-c541-4e86-ba40-8ae62e3ffb37">

### Goedkeueren of verzoek om aanpassingen

Klik op de groene knop `Review changes`

<img width="646" alt="goedkeuren" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/6fd7eb7c-b151-4916-94f7-3ac474c0455e">

Idien het verzoek wordt goedgekeurd, selecteer de optie `Approved`. Indien er nog wijzigingen nodig zijn selecteer `Request changes`.

!!! tip

    Leg vast waaom het verzoek is goedgekeurd of nog aanpassingen nodig heeft.

### De wijzigingen toevoegen aan de repository

Nu de wijzigingen zijn goedgekeurd moeten ze nog worden samengevoegd met de rest van de bestanden. Dit kan door terug te gaan naar de `Conversation` en naar beneden te scrollen. Als het goed is staan alle vinkjes op groen. Klik daarna op `Merge pull request`.

<img width="446" alt="merge-pr" src="https://github.com/minvws/generiekefuncties-adressering/assets/3896736/09234b5c-217e-4cdb-a97a-f7a544891bc8">
