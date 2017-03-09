## Aufgabe 1

```sql
SELECT NNAME,VNAME
FROM PERSONAL
ORDER BY NNAME,VNAME
```

## Aufgabe 2

```sql
select persnr,vname,nname,projnr,telefonnr,gehalt
from personal
where gehalt between 1500 and 3000
```

## Aufgabe 3

```sql
select persnr,vname,nname,projnr,telefonnr,gehalt
from personal
where nname like '%ei%'
order by persnr
```

## Aufgabe 4

```sql
select persnr,vname,nname,projnr,telefonnr,gehalt
from personal
where lower(nname) like lower('%Ma%')
order by nname,vname
```

## Aufgabe 5

```sql
select persnr,vname,nname,projnr,telefonnr,gehalt
from personal
where length(nname) > 4
order by persnr
```

## Aufgabe 6

```sql
select *
from personal
where nname is null
```

## Aufgabe 7

```sql
select *
from akte
where datum > '1998-01-01' and gehalt > 2800
```

## Aufgabe 8

```sql
select nname,vname,length(vname)as laenge
from personal
where nname <'M'
order by laenge desc
```

## Aufgabe 9

```sql
select persnr,vname,nname, length(concat(nname,vname)) as laenge
from personal
order by laenge
```
