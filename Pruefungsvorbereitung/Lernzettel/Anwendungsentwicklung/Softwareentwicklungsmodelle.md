# Softwareentwicklungsmodelle
- Mit der Weiterentwicklung von Computern steigen Qualitätsansprüche und die Komplexität in der Erstellung von Software
- Zur Vereinfachung wurden Vorgehensmodelle entwickelt
## Wasserfallmodell
- Einteilung in Phasen soll Entwicklung planbarer und kontrollierbarer machen
- Analyse, Entwurf, Realisierung, Bereitstellung
- Ergebnissdefinition für jede Phase
- Beginn einer neuen Phase erst nach Abschluss vorherigen
- in der Praxis meist nicht durchführbar
    - Rücksprung in vorhergehende Phasen möglich
### Phasen
#### Analyse
- Erhebung Ist-Zustand
- Arbeitsschritte feststellen und dokumentieren
- Wechselwirkungen erfassen
- Ressourcen erfassen, die verfügbar sind
- Funktionalitäten, Daten, Leistungen, Qualität festlegen
- Ergebnisdokumente
    - Lastenheft
    - Projektkalkulation
    - Wirtschaftlichkeitsberechnung
#### Definition
- Vertragserstellung zwischen Auftraggeber und Hersteller
- definierter Funktionsumfang
- Ergebnisdokumente
    - Pflichtenheft
    - UI-Konzept
#### Entwurfsphase
- Festlegung der inneren Struktur des Produkts
- Ergebnisdokumente
    - Komponentenspezifikation
    - logisches Datenmodell
    - Entwurf Systemarchitektur
    - Entwurf Algorithmen
#### Implementierung
- Umsetzung der entworfenen Strukturen
- Ergebnisse
    - Verfeinerung der Algorithmen und Umsetzung in Programmiersprache
    - Physisches Datenmodell
    - Test und Testdokumentation
#### Systemtest
- Testen der Wechselwirkungen der Systemkomponente unter realen Bedingungen
    - Systemspezifikation erfüllt?
    - nicht-operative Anforderungen erfüllt? (Effizienz...)
    - Installation vorhandener Umgebung des Kunden
    - Abnahme durch Kunden
- Ergebnisse
    - Testumgebung
    - Test und Testdokumentation
#### Abschlussphase
- Freigabe für den Betrieb
- Sicherung von Altdaten.
- Schulungen, Support
- Fehlerbehebungen, Systemerweiterungen
### Nachteile
- Alle wesentlichen Anforderungen der späteren Anwender müssen bereits zu Beginn bekannt sein
- keine Änderungen dürfen während der Projektphase entstehen
## Wasserfallmodell nach Winston Royce
- ähnelt dem o.g. Wasserfallmodell, ermöglicht allerdings den Rücksprung in vorhergehende Phasen
- ermöglicht Änderungswünsche in der Wartungsphase, die in jede vorhergehende Phase führen können

## V-Modell
- Entwickelt von der Bundesrepublik Deutschland
- verbindlich für Projekte im Militärbereich
- Erweiterung des Wasserfallmodells
    - für jede Phase sind einheitliche und verbindliche Ergebnisse zur Qualitätssicherung vorgesehen.

### Struktur
- Zwei Handlungsstränge
    - Konstruktive Aktivitäten bis zur Programmierung
    - Testaktivitäten nach der Programmierung
- Jede Testaktivität basiert auf einer Planungsaktivität
### konstruktive Aktivitäten
- Anforderungsdefinition
    - Wünsche und Anforderungen des Auftraggebers sammeln
- Funktionaler Systementwurf
    - Beschreibung der inhaltlichen Funktionen
- Technischer Systementwurf
    - Entwurf der Systemarchitektur
- Komponentenspezifikation
    - Beschreibung von Teilaufgaben und ihrer Schnittstellen
### Programmierung
- Implementierung der Teilaufgaben
### Test
- Komponententests
    - Erfüllt jede Komponente die Anforderungsdefinition?
- Integrationstests
    - Funktionieren durch Schnittstellen miteinander verbundene Komponenten gemäß Definition?
- Systemtest
    - Funktioniert System als Ganzes?
- Abnahmetest
    - Erfüllt das System die vertraglich vereinbarten Funktionen?
## Spiralmodell
- Verfeinerung und Ergänzung des Wasserfallmodells.
- Softwareentwicklunsprozess wird als Spirale angesehen
- Jede "Windung" hat das Ziel ein neues Zwischenprodukt zu liefern
- Vor der Entwicklung werden Ziele und Pfade festgelegt
- Nach der Entwicklung erfolgt Soll-Ist Vergleich
- Werden weitere Entwicklungen benötigt erfolgt eine neue Spiralwindung
### Segmente
1. Festlegung der Ziele und Aufgaben
2. Bewertung von Entwicklungspfaden und Analyse von Risiken
3. Erstellung eines Vor- bzw. Zwischenprodukts & Testläufe
4. Ist-Aufnahme SOLL-IST Vergleich, Festlegung weiterer Entwicklungs- und Arbeitsschritte
### Vorteile
- Risiko des Scheiterns wird minimiert
    - Zerlegung des Gesamtprojekts in Teilaufgaben
    - Projektplan pro Teilprojekt
    - Entscheidung über Fortführung nach jedem Teilprojekt
    - Einbettung von Qualitätssicherungsmaßnahmen in den Softwareentwicklunsprozess
## Extreme Programming
- iteratives Modell
- Nähert sich Problemen in Einzelschritten, unter Nutzung von Rücksprüngen, kommunikationsintensiven Methoden
### Grundsätze
- Individuen & Interaktionen > Prozesse & Werkzeuge
- Funktionierende Programme > Dokumentation
- Stetige Kundenabstimmung > Ursprügnliche Leistungsbeschreibung
- Mut & Offenheit für Änderungen > Befolgen eines festgelegten Plans
### Charakteristika
- Klares strukturiertes vorgehen
- kleine teams
- Prioritätenanalyse
- stetige Kommunikation
- Viele und frühe Tests
### Ziele
- schnellere Bereistellung der Software
- Hohe Qualität
## SCRUM
- agiles Vorgehensmodell
- Softwareentwicklung ist so komplex, dass sie sich nicht genau planen lässt
- ein Team agiert in festgelegtem Rahmen mit festgelegten Rollen selbstständig und eigenverantwortlich
- Interaktion untereinander und mit Kunden steht im Vorgergrund
### Rollen
- Product Owner
    - legt das Ziel fest
    - setzt Prioritäten
    - legt wichtige Features fest
    - darf keine Arbeit während des Sprints dazu geben oder den Sprint ändern
    - aber ihn beenden
- Team
    - schätzt Aufwände von Backlog Items ab
    - beginnt mit der Implementierung von realisierbaren Elementen
    - arbeitet selbstorganisiert in einer Time Box
    - entscheidet über Menge der zu erreichenden Items
- Scrum Master
    - überwacht Aufteilung der Rollen und Rechte
    - sorgt für Transparenz
    - nicht Teil des Teams
    - verhindert Eingriff des Product Owners in Organisationsprozesse
### Prozess
- Spring Planung 1
    - PO erklärt Team die Backlog Items
    - PO einigt sich mit Team auf Sprint Ziel
    - Übernahme der hochpriorisierten Backlog Items 
- Sprint Planung 2
    - eigenverantwortlich vom Scrum Team
    - Selected Backlog wird im Team aufgeteilt
    - Eine Aufgabe ~ Ein Tag
- Sprint Durchführung
    - zentrales Element des Entwicklungszyklus von Scrum
    - Länge 1-4 Wochen
    - vor dem Sprint: Product Backlog
    - Sprint Backlog pro Sprint
    - Ende des Sprint: lauffähige, iterativ verbesserte Programmversion
- Daily Scrum
    - kurzes tägliches Meeting
    - Welche Aufgaben seit letztem meeting fertiggestellt?
    - welche Aufgaben bis zum nächsten Meeting?
    - Gibt es Probleme?
    - neue Hindernisse gehen an den Scrum Master
- Review
    - informelles Review nach jedem Sprint mit Team und PO
    - Vorführung des Ergebnisses, technische Eigenschaften präsentieren
    - PO prüft: Ergebnis == Anforderungen?
- Retrospektive
    - Was war gut?
    - Was könnte verbessert werden?
    - Priorisierung des Verbesserungspotenzials
    - Vergangenen Sprint beleuchten und daraus lernen
### Dokumente
#### Product Backlog
inhaltliche und technische Beschreibung des Projekts. Wird laufend fortgeführt
#### Selected Backlog
enthält Einträge aus dem Product Backlog, die innerhalb des aktuellen Sprints bearbeitet werden sollen. Von PO und Team erstellt.
#### Sprint Backlog
Alle Aufgaben und Priorisierungen des aktuellen Sprints. Eine Aufgabe sollte einem Tag entsprechen. Es werden nur so viele Aufgaben eingeplant wie das Team für realistisch hält.
#### Burndown Chart
Eine graphische, pro Tag zusammenfassende Darstellung des noch zu erbringenden Restaufwandes für den Sprint
#### Impediment Backlog
Enthält aktuelle Hindernisse des Projekts. Der Scrum Master räumt diese in Zusammenarbeit mit dem Team aus.

## Prototyping orientiertes Lifecycle Modell
