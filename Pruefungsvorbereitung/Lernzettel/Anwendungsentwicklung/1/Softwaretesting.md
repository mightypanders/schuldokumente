# Softwaretesting
## Motivation
- Zeigt Anwesenheit von Fehlern
- Vollständiges Testen ist nicht möglich
- Frühzeitig beginnen
- Fehlerzustände nicht gleich verteilt. Auf einen Fehler kann der nächste folgen, oder keiner mehr
- Wiederholte Tests decken keine neuen Fehlverhalten auf
- Umfeldabhängig.
- Keine Fehler != Nutzbares System
## Definitionen
### Fehlerwirkung
Wirkung eines Fehlerzustandes nach außen. Die Abweichung zwischen beobachtetem Ist- und erwünschtem Soll-Zustand
### Fehlerzustand (Defekt)
Inkorrektes Teilprogramm, Anweisung oder Datendefinition -> Ursache für Fehlerwirkung. Zustand der zu einer Fehlerwirkung führt.
### Testen
1. Gesamter Prozess um korrekte Ausführung nachzuweisen und Fehlerwirkungen aufzudecken.
2. Oberbegriff für alle Tätigkeiten im Testprozess
3. Verbundene Ziele
    - Vorbeugen von Fehlerwirkungen
    - Auffinden von Fehlerwirkungen
    - Produktqualität bestimmen
    - Vertrauen gewinnen und erhöhen
### Defektbehebung/Debugging
Lokalisieren und Entfernen von Fehlerzuständen in der Software
### Fundamentaler Testprozess
1. Planung & Steuerung
2. Analyse & Design
3. Realisierung & Durchführung
4. Auswertung & Bericht
5. Abschluss
### Testfall
Für einen Test nötige
- Vorbedingungen
- Menge der Eingabewerte
- Menge der Sollwerte
- Prüfanweisung
- Nachbedingungen
### Testszenario
Zusammenfassung von Testfällen. 1. Testfall liefert Input für den nächsten
### Testlauf
Mehrere Testfälle mit festen Rahmenbedingungen ausführen
### Testtreiber
Simulation von noch nicht entwickelten Komponenten, oder Software die eine Komponente isoliert testbar macht.
## Teststufen
### Modul / Komponententest
Einzelne Softwarebausteine werden gestestet. Hier lässt sich die Fehlerwirkung direkt der Komponente zuordnen.
### Integrationstest
Nach dem Komponententest und dem erfolgreichen Abschluss können die Module zusammengeführt und getestet werden. Fehler in Schnittstellen sollen gefunden werden.
### Systemtest
Das Integrierte System wird getestet um zu prüfen ob es den spezifizierten Anforderungen genügt.
### Abnahmetest
- vertragliche Akzeptanz
    - im Entwicklungsvertrag festgeschriebene Kriterien
    - gesetzliche Vorschriften
- Benutzerakzeptanz
    - wenn Kunde und Anwender unterschiedlich sind
    - nehmen die Anwender das System als benutzbar an
- Akzeptanz durch Systembetreiber
    - ist das System in die bestehende Systemlandschaft integrierbar?
    - kann der Administrator mit dem Programm umgehen
- Feldtest (Beta/Alpha)
    - _nach_ Systemtest
    - Umgebungseinflüsse erkennen
    - testen von Vorabversionen bei ausgewählten Kunden
## Testmethoden
### Statischer Test
- Das Testobjekt wird nicht mit Testdaten versehen
- intensive Betrachtung des Quellcodes
- Frühzeitiges Erkennen und Beseitigen von Fehlern
- Schreibtischtest
    - manuelle Simulation der Ausführung
- Syntaxüberprüfung durch Werkzeuge
### Dynamischer Test
- Ausführbares Programm liegt vor.
- Testfällen werden definiert und ausgeführt.
#### Whitebox
- Programmtext ist einsehbar
- Während der Ausführung werden die inneren Abläufe analysiert und verifiziert.
#### Blackbox
- Programmtext ist nicht einsehbar
- Das Verhalten des Testobjekts wird von außen beobachtet

## Testarten
### Funktional
- basiert auf Anforderungsdefinition
- von außen sichtbares Verhalten überprüfen
- Blackbox Testfälle
### Nicht-Funktional
- mit welcher Qualität erbringt das System seine Leistung
- Lasttest
- Performanz
- Stress
- Stabilität
- Robustheit
- Benutzerfreundlichkeit
- etc
### Strukturbezogen
- interne Struktur der Software
- Kontrollfluß innerhalb der Komponenten
- Aufrufhierarchie
- Whiteboxverfahren
### Änderungsbezogen
- Regressionstest
- keine neuen Defekte durch neue Features
