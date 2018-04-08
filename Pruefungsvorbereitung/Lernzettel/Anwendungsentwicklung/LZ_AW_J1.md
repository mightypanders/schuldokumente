# Basics
## Algorithmus
- eine endliche Folge
    - ein Algorithmus muss in einem endlichen Text zu verfassen sein
- von eindeutig bestimmten
    - unmissverständliche Anweisungen für den Adressante, klar definiert
- Elementaranweisungen
    - einfach, nicht zusammengesetzt, atomar
- die den Lösungsweg eines Problems
    - ein Algorithmus muss ein Problem lösen, keine ziellose Verkettung von Anweisungen
- exakt und vollständig beschreiben
    - Folge von Anweisungen ergibt eine eindeutige Vorschrift zur Lösung des Problems
    - das Problem ist **nicht** nur teilweise gelöst
## Variable
- Speicheradresse und Symbol (Bezeichner)
- Wert an Speicheradresse kann über Symbol im Programm angesprochen werden
- Platzhalterfunktion: Name kann unabhängig vom Wert der Variablen verwendet werden
### Eigenschaften von Variablen
1. Bezeichner
2. Datentyp
3. Wert
### Verwendung von Variablen
1. Deklaration
    - Einführung, meist vor der ersten Verwendung zwingend nötig (Ausnahmen sprachenabhängig)
2. Wertzuweisung
    - Dem Platzhalter wird ein Wert zugewiesen
3. Wertzugriff
    - Verwendung des Wertes der an der Speicheradresse hinterlegt ist.
## Datentypen
- definieren Wertebereiche und damit auch erlaubte Operationen (implizit)
- bspw. `string` definiert eine alphanumerische Zeichenkette, `int` definierte eine ganzzahligen Wert
- `int` Werte können addiert werden, während `string` Werte aneinandergehängt werden wenn der `+` Operator verwendet wird

## Operatoren
### Arithmetisch
`+ - * /`
### Vergleich
`> < = <= >= == !=`
### Boolean (Wahrheitswert)
`&& ||`
### Zuweisung
`=`

##### Besonderheit ganzzahlige Division
`(-8/3) = 2` Divisionsreste werden durch den Datentyp `Integer` geschluckt  
`% modulo` gibt den Rest einer ganzzahligen Division -> `(11%3 = 2)`, weil `(11/3 = 3 Rest 2)`

### Zusammengesetzte Operatoren
#### Inkrement Operator
`i++` -> `i = i + 1`  
`var++` -> Ausdruck auswerten, dann erhöhen  
`++var` -> erhöhen, dann Ausdruck auswerten  
#### Dekrement Operator
`i--`  
`var--`  
`--var`  
#### Weitere Beispiele
`*=` `/=` `+=` `-=`

## Datenflußplan
[Notation](../../..//Jahr1/Anwendungsentwicklung/Material/Datenflussplan_Notation_1.pdf)

## Programmiersprachentypen
### Interpreter
### Compiler

## Kontrollstrukturen
### Folge
... relativ klar
### Selektion
#### bedingte Verarbeitung
```csharp
if(/*Bedingung*/)
{
    // tu etwas
}
```
#### einfache Alternative
```csharp
if(/*Bedingung*/)
{
    // tu etwas
}
else
{
    // tu etwas anderes
}
```
#### mehrfache Alternative
```csharp
if (/*Bedingung*/)
{ /*tu etwas*/}
else if(/*Bedingung*/)
{ /*tu etwas anderes*/ }
else if (/*Bedingung*/)
{ /* tu etwas drittes*/ }
else
{ /* tu etwas viertes*/ }
```
oder  
```csharp
switch(variable){
    case 1:
        tu();
        break;
    case 2:
        tu();
        break;
    default:
        tu();
        break;
}
```
### Iteration/Schleifen
#### Kopfgesteuert
```csharp
while (/*Bedingung*/) 
{/*hier Code ausführen*/}
```
#### Fußgesteuert
```csharp
do 
{/*Code*/} 
while (/*Bedingung*/);
```
#### Zählschleife
```csharp
for (i;i<zielwert;i++) 
{/*code*/}
```
#### Endlosschleife
```csharp
while (true)
{/*Code*/}
//oder
for (;;)
{
    /*verlassen mit */ break;
}
```
## Arrays in C#
- Folgen von Elementen mit dem selben Datentyp
### Deklaration und Erstellung
``` csharp
 string[] text = new string[3];
```
### Zuweisung der Elemente
> Index beginnt bei "0", endet bei Array.Length - 1

```csharp
text[0] = "foo";
```
### Auslesen der Werte
```csharp
string text = text[0];
```
-> `text` enthält nun "foo"
### Iteration
```csharp
for (int i = 0;i<text.Length;i++)
{
    Console.WriteLine(text[i]);
}
```
Ausgabe aller Werte in `text` in die Konsole
## Prozedurale Programmierung
- Aufgaben können in Unterprozeduren aufgeteilt werden
- Prozeduren operieren auf dem selben Datenraum
- teilweise die selben Datensätze
- schlecht wartbar
## Objektorientierte Programmierung
### Datenabstraktion
- Daten und die Funktionen die mit ihnen arbeiten, werden zu funktionalen Einheiten zusammgengefasst
- gleiche Objekte können aus einer gemeinsamen Klasse abstrahiert werden.
- Funktionen eines Objektes können die Objekt-Daten manipulieren
    - **_Nur_** diese Funktionen
    - Begriff: **Kapselung**
### Kapselungsprinzip
#### Idee
Information Hiding -> Daten werden hinter Schnittstellen verborgen
#### Motivation
##### Reduktion von Komplexität
- Nur Schnittstelle muss verstanden werden
- Nur Schnittstellen interagieren miteinander
- Kein Wissen über "zulässige" Werte ist nötig da die Schnittstellen Datenzuweisungsregeln implementieren kann

##### Wartbarkeit
Änderungen innerhalb einer Schnittstellen können transparent und dem Nutzer nicht bekannt sein
##### Umsetzung in Objekt Orientierten Sprachen
- Alle Attribute werden privat deklariert
- Zugriff auf Attribute über öffentliche Schnittstellenmethoden
