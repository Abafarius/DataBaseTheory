CREATE LOGIN Galymzhan WITH PASSWORD = 'Password1910'


CREATE TABLE FAMILYMEMBERS(
	ID INT IDENTITY PRIMARY KEY,
	[STATUS] NVARCHAR(200),
	MEMBERNAME NVARCHAR(100),
	BDAY DATETIME
)

insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('PAPPA', 'Denny Epsley', '1987-09-21');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('SISTER', 'Hallie Ryton', '2007-05-25');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('SISTER', 'Costanza Pringley', '1997-05-13');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('PAPPA', 'Rossy Risson', '1984-03-29');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('PAPPA', 'Nikola Hechlin', '1985-08-23');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('SISTER', 'Clari Osmant', '2011-08-05');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('MOTHER', 'Genny Cumpton', '1985-05-24');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('BROTHER', 'Caryl MacDaid', '2007-06-26');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('BROTHER', 'Pavla Glasspool', '1991-04-23');
insert into FAMILYMEMBERS (STATUS, MEMBERNAME, BDAY) values ('MOTHER', 'Kirstin Bottby', '1998-08-06');

SELECT *
FROM FAMILYMEMBERS



CREATE TABLE GOODTYPES(
	ID INT IDENTITY PRIMARY KEY,
	GOODTYPENAME NVARCHAR(100)
)

insert into GOODTYPES (GOODTYPENAME) values ('Broom - Angled');
insert into GOODTYPES (GOODTYPENAME) values ('Puree - Strawberry');
insert into GOODTYPES (GOODTYPENAME) values ('Coffee - Espresso');
insert into GOODTYPES (GOODTYPENAME) values ('Ice Cream Bar - Hagen Daz');
insert into GOODTYPES (GOODTYPENAME) values ('Cheese - Feta');
insert into GOODTYPES (GOODTYPENAME) values ('Yogurt - Peach, 175 Gr');
insert into GOODTYPES (GOODTYPENAME) values ('Olive - Spread Tapenade');
insert into GOODTYPES (GOODTYPENAME) values ('Triple Sec - Mcguinness');
insert into GOODTYPES (GOODTYPENAME) values ('Mace');
insert into GOODTYPES (GOODTYPENAME) values ('Sauce - Soya, Dark');

CREATE TABLE GOODS(
	ID INT IDENTITY PRIMARY KEY,
	GOOODNAME NVARCHAR(100),
	TYPEID INT REFERENCES GOODTYPES(ID)
)
insert into GOODS (GOOODNAME, TYPEID) values ('Chocolate Liqueur - Godet White', 4);
insert into GOODS (GOOODNAME, TYPEID) values ('Juice - Apple, 341 Ml', 9);
insert into GOODS (GOOODNAME, TYPEID) values ('Dooleys Toffee', 1);
insert into GOODS (GOOODNAME, TYPEID) values ('Glass - Wine, Plastic, Clear 5 Oz', 10);
insert into GOODS (GOOODNAME, TYPEID) values ('Cheese - Roquefort Pappillon', 2);
insert into GOODS (GOOODNAME, TYPEID) values ('Corn Shoots', 10);
insert into GOODS (GOOODNAME, TYPEID) values ('Wine - Red, Gallo, Merlot', 5);
insert into GOODS (GOOODNAME, TYPEID) values ('Tart Shells - Barquettes, Savory', 7);
insert into GOODS (GOOODNAME, TYPEID) values ('Jolt Cola - Electric Blue', 10);
insert into GOODS (GOOODNAME, TYPEID) values ('Artichokes - Knobless, White', 7);

CREATE TABLE PAYMENTS(
	ID INT IDENTITY PRIMARY KEY,
	FAMILYMEMBERID INT REFERENCES FAMILYMEMBERS(ID),
	GOODID INT REFERENCES GOODS(ID),
	AMOUNT INT,
	[DATE] DATETIME
)

insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (7, 4, 6, '2023-07-07');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (2, 1, 4, '2025-01-07');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (8, 6, 3, '2024-06-02');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (2, 4, 5, '2024-03-05');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (9, 2, 5, '2024-08-03');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (2, 10, 5, '2024-01-09');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (5, 4, 4, '2023-07-03');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (3, 9, 10, '2025-01-08');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (10, 1, 7, '2024-10-28');
insert into PAYMENTS (FAMILYMEMBERID, GOODID, AMOUNT, DATE) values (8, 1, 2, '2024-09-07');

SELECT *
FROM PAYMENTS AS PY JOIN FAMILYMEMBERS AS FM
ON PY.FAMILYMEMBERID = FM.ID
JOIN GOODS AS G 
ON G.ID = PY.GOODID
JOIN GOODTYPES AS GT
ON GT.ID = G.TYPEID


CREATE TRIGGER RESTRICTADD ON PAYMENTS INSTEAD OF INSERT AS
DECLARE @ABC INT = (SELECT ID FROM inserted)
IF @ABC = 7 OR @ABC = 8
	SELECT 'NOT ALLOWED!'
ELSE 
	BEGIN
		INSERT INTO PAYMENTS
		SELECT FAMILYMEMBERID, GOODID, AMOUNT, [DATE]
		FROM inserted 
	END

