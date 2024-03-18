CREATE TABLE carCOMPANY(
	id INT IDENTITY PRIMARY KEY,
	companyNAME NVARCHAR(100) NOT NULL
)

CREATE TABLE car(
	id INT IDENTITY PRIMARY KEY,
	MARKA NVARCHAR(100),
	[YEAR] INT, 
	volume FLOAT,
	SEATS INT,
	companyID INT REFERENCES carCOMPANY(id)
)



insert into carCOMPANY (companyNAME) values ('Cadillac');
insert into carCOMPANY (companyNAME) values ('Lincoln');
insert into carCOMPANY (companyNAME) values ('Honda');
insert into carCOMPANY (companyNAME) values ('BMW');
insert into carCOMPANY (companyNAME) values ('Land Rover');



insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Fusion', 2007, 5.4, 28, 1);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Century', 2005, 1.71, 78, 2);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Park Avenue', 1991, 2.3, 9, 1);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('LS', 2005, 5.63, 27, 1);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Equus', 2013, 5.01, 73, 3);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Elantra', 1999, 5.68, 28, 5);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Eldorado', 1994, 1.66, 30, 5);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Vibe', 2003, 1.78, 48, 5);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Thunderbird', 1987, 2.68, 45, 1);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Talon', 1996, 5.93, 11, 5);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('RX-7', 1984, 3.98, 6, 5);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Protege', 1994, 2.27, 78, 2);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Quattroporte', 2007, 2.98, 56, 5);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('Cabriolet', 1995, 4.73, 64, 5);
insert into car (MARKA, YEAR, VOLUME, SEATS, companyID) values ('F350', 1996, 4.65, 24, 1);


SELECT *
FROM car