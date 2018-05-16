## Installationsanleitung
Um das automatische Backup zu installieren kopieren sie bitte das beiliegende Archiv in einen Ordner zu dem sie Schreibberechtigung haben.  
Sorgen Sie dafür, dass sie das Installationsscript ausführen können  
```bash
chmod +x installscript.sh
```
Im Anschluß können Sie das Script ausführen.  
Als Ausführungsparamter müssen sie den Typ der Sicherung auswählen
- `-i` für eine inkrementelle Sicherung
- `-d` für eine differentielle Sicherung
Der Pfad in dem die Sicherung gespeichert wird, ist standarmäßig als  
`/var/backups/automatic` vorbelegt.
Sie können diesen Pfad ändern indem sie den Paramter
- `-o=<Pfad>`
an den Aufruf des Installationsscripts anhängen.  
Die Spezifikation der zu sichernden Ordner **muss** als letztes im Aufruf des Scripts geschehen. Es können beliebig viele Ordner, durch Leerzeichen getrennt, an den Scriptaufruf angehängt werden.
Das Skript muss als User mit Superuser Berechtigungen ausgeführt werden, da der Zugriff auf `/etc/cron.d` für einen normal privilegierten User nicht gestattet ist.
##### Beispiel
```bash
sudo installscript.sh -i -o=/var/backups/hnbk-backup/ /etc /opt
```
Das Installationsscript legt eine Datei im Ordner `/etc/cron.d` an.  
Der Inhalt der Datei bestimmt das Ausführungsverhalten des Backupscripts.  
Mit dem Aufruf des obigen Beispiels wird folgender Inhalt erstellt

```bash
30 10 * * 1 root bash /usr/bin/hnbkbackupscript.sh -f -o=/var/backups/hnbk-backup/ /etc /opt
30 10 * * * root bash /usr/bin/hnbkbackupscript.sh -i -o=/var/backups/hnbk-backup/ /etc /opt
```
Die erste Zeile führt jeden Montag um 10:30 Uhr ein vollständiges Backup der Ordner `/etc` und `/opt` durch.  
Die zweite Zeile führt jeden Tag um 10:30 Uhr ein inkrementelles Backup der selben Ordner durch.

Das Installationsscript kopiert die Datei `hnbkbackupscript` in den Ordner `/usr/local/bin`. An diesem Ort kann systemweit auf sie zugegriffen werden.  
Ebenfalls wird die Datei als ausführbar deklariert.

## Deinstallation
Um das regelmäßige Backup zu deaktivieren löschen sie die Crontab Datei mit folgendem Befehl
```bash
sudo rm /etc/cron.d/hnbkbackup
```
Für diese Operation sind Administrator Berechtigungen erforderlich.  
Soll das gesamte Script von der Maschine entfernt werden, müssen sie noch die ausführbare Datei löschen. Dies geschieht mit folgendem Kommando
```bash
sudo rm /usr/local/bin/hnbkbackupscript
```