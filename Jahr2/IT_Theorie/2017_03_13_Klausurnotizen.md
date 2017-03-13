# VLAN
- Segmentierung von physikalischen in logische Netze
- Kommunikation der logischen Netze nur durch Router möglich
- 2 Modi
  1. Tagged / Dynamisch / Trunk  
     - Verbindung zweier Switches mit 2 oder mehr VLAN über ein einziges Kabel  
     - Hinzufügen eines VLAN Tags an Frames, die den Switch wechseln machen     
  2. Untagged / Statisch / Access / portbasiert
     - Entfernung von VLAN Tags
      - Hots empfangen die Tags nicht, da sie vom Switch entfernt werden

# Switch / Bridge
- Layer 2
- Segmentierung innerhalb einer Broadcastdomäne
- Besitzt Logik, Speicher, Memory
- MAC-Address Tabelle (__S__ource __A__dress __T__able) __= SAT__
 - Learning: Switch trägt Absenderadresse ein (falls unbekannt)
 - Flooding: Sendet Pakete an alle Ports weiter, wenn Ziel MAC unbekannt ist
   - Kontrast Broadcast: an alle angeschlossenen Geräte außer Sender, wenn Broadcastadresse im Frame angegeben ist.
 - selective Forwarding: sendet Paket an den Port an dem die Ziel-MAC hinterlegt ist

# Kollisionsdomänen
- Kollision: zwei Hosts versuchen gleichzeitig etwas zu senden.
- Verbinden mehrerer Netzkomponenten an ein shared medium mit gemeinsamen Zugriff, ohne Verbindung zu einem Netzkopplungselement (Layer 2)
- Layer 1
- Geräte <= L 1 erweitern Kollsisionsdomänen, darüber segmentieren sie

# Broadcastdomäne
- Netzabschnitt in dem Broadcastnachrichten weitergeleitet werden.
- Segmentierung ab L 3

# Hub / Repeater
- Layer 1
- Leitet Nachrichten an alle angeschlossene Geräte weiter
- keine Segmentierung von Kollsisions- oder Broadcastdomänen
- Keine Logik
- 54321 Regel:
  - 5 Segmente mit Netzmedien
  - 4 Repeater oder Hubs
  - 3 Host Segmente des Netzes
  - 2 Verbindungsabschnitte ohne Host
  - 1 Kollsisionsdomäne
- Sicherstellung einer performanten Laufzeit einer Kollsisionsdomäne

# Felder eines Ethernetframes
Feld|Größe|Zweck
---|---|---
Präambel|8 B| Sync unter 10 Mb/s, sonst Delimiter aus Kompatibilität
Ziel MAC|6 B| Unicast, Multicast, Broadcast
Absender MAC|6 B| Unicast Ethernetadresse
Länge/Typ|2 B|Gibt Protokoll der höheren Schicht an, Länge wenn unter 1536
Daten|64 - 1500 B|Max. Transmission Unit 1500 Oktette
Frame Checksum|4 B| CRC Wert vom Sender, erneut berechnet bei Empfänger und verglichen
