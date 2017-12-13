# Standardzeug

Hauptkonfigurationsdatei = `/etc/apache2/httpd.conf` (Bei Ubuntu `/etc/apache2/apache2.conf`)  
Laufzeitvariablen (Pfade, etc.) = `/etc/apache2/envvars`

DocumentRoot zu finden unter = `/etc/apache2/sites-enabled/000-default.conf`




# Sicherung über .htacces

## Hinzufügen folgender Lines in die VirtualHost-Datei
Editieren Sie hierzu die aktive VirtualHost-Datei aus `/etc/apache2/sites-available/`  
z.B.: `/etc/apache2/sites-enabled/000-default.conf` 

Falls der Eintrag AllowOverride All nicht vorhanden ist, müssen Sie diesen, ggf. für Ihr zu schützendes Verzeichnis hinzufügen: 
``` 
NameVirtualHost *  
<VirtualHost *>  
ServerAdmin webmaster@localhost  
DocumentRoot /var/www/html  

<Directory /var/www/html>  
	Options Indexes FollowSymLinks MultiViews  
	AllowOverride None  
	Order allow,deny  
	allow from all  
</Directory>  

<Directory /var/www/html/geheim>
	Options Indexes FollowSymLinks MultiViews
	AllowOverride All
	Order allow,deny
	allow from all
</Directory>
```
## Anlegen der Benutzerverzeichnisdatei
Falls noch keine Datei besteht mit "-c" ansonsten ohne!
Beispiel: `htpasswd -c /etc/apache2/hnbk/it_user schueler` 
==> Erstellt den Benutzer schueler in der Datei it_user unter dem Verzeichnis /etc/apache2/hnbk

Hinzufügen von anderen Benutzern:  
`htpasswd /etc/apache2/hnbk/it_user lehrer`


## Sicherung der lokalen Website
Finale lokale .htaccess Datei im selben Verzeichnis anlegen, wo die zu sichernde Seite liegt.
``` 
AuthType Basic
AuthName "hnbk it"
AuthUserFile /etc/apache2/hnbk/it_user
Require valid-user ==> Schaltet alle User in it_user frei
oder
Require user schueler ==> Schaltet nur schueler frei
```

## Authentifizierung über die zentrale Datei (z.B. 000-default)
```
<Directory /var/www/html>
Options Indexes FollowSymLinks MultiViews
AllowOverride None
Order allow,deny
allow from all
</Directory>
```
```
order <reihenfolge>
```
```
allow from host host # Whitelist 
deny from host host  # Blacklist
```

# SSL-Konfiguration

## Nötige packages installieren
`apt-get install apache2 openssl`

## Zertifikat mit Adminrechten anlegen
```
mkdir -p /etc/apache2/ssl

openssl req -new -x509 -days 365 -nodes -out /etc/apache2/ssl/apache.pem -keyout /etc/apache2/ssl/apache.pem

ln -sf /etc/apache2/ssl/apache.pem /etc/apache2/ssl/ `/usr/bin/openssl x509 -noout -hash /etc/apache2/ssl/apache.pem`.0

chmod 600 /etc/apache2/ssl/apache.pem
```
## Freischaltung Port 443
Muss in der Konfigurationsdatei (bsp.: `/etc/apache2/ports.conf`) freigeschaltet werden.

## SSL-Modul im Apache2 aktivieren
```
a2enmod ssl
force-reload
```

## VirtualHost für SSL einrichten
Folgende Datei wird mit folgendem Inhalt erstellt.

Datei: `/etc/apache2/sites-available/ssl.conf`

Inhalt:
```
NameVirtualHost *:443
<virtualhost *:443>
DocumentRoot /var/www
SSLEngine On
SSLCertificateFile /etc/apache2/ssl/apache.pem
</virtualhost>
```
Datei aktivieren: `a2ensite <Dateiname>`






Good Luck! =)
