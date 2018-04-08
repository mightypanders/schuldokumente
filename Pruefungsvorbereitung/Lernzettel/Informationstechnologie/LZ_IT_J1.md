# Prozessverwaltung
## Zustände
1. Erzeugt
    - Prozess ist neu entstanden
2. Bereit
    - rechenbereit aber noch keinen Prozessor zugeteilt bekommen
3. Rechnend
    - Prozess wurde Prozessor zugeteilt und arbeitet Anweisungen ab
4. Blockiert
    - Prozess wartet auf ein Ereignis, Ein- Ausgabe bspw
5. Beendet
    - Ende der Ausführung wurde erreicht
## Zustandswechsel
### Rechnend -> Blockiert
- Prozess wartet darauf einen Systemaufruf durchführen zu können (neuer Prozesse, Ein/Ausgabe)
- rechnender Prozess verursacht einen Fehler
- Seitenfehler, Zugriff auf Speicherseite die noch nicht im Hauptspeicher ist.
### Rechnend -> Bereit
Prozess gibt Prozessor frei, Rechenzeitzuteilung abgelaufen
### Rechnend -> Beendet
Prozess mit Abarbeitung fertig
### Blockiert -> Bereit
Ein Ereignis tritt ein, auf das ein blockierter Prozess wartet

# Multitasking
Fähigkeit eines Betriebssystems mehrere Prozesse scheinbar gleichzeitig auszuführen. Verschiedene Prozesse werden in kurzen Abständen hintereinander ausgeführt, sodass der _Eindruck der Gleichzeitigkeit_ besteht.
## Präemptives Multitasking
Das Betriebssystems entzieht einem laufenden Prozess den Prozessor. Alle Prozesse bekommen nach dem Round Robin Prinzip nacheinander Prozessorzeit zugeteilt.
## Kooperatives Multitasking
Ein Prozess blockiert solange den Prozessor bis er ihn  freiwillig wieder abgibt.
### Vorteile
- keine "wiedereintrittsfähigen Prozesse" müssen gebaut werden
### Nachteile
- kann das System komplett zum Stillstand bringen
    - durch Fehler im Programm
    - gewollte Fehlfunktionen
    - gewollte Alleinherrschaft

# Von-Neumann-Rechner
## Bestandteile
- Rechenwerk
- Steuerwerk
- Speicherwerk
- Ein/Ausgabewerk
- Bus
## Neuerungen
Schnelle Änderungen ohne Hardware Änderungen
## Entsprechung CPU
Rechenwerk + Steuerwerk
## Entsprechung RAM
Speicherwerk
## Von-Neumann-Zyklus
1. FETCH
    - Befehl holen
2. DECODE
    - Befehl übersetzen
3. FETCH OPERANDS
    - Laden von Anwendungsziel Operanden
4. EXECUTE
    - Ausführen von Operation auf Operand
5. UPDATE INSTRUCTION POINTER
    - zum nächsten Befehl
# BIOS & UEFI
## BIOS 
- Basic Input Output System
### Aufgabe
- Rechner in betriebsbereiten Zustand versetzen
- Komponenten initialisieren
- Power On Self Test überprüft Funktionstüchtigkeit der Hardware
- Kontrollübergabe an Betriebssystem
### Hersteller
- AMI
- Award/Phoenix
## UEFI
- Unified Extensible Firmware Image
- "Nachfolger" des BIOS
### Warum?
- 64-bit Prozessoren nur mit Tricks im BIOS zu verwalten
### Was kann es?
- alles was BIOS kann, aber besser
- Netzwerkschnittstelle kann genutzt werden
- Mausbedienung
