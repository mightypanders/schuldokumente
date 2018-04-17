# Klasse
- Bauplan für ein Objekt
- definiert Attribute
- definiert Methoden
- ob diese von außen zugänglich sind
- kapselt daten
- definiert ob veerbet werden darf oder geerbt wurde

# Objekt
- konkrete Instanz einer Klasse
- Golf ist Instanz von Klasse Auto
- attribute unterscheiden sich zwischen objekten müssen es aber nicht

# Abstrakte Klasse
- definiert eine Schnittstelle
- hat definierte Attribute oder Methoden mit Logik
- kann nicht instanziert werden, muss abgeleitet werden
- Fahrzeug ist abstrakte Überklasse von PKW und LKW
- hat keinen konstruktor

# Interface
- definiert ebenfalls eine schnittstelle
- ein "Vertrag" welche Methoden implementiert werden müssen,
- wenn eine Klasse dieses Interface tragen soll
- deklariert Methodenköpfe die in der implementierung gefüllt werden müssen
- hat keine Attribute

# Methode
- Eine Aufgabe oder Funktion die ein Objekt mit seinen Daten ausführen kann
- bspw. ein Ergebnis ausrechnen und seine eigenen Variablen verändern

# Attribut
- Ein Charakteristikum eines Objekts, Auto kann Attribute Farbe haben,
- das mit Werten gefüllt werden muss

# Veerbung
- Eine Klasse kann mit diesem Konzept alle Teile eines anderen Objekts übernehmen
- und eigene Teile hinzufügen
- PKW erbt alle Eigenschaften von Fahrzeug und fügt "Sitzplätze" hinzu
  - es kann fahren und hat eine anzahl von Rädern von Fahrzeug übernommen

# Überschreiben von Methoden
- wird eine Methode als "virtual" deklariert ist sie bereit überschrieben zu werden
- erbende oder ableitende klassen können diese dann mit dem Schlüsselwort
- "override" ersetzen während sie den selben Namen beibehalten

# Konstruktor
- initialisiert alle Attribute einer klasse mit Werten
- er gibt die instanz der Klasse zurück; ein Objekt

# Polymorphie
- Methode: in verschiedenen Klassen implementiert, die das Basisinterface tragen, aber die konkrekte
- Ausgestaltung der Methode ist immer anders.
  - mehrmalige Implementierung mit gleichem Bezeichner, es wird aus dem Kontext entschieden, welche
  - gewählt werden muss.
  
