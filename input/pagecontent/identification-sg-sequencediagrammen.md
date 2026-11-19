# Identificatiepatronen voor deelnemers secundair gebruik

Status: concept  
Datum: 19 november 2026
> **Let op:** Deze pagina is een conceptuitwerking. De aannames in deze flows zijn nog niet juridisch bevestigd en de communicatiepatronen zijn nog niet technisch gespecificeerd.

# SG-ID-1: Pseudo-BSN via VAD met DigiD
## regulier proces

```mermaid
sequenceDiagram
    actor burger as Burger
    box rgb(209,231,221) Verwerkt geen BSN
        participant partij as Niet-BSN-verwerkende<br/>partij
        participant vad as VAD
    end
    box rgb(248,215,218) Verwerkt BSN
        participant digid as Authenticatievoorziening<br/>(bijv. DigiD)
        participant prs as PRS
    end

    burger->>partij: Inloggen
    partij-->>burger: Doorsturen naar VAD
    burger->>vad: Inloggen via VAD
    vad-->>burger: Doorsturen naar DigiD
    burger->>digid: Inloggen met DigiD
    digid-->>vad: SAML-assertie<br/>(BSN versleuteld voor PRS)
    vad->>prs: SAML-assertie,<br/>vraag pseudo-BSN (partij)
    prs->>prs: Controleer DigiD-handtekening<br/>ontsleutel BSN → pseudo-BSN (partij)
    prs-->>vad: Pseudo-BSN (partij)
    vad-->>partij: Pseudo-BSN (partij)
    partij->>partij: Registreer deelnemer<br/>met pseudo-BSN (partij)
    partij-->>burger: Ingelogd
```

## datauitgifte

```mermaid
sequenceDiagram
    box rgb(209,231,221) Verwerkt geen BSN
        participant gebruiker as Gebruiker<br/>(secundair gebr.)
        participant partij as Niet-BSN-verwerkende<br/>partij
    end
    box rgb(248,215,218) Verwerkt BSN
        participant prs as PRS
    end
    box rgb(209,231,221) Verwerkt geen BSN
        participant zr as Zeggenschaps-<br/>register
        participant spe as SPE
    end

    gebruiker->>partij: Dataverzoek
    partij->>prs: Zet pseudo-BSN (partij) om<br/>voor ZR en SPE
    prs->>prs: Controleer bevoegdheden<br/>pseudo-BSN (partij) → BSN<br/>→ pseudo-BSN (ZR) en (SPE)
    prs-->>partij: Pseudo-BSN (ZR) en (SPE)
    partij->>zr: Bezwaar?<br/>pseudo-BSN (ZR)
    zr-->>partij: Wel of geen bezwaar
    opt Geen bezwaar
        partij->>spe: Data met pseudo-BSN (SPE)
    end
```

# SG-ID-2: Pseudo-BSN via VAD met persoonskenmerken
## regulier proces

```mermaid
sequenceDiagram
    actor deelnemer as Deelnemer
    box rgb(209,231,221) Verwerkt geen BSN
        participant partij as Niet-BSN-verwerkende<br/>partij
    end

    deelnemer->>partij: Aanmelden met geboortedatum,<br/>geboortenaam en geslacht
    partij->>partij: Registreer deelnemer<br/>met persoonskenmerken
```

## datauitgifte

```mermaid
sequenceDiagram
    box rgb(209,231,221) Verwerkt geen BSN
        participant gebruiker as Gebruiker<br/>(secundair gebr.)
        participant partij as Niet-BSN-verwerkende<br/>partij
    end
    box rgb(248,215,218) Verwerkt BSN
        participant vad as VAD
        participant sbvz as BSN-voorziening
        participant prs as PRS
    end
    box rgb(209,231,221) Verwerkt geen BSN
        participant zr as Zeggenschaps-<br/>register
        participant spe as SPE
    end

    gebruiker->>partij: Dataverzoek
    partij->>vad: Vraag pseudo-BSN (ZR) en (SPE)<br/>(geboortedatum, geboortenaam, geslacht)
    vad->>sbvz: Vraag BSN<br/>(geboortedatum, geboortenaam, geslacht)
    sbvz-->>vad: BSN
    vad->>prs: Pseudonimiseer BSN<br/>voor ZR en SPE
    prs-->>vad: Pseudo-BSN (ZR) en (SPE)
    vad-->>partij: Pseudo-BSN (ZR) en (SPE)
    partij->>zr: Bezwaar?<br/>pseudo-BSN (ZR)
    zr-->>partij: Wel of geen bezwaar
    opt Geen bezwaar
        partij->>spe: Data met pseudo-BSN (SPE)
    end
```

# SG-ID-3: Pseudo-BSN via BSN-verwerkende bron
## regulier proces

```mermaid
sequenceDiagram
    actor patient as Patiënt/cliënt
    box rgb(248,215,218) Verwerkt BSN
        participant bron as BSN-verwerkende bron<br/>(bijv. ziekenhuis)
        participant sbvz as BSN-voorziening
    end

    patient->>bron: Inschrijven met BSN
    bron->>sbvz: BSN-check
    sbvz-->>bron: Resultaat BSN-check
```

## datauitgifte

```mermaid
sequenceDiagram
    box rgb(209,231,221) Verwerkt geen BSN
        participant gebruiker as Gebruiker<br/>(secundair gebr.)
    end
    box rgb(248,215,218) Verwerkt BSN
        participant bron as BSN-verwerkende bron<br/>(bijv. ziekenhuis)
        participant prs as PRS
    end
    box rgb(209,231,221) Verwerkt geen BSN
        participant zr as Zeggenschaps-<br/>register
        participant spe as SPE
    end

    gebruiker->>bron: Dataverzoek
    bron->>prs: Pseudonimiseer BSN<br/>voor ZR en SPE
    prs-->>bron: Pseudo-BSN (ZR) en (SPE)
    bron->>zr: Bezwaar?<br/>pseudo-BSN (ZR)
    zr-->>bron: Wel of geen bezwaar
    opt Geen bezwaar
        bron->>spe: Data met pseudo-BSN (SPE)
    end
```

## SG-ID-4: Re-identificatie

```mermaid
sequenceDiagram
    box rgb(209,231,221) Verwerkt geen BSN
        participant spe as Gebruiker<br/>(in SPE)
        participant hdab as HDAB
    end
    box rgb(248,215,218) Verwerkt BSN
        participant prs as PRS
        participant bron as BSN-verwerkende bron<br/>(bijv. ziekenhuis)
    end
    actor deelnemer as Deelnemer of<br/>behandelaar

    spe->>hdab: Nevenbevinding<br/>met pseudo-BSN (SPE)
    hdab->>hdab: Beoordeel melding<br/>en bepaal bron
    hdab->>prs: Zet pseudo-BSN (SPE) terug<br/>voor bron
    prs->>prs: Controleer bevoegdheden<br/>pseudo-BSN (SPE) → BSN
    prs-->>hdab: BSN (versleuteld voor bron)
    hdab->>bron: Nevenbevinding met<br/>BSN (versleuteld voor bron)
    bron->>bron: Ontsleutel BSN
    bron->>deelnemer: Informeer over nevenbevinding
```
