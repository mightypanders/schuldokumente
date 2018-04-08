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
# Betriebssysteme
- "Software which controls the execution of computerprogram and which may provide scheduling, debugging, input/output control, accounting, compilation, storage assignment, data management and related services."

# Elektrotechnik
## Gleichstrom
### Spannung U
> Einheit Volt

- Kraft mit der Elektronen durch die Leitung fließen
- gemessen mit Spannungsmesser
### Strom I
> Einheit Ampere

- Stromstärke 
### Widerstand R
> Einheit Ohm

- welchen Widerstand erfahren Elektronen wenn sie durch ein Element fließen
### Ohmsches Gesetz
`U = R * I`  
`1V = 1 Ohm * 1A`  

## Reihenschaltung von Widerständen
- durch alle Widerständen fließt der selbe Strom I
- bei einer Annahme von drei Widerständen hintereinander
- `Rges = R1 + R2 + R3`
- `U = U1 + U2 + U3`
- Teilspannungen verhalten sich wie Teilwiderstände
- `U1/U2 == R1/R2`
- Spannungsteilerregel -> Alle Widerstände in Reihe werden vom gleichen Strom durchflossen

## Parallelschaltung von Widerständen
- an allen Widerständen liegt die gleiche Spannung U
- Gesamtwiderstand bei einer Annahme von drei Widerständen parallel
- `1/Rges = 1/R1 + 1/R2 + 2/R3`
- bei zwei Widerständen
- `Rges = R1*R2/R1+R2`

## Leistung im Gleichstromkreis (W)
- `P = U * I` [W]

# Wechselstromkreis
// vielleicht irgenwann mal. jetzt nicht.
 
 # USB
 - serielles Bus System zur Verbindung eines Rechners mit externen Geräten
 ## Spezifikationen
 - USB 2.0: 0,5 A 5 V
 - USB 3.0: 0,9 A 5 V

 # USV
 - Unterbrechungsfreie Stromversorgung
 - überbrückt kurzzeitig einen Stromausfall um ein geordnetes Herunterfahren zu ermöglichen ob bis die Stromquelle wieder Leistung liefert.
 ## VFD-USV
 - Voltage and Frequency Dependent
 - Direkte Speisung der Verbraucher aus dem Stromnetz
 - Umschaltung auf Akku bei Ausfall
 - Umschaltlücke ca 10 ms

 ## VI-USV
 - Voltage Independent
 - Nachregelung der Stromversorgung bei kleinen Schwankungen ohne komplettes Umschalten
 - Frequenz hängt vom Versorgernetz ab
 - Umschaltlücke ca 10 ms

 ## VFI-USV
 - Voltage and Frequency Independent
 - keine direkte Verbindung zwischen USV Eingang und Ausgang
 - die USV ist ständig zwischen Eingang und Ausgang geschaltet
    - Eingangsstrom wird gleichgerichtet und lädt Akku
    - Ausgangsstrom wird wechselgerichtet und speist Verbraucher
- Umschaltlücke 0 ms

## mögliche Netzstörungen
- Netzausfall
- Spannungseinbrüche
- Spannungsspitzen
- Unterspannungen
- Überspannungen
- Blitzeinwirkungen
- Spannungsstöße
- Frequenzschwankungen
- Spannungsverzerrung
- Spannungsoberschwingung
    - keine saubere Sinuswelle 

# Parität
- Prüfverfahren um etwaige Fehler bei einer Datenübertragung zu entdecken.
- simpelstes Verfahren: Ergänzung eines Datenworts auf gerade bzw ungerade Anzahl von "1"
### Beispiel
`11001101`  
- Ergänzung auf gerade Parität:  `11001101 1`  
 da vorher 5 "1" vorhanden waren, Ergänzung um 1*"1" -> 6 -> gerade Anzahl  
- Ergänzung auf ungerade Parität:  `11001101 0` 