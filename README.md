# HTWG Typst Template für Technische Berichte

Dieses Template ist für technische Berichte, Projektarbeiten und Abschlussarbeiten an der Hochschule Konstanz Technik, Wirtschaft und Gestaltung (HTWG) konzipiert. Es folgt den Richtlinien für technische Berichte gemäß der aktuellen Anleitung der HTWG und unterstützt eine professionelle Formatierung mit automatischen Seitenumbrüchen bei Hauptkapiteln und konsistenten Abständen zwischen Überschriften und Text.

## Voraussetzungen

- [Typst](https://typst.app/) in Version 0.9 oder höher muss installiert sein
- Grundlegende Kenntnisse zur Bearbeitung von Textdateien
- Die folgenden Typst-Pakete müssen installiert sein:
  - `acrostiche` (Version 0.5.1)
  - `codelst` (Version 2.0.2)

### Installation der benötigten Pakete

Die externen Templates müssen vom Repository heruntergeladen und in den lokalen Typst-Pakete-Ordner abgelegt werden:

```
%APPDATA%\Local\typst\packages\preview\acrostiche\0.5.1\
%APPDATA%\Local\typst\packages\preview\codelst\2.0.2\
```

Diese Pakete können entweder:
1. Manuell von den offiziellen Typst-Paketquellen heruntergeladen werden
2. Über den Typst-Paketmanager installiert werden:
   ```powershell
   typst install acrostiche@0.5.1 codelst@2.0.2
   ```

## Dateien und Struktur

- `main_htwg.typ` - Hauptdatei, die Sie bearbeiten sollten
- `htwg.typ` - Template-Datei (nicht bearbeiten)
- `abstract.typ` - Datei für die Kurzzusammenfassung/Abstract (deutsch und englisch)
- `acronyms.typ` - Liste mit Abkürzungen für das Abkürzungsverzeichnis
- `appendix.typ` - Anhang für zusätzliche Materialien
- `symbols.typ` - Formelzeichen und ihre Bedeutungen
- `preface.typ` - Vorwort (optional)
- `sources.bib` - Literaturverzeichnis im BibTeX-Format
- `assets/` - Ordner für Medien (Bilder, Logos, etc.)

## Schnelleinstieg

1. Öffnen Sie `main_htwg.typ` in einem Texteditor oder der Typst-Umgebung
2. Passen Sie die Kopfinformationen an (Titel, Autor, Semester, etc.)
3. Schreiben Sie Ihren Text im Hauptteil (nach dem Header-Block)
4. Bearbeiten Sie die separaten Dateien:
   - `abstract.typ` für die Kurzzusammenfassung (deutsch und/oder englisch)
   - `sources.bib` für Ihre Quellen im BibTeX-Format
   - `acronyms.typ` für verwendete Abkürzungen
   - `appendix.typ` für Inhalte des Anhangs
   - `symbols.typ` für Formelzeichen (falls benötigt)
   - `preface.typ` für das Vorwort (optional)
5. Kopieren Sie Ihre Bilder in den `assets/img/`-Ordner

## Konfiguration des Headers

```typst
#show: htwg.with(
  // Grundinformationen zur Arbeit
  title: "Ihr Titel",                        // Titel der Arbeit
  subtitle: "Optionaler Untertitel",         // Optional: Untertitel
  type: "Projektarbeit",                     // Art der Arbeit: "Bachelorarbeit", "Masterarbeit", "Projektarbeit", etc.
  language: "de",                            // Sprache: "de" oder "en" (bestimmt die Sprache der Überschriften)
  
  // Autor(en)
  authors: (
    (
      name: "Max Mustermann",                // Name des Autors
      student-id: "123456",                  // Matrikelnummer
      company: (                             // Optional: Unternehmensinformationen für externe Arbeiten
        name: "Musterfirma GmbH",
        address: "Musterstraße 1, 12345 Musterstadt"
      )
    ),
    // Mehrere Autoren können als zusätzliche Einträge hinzugefügt werden
    // (name: "Zweiter Autor", student-id: "654321"),
  ),
  
  // Hochschule und Fakultät
  university: "HTWG-Konstanz Hochschule für Technik, Wirtschaft und Gestaltung", 
  department: "Informatik",                  // Fakultät oder Fachbereich
  course: "INF",                             // Studiengang (z.B. "INF", "WIN", "MAB")
  semester: "Sommersemester 2025",           // Aktuelles Semester
  supervisor: "Prof. Dr. Erika Musterfrau",  // Betreuer/in
  
  // Format- und Anzeigeoptionen
  at-university: true,                       // true: Hochschularbeit, false: externe Arbeit
  show-declaration-of-authorship: true,      // Eidesstattliche Erklärung anzeigen
  show-table-of-contents: true,              // Inhaltsverzeichnis anzeigen
  show-acronyms: true,                       // Abkürzungsverzeichnis anzeigen
  show-list-of-figures: true,                // Abbildungsverzeichnis anzeigen
  show-list-of-tables: true,                 // Tabellenverzeichnis anzeigen
  show-code-snippets: false,                 // Codeverzeichnis anzeigen (falls Code-Snippets vorhanden)
  show-appendix: true,                       // Anhang anzeigen
  show-abstract: true,                       // Abstract anzeigen
  show-preface: true,                        // Vorwort anzeigen
  show-header: true,                         // Kopfzeile anzeigen
  show-student-id: true,                     // Matrikelnummer anzeigen
  show-symbols: true,                        // Formelzeichenverzeichnis anzeigen
  
  // Seitennummerierung
  numbering-style: "1",                      // Format der Seitennummerierung (arabische Ziffern)
  numbering-alignment: center,               // Ausrichtung der Seitennummerierung
  
  // Inhalte aus externen Dateien
  abstract: abstract,                        // Abstract aus abstract.typ
  appendix: appendix,                        // Anhang aus appendix.typ
  acronyms: acronyms,                        // Abkürzungen aus acronyms.typ
  preface: preface,                          // Vorwort aus preface.typ
  symbols: symbols,                          // Formelzeichen aus symbols.typ
  
  // Technische Details
  date: datetime.today(),                    // Aktuelles Datum (wird automatisch eingesetzt)
  submission-location: "Konstanz",           // Ort der Einreichung
  bibliography: bibliography("sources.bib"),  // BibTeX-Datei für Quellenangaben
  logo: image("assets/logos/htwg_logo.svg"), // Logo der HTWG
  logo-height: 2.4cm                         // Größe des Logos
)
```

## Formatierung und Inhaltsstruktur

### Überschriften

Das Template formatiert automatisch alle Überschriften und fügt nach jeder Überschrift einen einheitlichen Abstand ein. Hauptkapitel (Level-1-Überschriften) beginnen automatisch auf einer neuen Seite.

```typst
= Hauptkapitel        // Beginnt auf einer neuen Seite
== Unterkapitel       // Kein Seitenumbruch, aber Abstand danach
=== Abschnitt         // Kein Seitenumbruch, aber Abstand danach
```

### Zitieren von Quellen

So zitieren Sie eine Quelle im Text:

```typst
Dies ist ein Beispieltext #htwgCite("quellname2023", page: 42)
// Erzeugt eine Fußnote mit: "Vgl. Autor (2023), Seite 42"
```

Für einen Seitenbereich:

```typst
Dies ist ein Beispieltext #htwgCite("quellname2023", pageRange: "42-45")
// Erzeugt eine Fußnote mit: "Vgl. Autor (2023), Seite 42-45"
```

Ohne "Vgl." bei wörtlichen Zitaten:

```typst
„Dies ist ein wörtliches Zitat" #htwgCite("quellname2023", page: 42, vgl: false)
// Erzeugt eine Fußnote ohne "Vgl.": "Autor (2023), Seite 42"
```

### Abkürzungen verwenden

Abkürzungen werden in der Datei `acronyms.typ` definiert:

```typst
#let acronyms = (
  "HTWG": "Hochschule Konstanz Technik, Wirtschaft und Gestaltung",
  "ABC": "Beispiel für eine Abkürzung",
  "API": "Application Programming Interface",
)
```

Im Text können Sie Abkürzungen so verwenden:

```typst
Die #acr("HTWG") ist eine Hochschule in Konstanz.
```

Bei der ersten Verwendung wird automatisch die vollständige Bezeichnung mit der Abkürzung in Klammern angezeigt, bei weiteren Verwendungen nur noch die Abkürzung. Alle Abkürzungen werden zudem automatisch im Abkürzungsverzeichnis aufgeführt.

### Abbildungen einfügen

Bilder sollten im `assets/img/`-Ordner gespeichert werden:

```typst
#figure(
  image("assets/img/dateiname.jpg", width: 80%),
  caption: [Beschreibung der Abbildung]
) <fig-label>
```

Um auf die Abbildung zu verweisen:

```typst
Wie in @fig-label zu sehen ist...
```

Die Abbildung erhält automatisch eine Nummer und erscheint im Abbildungsverzeichnis.
```

### Tabellen einfügen

```typst
#figure(
  table(
    columns: (auto, auto, auto),
    inset: 10pt,
    align: center + horizon,
    // Kopfzeile
    [*Spalte 1*], [*Spalte 2*], [*Spalte 3*],
    // Daten
    [Zeile 1], [Wert 1], [Beispiel],
    [Zeile 2], [Wert 2], [Weiteres Beispiel],
  ),
  caption: [Beschreibung der Tabelle]
) <tab-bezeichnung>
```

Verweis auf die Tabelle:

```typst
Wie in Tabelle @tab-bezeichnung dargestellt...
```

### Code-Snippets einfügen

```typst
#figure(
  raw(lang: "python", ```
  def hello_world():
      print("Hello, world!")
      return True
  ```)
  ,
  caption: [Python-Funktion zum Ausgeben einer Begrüßung]
) <code-beispiel>
```

### Formelzeichen definieren

Formelzeichen werden in `symbols.typ` definiert:

```typst
#let symbols = (
  (symbol: "A", unit: "m²", description: "Fläche"),
  (symbol: "α", unit: "Grad", description: "Winkel"),
)
```

## Zusätzliche Features

### Abstract

In der Datei `abstract.typ` können Sie sowohl eine deutsche als auch eine englische Zusammenfassung definieren:

```typst
#let abstract = (
  de: [
    Hier steht die deutsche Zusammenfassung...
  ],
  en: [
    Here goes the English abstract...
  ]
)
```

### Anhang

Der Anhang wird in `appendix.typ` definiert und kann weitere Überschriften und Inhalte enthalten:

```typst
#let appendix = [
  = Anhang A: Zusätzliche Daten
  
  Hier folgen zusätzliche Daten und Informationen...
  
  = Anhang B: Fragebogen
  
  Hier ist der verwendete Fragebogen...
]
```

## Tipps und Fehlerbehebung

- **Kompilierungsfehler**: Stellen Sie sicher, dass alle Klammern und Anführungszeichen korrekt geschlossen sind
- **Bilder werden nicht angezeigt**: Überprüfen Sie die Pfadangaben und stellen Sie sicher, dass die Dateien existieren
- **BibTeX-Fehler**: Validieren Sie Ihre `sources.bib`-Datei mit einem BibTeX-Validator
- **Zu viel Abstand zwischen den Zeilen**: Passen Sie den `leading`-Parameter im Template an
- **Seitennummerierung**: Die römischen Seitenzahlen im Vorspann und arabischen Zahlen im Hauptteil werden automatisch gesetzt
- **"Package not found"-Fehler**: Stellen Sie sicher, dass die Templates `acrostiche` und `codelst` korrekt installiert sind (siehe Voraussetzungen)

## Hilfe und Support

Bei Fragen oder Problemen mit dem Template können Sie:

1. Die offizielle [Typst-Dokumentation](https://typst.app/docs/) konsultieren
2. Das [Typst-Forum](https://typst.app/community/) besuchen
3. Die [Anleitung für technische Berichte](https://www.htwg-konstanz.de/hochschule/einrichtungen/bibliothek/abschlussarbeiten/) der HTWG Konstanz verwenden

## Lizenz

MIT
