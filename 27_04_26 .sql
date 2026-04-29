--1. subquEry (sottoquery)
--2. WHERE E HAVING
--3. TUTTI I JOIN -LEFT JOIN RIGHT JOIN  INNER JOING -JOIN
--3. WHERE E HAVING
--4. CONDIZIONI IF/ELSE (CASE THEN)
--5. DATA IN SQL SERVER
--6. STORE PROCEDURE
--7. VIEW = VISTA
--6. BACK-UP STANDARD E AUTOMATIZZATO DEL DB


--1. subquEry (sottoquery) QUERY DENTRO UNA QUERY
/*
SELECT
FROM
WHERE CONDIZIONE con (
				SELECT
				---
				FROM
				)
*/


 USE AziendaDb;

 --MEDIA
 
 SELECT 
	AVG(Totale) AS 'media'
FROM Ordini --1357.142857
WHERE Totale > ( --SUBQUERY
  SELECT 
	AVG(Totale) AS 'media'
FROM Ordini --1357.142857
);

SELECT *FROM Ordini 
--clienti senza ordini

select ClienteId from Ordini
where

select*
from Clienti
where ClienteId  not in (
  select ClienteId from Ordini
);

--facciamo prima la media esercizio

select
* 
from Ordini as o
where Totale > (
	select AVG (Totale) As 'Sopra Media'
	from Ordini oo
	where O.ClientiID = oo.clientiID
	);

	SELect *
	from Ordini
	inner Join Clienti c
	on o.ClienteID = oo.ClienteID --- boooo


select 
	AVG(Totale) AS 'Media'
from Ordini --1357.142857
where Totale
avg> 1357.142857

-- WHERE E HAVING

/*
	SELECT 
		---*---
	FROM ------
	GROUP BY --
	HAVING ----
*/


	SELECT Prodotto,
	SUM(Quantita)  AS Quantità
	FROM DettagliOrdine
	GROUP by Prodotto
	HAVING SUM(Quantita) > 4

	select *from DettagliOrdine;