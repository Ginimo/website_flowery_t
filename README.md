# website_flowery_t

Statische Band-Website für **Flowery T** – nur HTML und CSS, kein JavaScript, kein Build-Schritt.

## Seiten

| Datei            | Inhalt                                              |
|------------------|-----------------------------------------------------|
| `index.html`     | Home: Welcome-Bereich, News, nächster Gig            |
| `band.html`      | Wer wir sind, Idee der Band, unser Sound             |
| `musik.html`     | Videos (YouTube-Embeds) und Audio (`<audio>`)        |
| `gigs.html`      | Kommende + vergangene Konzerte, Foto-Slider unten    |
| `kontakt.html`   | E-Mail/Social-Links und Kontaktformular              |
| `impressum.html` | Impressum & Datenschutz (Pflicht, noch Platzhalter)  |

## Struktur

```
├── index.html, band.html, musik.html, gigs.html, kontakt.html, impressum.html
├── css/style.css      # ein Stylesheet für alles, Farben als Variablen in :root
├── img/originals/     # Originale in voller Auflösung (Logo, Bandfotos) – NICHT in Git, siehe .gitignore
├── img/web/           # verkleinerte Web-Versionen (.webp) – NUR diese in HTML verwenden
└── audio/             # MP3s für musik.html
```

## Lokal ansehen

Über einen kleinen lokalen Webserver öffnen – **nicht** per Doppelklick auf die Datei
(`file://…`), sonst zeigen YouTube-Videos „Fehler 153“.

```
python -m http.server 8080
```

Dann http://localhost:8080 im Browser öffnen. Alternativ in VS Code die Erweiterung „Live Server“.

## Konventionen

- **Kein JS.** Der Foto-Slider nutzt CSS `scroll-snap`, die Navigation ist ein normales Menü.
- **Header und Footer** stehen in jeder Seite einzeln. Bei Änderungen an der Navigation alle Seiten anpassen.
- **Farben/Schriften** nur über die Variablen in `css/style.css` (`--accent`, `--bg` …) ändern.
- **Keine externen Fonts/CDNs** (z. B. Google Fonts) – vermeidet Datenschutz-Probleme.
- **Bilder**: Original in `img/originals/` (lokal, nicht in Git), Web-Version (max. ~1600 px breit, WebP) in `img/web/`, immer mit `alt`-Text.
- **Gigs**: eine Tabellenzeile `<tr>` pro Gig, Datum zusätzlich im `datetime`-Attribut als `JJJJ-MM-TT`. Vorbei? Zeile in die Tabelle „Vergangene Gigs“ verschieben.

## Offene Punkte

- [ ] Texte und Links (Instagram …) einsetzen – SoundCloud ist drin
- [x] Logo, erstes Bandfoto, Audio eingebunden
- [ ] Weitere Fotos, Videos einfügen
- [ ] Kontaktformular: Dienst wählen (Formspree/Netlify Forms/…) oder nur `mailto`
- [ ] Impressum + Datenschutzerklärung ausfüllen
- [ ] Hosting (z. B. GitHub Pages, Netlify) und Domain

## Parallel entwickeln

Jede Person arbeitet in einem eigenen Branch, z. B. `version-daniel`, `version-<name>`.
Am Ende vergleichen wir die Versionen und mergen die beste (oder das Beste aus allen) in `main`.
