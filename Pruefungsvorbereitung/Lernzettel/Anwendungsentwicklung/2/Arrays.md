# Defintion
Zusammenhängende Datenobjekte desselben Typs. Sie sind direkt hintereinander im Speicher des ausführenden Computers gespeichert.
# Dimensionalität
Üblich sind eindimensionale Auflistungen. Es können jedoch auch mehr-dimensionale Arrays definiert werden. Diese lassen sich als "Array im Array" visualieren.  
# Syntax in C#
```csharp
Type[] name = new Type[anzahl];
```
Die Definition der Anzahl ist im Gegensatz zur dynamischen Liste zwingend erforderlich.
```csharp
Type[,] name2D = new Type[2,3];
```
Dies definiert ein 2 dimensionales Array
# Index
Der Index ist null-basiert. Der erste Wert ist an `Stelle 0` zu finden
# Zugriff
```csharp
var wert = name[1];
```
# Informationen über Array selbst
```csharp
Laenge = name.Length();
Laenge2d = name2d.Dimension2.GetLength();
```