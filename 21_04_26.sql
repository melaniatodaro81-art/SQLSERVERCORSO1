use AziendaDb;

select * from Assegnazioni;
select * from Clienti;
select * from DettagliOrdine;
select * from Reparti
select * from Progetti;
select * from Dipendenti;
select * from Ordini; 

--rinominare una colonna
alter table dettagliOrdine 
--exec = esegui
exec sp_rename 'DettagliOrdine.Quantita','Quantità';
exec sp_rename 'Dipendenti.stipendio','Salario';
exec sp_rename 'Dipendenti.salario','Stipendio','Column'; --> si può aggiungere anche scrivere questo
exec sp_rename 'DettagliOrdine.Quantità','Quantita';

--modifica nome tabella
exec sp_rename 'Clineti','ClientiAzienda';

--eliminare tabella
drop table ClientiAzienda;

--> clienti serve a modificare internoa righe
update Clienti
set cognome ='greco'
Where ClineteId =1;


update Clienti
Set Nome ='AeSRL' nome nuovo
Where ClienteId =1;

SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini


--update 
--set -> nome colonna
--where --> condizione
*/
UPDATE Nome_Tabella
SET Nome_Colonna = Nuovo_Valore
WHERE Condizione;
*/

modifificare stipendio dipendenti
--aggiungiamo 200 euro agli stipendi maggiore di 2500
UPDATE Dipendenti
SET Salario = salario +200
WHERE Salario < 2400;

dare piu stipendio a una persona
UPDATE Dipendenti
SET Salario = salario+200
WHERE DipendenteID  =12;

aumentare stipendio per 10%

UPDATE Dipendenti
SET Salario = salario+1.1;

- cambio reparto
UPDATE Dipendenti
SET RepartoID = 2
WHERE DipendenteID =12;



-->inserire una colonna come fare
alter table dipendenti add telefono nvarchar(30);

--cancellare colonna
alter table dipendenti
drop column telefono;


--JOIN
--serve a unire le tabelle durante l'esecuzione di una query, usando una relazione con colonne in comune
--AS= ALIAS dare un'altro nome alla colonna
--INNER JOIN(JOIN--), LEFT jOIN RECUPERA TABELLA (DA SINISTRA) RIGHTJOIN (DA DESTRA) FULL JOIN DOPO
--INNERJOIN
/*
SELECT Colonne da visualizzare
FROM TABELLA1
INNER JOIN TABELLA RECUPERA
ON CONDIZIONE -->WHERE
*/

/*
usare alias As per cambiaree i nomi delle colonne
restituire solo dipendenti che hanno un reparto valido colonne 
--(colonne visualizzare:
	--nome completo del dipendente,(nome,cognome)
	-mail
	nome del reparto
	sede

	*/

select 
	d.Nome AS 'nome del dipendente',
	d.Cognome AS 'Cognome del dipendente',
	d.Email,
	r.Nomereparto AS 'nome del reparto',
	R.sede
From Dipendenti AS d
inner join reparti as r 
on d.repartoid=r.Repartoid;

/*
select 
	d.Nome AS 'nome COMPLETO del dipendente',
	d.Cognome AS 'Cognome del dipendente',
	d.Email,
	r.Nomereparto AS 'nome del reparto',
	R.sede
From Dipendenti AS d --> di sta per dipendente
inner join reparti as r  - fai una relazione  con la tabella rerparti che ha Alias
on d.repartoid=r.Repartoid;

*/

SELECT * FROM Dipendenti; -- Reparti
SELECT * FROM Assegnazioni; -- Progetti
SELECT * FROM Clienti;
SELECT * FROM Progetti;
SELECT * FROM Reparti;
SELECT * FROM Ordini; -- Ordini Clienti
SELECT * FROM DettagliOrdine; -- Ordini


-- Clienti(nome telefono), 
--ordini(data ordine, totale), 
--dettaglio dell'Ordine (prodotto,quantità e prezzo unitario )

SELECT
*
FROM Clienti as CL
jOIN Ordini AS Ord ord.Clienti On o.ClienteId=Cl =.clienteID


SELECT
	cl.Nome As 'NOme del cliente',
	cl. telefono As Contatto,
	O.DataOrdine As 'Data dell''ordine', 
	d.prodotto As 'Nome del prodotto',
	d.Quantita As 'quantita del prodotto',
	d.prezzoUnitario As 'Prezzo Unitario',
	o.Totale As 'Prezzo Totale'
FROM Clienti as CL
jOIN Ordini AS O on o.Clienteid =cl.clienteID
jOIN dettagliordine AS d on o.OrdineID =d.OrdineID;

--jOIN Ordini AS O on o.Clienteid =cl.clienteID AA
--CONDIZIONE CHE IL CLIENTEID DELLA TABELLA ORDINIè UGUALE CLIENTEID DELLA TABELLA CLIENTI (SE E SOLO SE)
--ORDINI.cLIENTE ID =1
-->cLIENTE.cLIENTE
jOIN dettagliordine AS d on o.OrdineID =d.OrdineID;



--CONCATENAZIONE
select 
	d.Nome + ' ' + d.Cognome AS  'nome COMPLETO del dipendente',
	r.Nomereparto AS 'nome del reparto',
	R.sede
From Dipendenti AS d
inner join reparti as r 
on d.repartoid=r.Repartoid;
