CREATE TABLE STUDENT (
id INT IDENTITY PRIMARY KEY,
FIO NVARCHAR(100),
ADDRESS NVARCHAR(100),
SCHOLARSHIP FLOAT
)

INSERT INTO STUDENT
VALUES ('Iman', 'Abay', 505.5)
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Reid Lantoph', '0346 Boyd Trail', 7195.1);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Quincy Dimmne', '5202 Sunbrook Alley', 1151.8);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Alia Renneke', '6066 Gateway Lane', 8079.7);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Tomas Boakes', '7 High Crossing Junction', 7759.1);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Hatti Rosenberg', '6 Cascade Trail', 8788.4);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Brendon Szimoni', '799 Everett Plaza', 4530.0);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Rogerio Quartley', '0 Scoville Avenue', 9830.8);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Diego Allred', '71661 Bayside Hill', 8942.3);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Selena Sheriff', '7 Troy Avenue', 7267.1);
insert into STUDENT (FIO, ADDRESS, SCHOLARSHIP) values ('Lynde Hellard', '91 Gulseth Terrace', 3052.2);

SELECT *
FROM STUDENT

---- ÅÑËÈ ÏÐÈ ÄÎÁÀÂËÅÍÈÈ ÍÎÂÎÃÎ ÑÒÓÄÅÍÒÀ 
---- ÒÀÊÎÉ ÓÆÅ ÅÑÒÜ ÒÎ ÄÎÁÀÂËßÒÜ ÅÌÓ ÏÎÐßÄÊÎÂÛÉ ÍÎÌÅÐ Â ÊÎÍÖÅ ÔÀÌÈËÈÈ

ALTER TRIGGER task1
ON STUDENT
AFTER INSERT 
AS 
DECLARE @C INT = (SELECT COUNT(*) FROM STUDENT WHERE FIO LIKE (SELECT FIO FROM inserted))
IF (@C > 1)
BEGIN 
	UPDATE STUDENT
	SET FIO = FIO + CONVERT(NVARCHAR(10), @C)
	WHERE id = (SELECT id FROM inserted)
END



--ÇÀÏÐÅÒÈÌ ÓÄÀËÅÍÈÅ ÑÒÓÄÅÍÒÎÂ
CREATE TRIGGER TASK2
ON STUDENT
INSTEAD OF DELETE
AS 
SELECT 'ERROR. NELZYA UDALIT FIO'
FROM deleted

DELETE FROM STUDENT 
WHERE id = 1
--*******************************************************

CREATE TABLE GROUPS(
	id INT IDENTITY PRIMARY KEY,
	GNAME NVARCHAR(100)
)

insert into GROUPS (GNAME) values ('Orange');
insert into GROUPS (GNAME) values ('Aquamarine');
insert into GROUPS (GNAME) values ('Khaki');
insert into GROUPS (GNAME) values ('Maroon');
insert into GROUPS (GNAME) values ('Crimson');
insert into GROUPS (GNAME) values ('Mauv');
insert into GROUPS (GNAME) values ('Pink');
insert into GROUPS (GNAME) values ('Indigo');
insert into GROUPS (GNAME) values ('Orange');
insert into GROUPS (GNAME) values ('Violet');


CREATE TABLE GROUPS_STUDENT(
	id INT IDENTITY PRIMARY KEY,
	STUDENTId INT FOREIGN KEY REFERENCES STUDENT(id),
	GROUPSId INT FOREIGN KEY REFERENCES GROUPS(id)
)


insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (12, 6);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (10, 2);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (13, 6);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (8, 6);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (7, 10);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (9, 1);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (9, 6);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (7, 2);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (11, 10);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (6, 5);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (7, 6);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (8, 4);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (12, 9);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (3, 3);
insert into GROUPS_STUDENT (STUDENTId, GROUPSId) values (6, 3);


SELECT *
FROM STUDENT AS S JOIN GROUPS_STUDENT AS GS
ON GS.STUDENTId = S.id JOIN GROUPS AS G
ON G.id = GS.GROUPSId


-- ÑÎÇÄÀÒÜ VIEW, ÊÎÒÎÐÎÅ Ñ×ÈÒÀÅÒ ÊÎË-ÂÎ ÑÒÓÄÅÍÒÎÂ Â ÊÀÆÄÎÉ ÃÐÓÏÏÅ
CREATE VIEW TASK3 AS 
SELECT COUNT(*) AS 'COUNT', G.GNAME
FROM STUDENT AS S JOIN GROUPS_STUDENT AS GS
ON GS.STUDENTId = S.id JOIN GROUPS AS G
ON G.id = GS.GROUPSId
GROUP BY G.GNAME

SELECT AVG(COUNT)
FROM TASK3

--ÑÎÇÄÀÒÜ ÒÐÈÃÃÅÐ, ÊÎÒÎÐÛÉ ÍÀÕÎÄÈÒ AVG ÑÒÓÄÅÍÒÎÂ ÂÎ ÂÑÅÕ ÃÐÓÏÏÀÕ
-- È ÍÅ ÄÎÁÀÂËßÅÒ ÍÎÂÎÃÎ ÑÒÓÄÅÍÒÀ Â ÃÐÓÏÏÓ, ÅÑËÈ ÊÎËÈ×ÅÑÒÂÎ ÏÐÅÂÛØÀÅÒ AVG 

ALTER TRIGGER TASK4
ON GROUPS_STUDENT
INSTEAD OF INSERT
AS 
DECLARE @AVG INT = (SELECT AVG(COUNT) FROM TASK3)
DECLARE @CURGR INT = (SELECT GROUPSId FROM inserted)
DECLARE @CURCOUNT INT = (SELECT COUNT(*) FROM GROUPS_STUDENT WHERE GROUPSId = @CURGR)
IF (@AVG > @CURCOUNT)
BEGIN
	INSERT INTO GROUPS_STUDENT (STUDENTId, GROUPSId)
	SELECT STUDENTId, GROUPSId
	FROM inserted
END



INSERT INTO GROUPS_STUDENT
VALUES(5, 5)

SELECT *
FROM GROUPS_STUDENT



