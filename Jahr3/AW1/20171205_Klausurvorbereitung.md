# Multithreading vs Multitasking
#### Tasking
- mehrere Anwendungen Parallel
- immer nur ein Task pro CPU Kern
- schnelles Wecheseln
#### Threading
- mehrere Ausführungsstränge innerhalb eines Prozesses
- mehrere Dinge die ein Prozesses zugleich tun kann

### Thread
- Prozess hat min. einen Thread
- sequentielle Ausführungsreihenfolge in einem Programm
- teil eines Prozesses
- kleinste ausführbare einheit (windows)

#### Vorteile
- zeitaufwändige Operationen in nebenläufigen Strängen
- Skalierung auf Multicore
- blockiert bei Kommunikation mit Web oder DB nicht
- Priorisierung von Threads ist möglich

#### Nachteile
- Komplexe Steuerung von mehreren Strängen
- Synchronisierung
- schweres Debugging
- viel CPU Zeit bei vielen Threads
- viel Resourcen für die verwaltung der Threads nötig

### Zustände
- New
- Started
- Running
- Wait, Sleep, Join
- Locked Out
- Suspended
- Dead
- Blocked