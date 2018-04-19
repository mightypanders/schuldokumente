# Definition
Datenstruktur die dem Array sehr ähnlich ist.  
Indexbasierter Zugriff. Der Index ist ein `Key` der  ein frei wählbarer Wert vom Typ `String` oder `Integer` ist.
# Sinn
- Verknüpfte / Verschachtelte Listen
- Wert eines Listenfeldes kann der Schlüssel zu einem Wert eines anderen Feldes sein.
- Zugang ist absolut konstant gleich schnell
# Syntax in C#
```csharp
Hashtable ht_test;
ht_test = new Hashtable();:
ht_test["benny"] = "porsche";
ht_test["david"] = "programmierer";
ht_test["thomas"] = "kaufmann";
ht_test["daniela"] = "universität";
```
## Zugriff
```csharp
name = "benny";
if(ht_test[name] == "porsche")
    Console.WriteLine("gefunden");

//Ausgabe:
"gefunden"
```
Ist der Schlüssel in der Hashtable _nicht_ vorhanden, führt der Zugriff zu einer Exception!