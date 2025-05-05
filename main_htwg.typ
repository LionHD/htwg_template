#import "htwg.typ": *
#import "appendix.typ": appendix
#import "abstract.typ": abstract
#import "acronyms.typ": acronyms
#import "preface.typ": preface
#import "symbols.typ": symbols, format-symbols-table

#show: htwg.with(
  title: "Titel der Arbeit",
  type: "Technischer Bericht",
  authors: (
    (
      name: "Max Mustermann", 
      student-id: "123456",
      company: (
        name: "Musterfirma GmbH",
        address: "Musterstraße 1, 12345 Musterstadt"
      )
    ),
  ),
  language: "de",
  at-university: true,
  show-declaration-of-authorship: true,
  show-table-of-contents: true,
  show-acronyms: true,
  show-list-of-figures: true,
  show-list-of-tables: true, 
  show-appendix: true,
  show-abstract: true,
  show-preface: true,
  show-header: true,
  show-student-id: true,
  show-symbols: true,
  numbering-style: "1",
  numbering-alignment: center,  
  abstract: abstract,
  appendix: appendix,
  acronyms: acronyms,
  preface: preface,
  symbols: symbols,
  university: "HTWG-Konstanz 
    Hochschule für Technik, Wirtschaft und Gestaltung",
  department: "Maschinenbau",
  course: "MAB",  
  semester: "Sommersemester 2025",
  supervisor: "Prof. Dr. Max Mustermann",
  date: datetime.today(),
  submission-location: "Konstanz",
  bibliography: bibliography("sources.bib"),
  logo: image("assets/logos/htwg_logo.svg", width: auto),
  logo-height: 2.4cm
)

= Einleitung
Dies ist ein Beispieltext für das erste Kapitel. Nach dieser Überschrift sollte ein Abstand folgen.

#figure(
  image("assets/img/aaron-burson-YihQdPSK9jI-unsplash.jpg"),
  caption: [[Caption] #htwgCite("brassel2019softwarelizenzmanagement", page: "77")]
)
<fig-kano>

== Unterkapitel 1.1
Nach dieser Unterüberschrift (Level 2) sollte auch ein Abstand folgen, aber keine neue Seite beginnen.

=== Detail 1.1.1
Level-3-Überschriften haben auch einen Abstand danach, aber keine neue Seite.

== Unterkapitel 1.2
Ein weiteres Unterkapitel um zu testen.

= Grundlagen
Dieses zweite Kapitel sollte auf einer neuen Seite beginnen, da es eine Level-1-Überschrift ist.

== Unterkapitel 2.1
Text für dieses Unterkapitel.
#htwgCite("brassel2019softwarelizenzmanagement", page: "77")

= Methodik
Auch dieses dritte Kapitel sollte auf einer neuen Seite beginnen.

= Ergebnisse
Und dieses vierte Kapitel ebenfalls.

== Unterkapitel 4.1
Ein weiteres Unterkapitel zum Testen.

= Diskussion
Dies ist das letzte Kapitel, und es sollte auch auf einer neuen Seite beginnen.
