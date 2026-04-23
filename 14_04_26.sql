--Creazione del database
CREATE DATABASE ScuolaDB

--Elimina il database esistente
--DROP DATABASE Demo;

--serve a capire quale database stiamo usando nel momento
--uso del Database
use ScuolaDB;

/*
| Tipo             | Quando usarlo                    |
| ---------------- | -------------------------------- |
| INT  =INTEGER    | numeri interi (ID, età)          |
| DECIMAL(10,2)    | soldi (precisione!)              |
| NVARCHAR, VARCHAR| testo (sempre meglio di VARCHAR) |
| DATE             | solo data                        |
| DATETIME         | data + ora                       |
| BIT              | booleano (0/1)  VEROO FALSO                 |
*/                       |

--creazione della tabella studenti
CREATE TABLE Studenti(
    StudenteId INT not null primary key Identity(1,1),
    Nome NVARCHAR(150) NOT NULL,
    Cognome NVARCHAR(150) NOT NULL,
    Email NVARCHAR(150) NULL,
    Genere CHAR(1) NOT NULL,
);

selezionare il range  ed eseguire dopo aver finito

--VISUALIZZA LA LISTA DEGLI STUDENTI
SELECT * FROM Studenti;
SELECT studenteId, Nome, Cognome,Email,Genere FROM Studenti;
SELECT NOME,COGNOME,GENERE FROM STUDENTI;
selezionare all da - selezionare

PER ESEGUIRE SI PUò USARE ESEGUI O F5

--INSERIMENTO DEI DATI NELLA TABELLA STUDENTI
-- INSERT INTO PER DEFINIRE LE RIGHE
--> VALUES VALORI

INSERT INTO STUDENTI 
    (Nome,Cognome,Genere)
VALUES
    ('Melania','Todaro','f'),
    ('Giovanni','Chillemi','M'),
    ('Mario','Rossi','M');
    ();


    -- devo eseguire da insert into