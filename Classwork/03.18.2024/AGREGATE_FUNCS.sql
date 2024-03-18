CREATE TABLE person (
	id INT IDENTITY PRIMARY KEY,
	fio NVARCHAR(100) NOT NULL UNIQUE
)

ALTER TABLE person
ADD age INT DEFAULT 18

CREATE TABLE animal(
	id INT IDENTITY PRIMARY KEY,
	nick NVARCHAR(100) NOT NULL UNIQUE,
	personId INT FOREIGN KEY REFERENCES person (id)
)





SELECT *
FROM person

SELECT MAX(age) AS 'max', MIN AS 'min', AVG(age) AS 'average', SUM(age) AS 'age'
FROM person

UPDATE person
SET age = 22
WHERE id % 2 = 0

UPDATE person
SET age = 2
WHERE id % 2 = 1

--insert into person (fio) values ('Gilburt Shrimpling');
--insert into person (fio) values ('Emmanuel McConachie');
--insert into person (fio) values ('Kathy Isaacson');
--insert into person (fio) values ('Richard Ivantsov');
--insert into person (fio) values ('Elnore Furness');
--insert into person (fio) values ('Roselin Lightowler');
--insert into person (fio) values ('Karry Wellfare');
--insert into person (fio) values ('Ross Sugar');
--insert into person (fio) values ('Marlyn Shorthill');
--insert into person (fio) values ('Claudius Vernall');
--insert into person (fio) values ('Gav Bercher');
--insert into person (fio) values ('Rudy Flacke');
--insert into person (fio) values ('Whit Humfrey');
--insert into person (fio) values ('Carver Pepperd');
--insert into person (fio) values ('Dela Ovid');
--insert into person (fio) values ('Alasdair Pagden');
--insert into person (fio) values ('Leona Stracey');
--insert into person (fio) values ('Belle Diwell');
--insert into person (fio) values ('Robbie Abthorpe');
--insert into person (fio) values ('Gaby Pringer');



SELECT *
FROM animal

insert into animal (nick, personId) values ('Otter, cape clawless', 9);
insert into animal (nick, personId) values ('Arctic hare', 20);
insert into animal (nick, personId) values ('Asian openbill', 15);
insert into animal (nick, personId) values ('Vulture, white-headed', 14);
insert into animal (nick, personId) values ('Klipspringer', 2);
insert into animal (nick, personId) values ('Otter, giant', 12);
insert into animal (nick, personId) values ('Owl, burrowing', 18);
insert into animal (nick, personId) values ('Red kangaroo', 16);
insert into animal (nick, personId) values ('Asian false vampire bat', 1);
insert into animal (nick, personId) values ('Ring-necked pheasant', 17);
insert into animal (nick, personId) values ('Oriental white-backed vulture', 20);
insert into animal (nick, personId) values ('Yellow-brown sungazer', 4);
insert into animal (nick, personId) values ('Roe deer', 8);
insert into animal (nick, personId) values ('Cook''s tree boa', 19);
insert into animal (nick, personId) values ('Coqui partridge', 4);
insert into animal (nick, personId) values ('Flamingo, greater', 9);
insert into animal (nick, personId) values ('Reindeer', 7);
insert into animal (nick, personId) values ('Red brocket', 1);
insert into animal (nick, personId) values ('Nighthawk, common', 20);
insert into animal (nick, personId) values ('Brown antechinus', 11);
insert into animal (nick, personId) values ('Gecko, bent-toed', 9);
insert into animal (nick, personId) values ('African clawless otter', 10);
insert into animal (nick, personId) values ('Elephant, asian', 7);
insert into animal (nick, personId) values ('Canadian river otter', 10);
insert into animal (nick, personId) values ('Corella, long-billed', 15);
insert into animal (nick, personId) values ('Deer, black-tailed', 9);
insert into animal (nick, personId) values ('African buffalo', 16);
insert into animal (nick, personId) values ('Fox, silver-backed', 13);
insert into animal (nick, personId) values ('Golden brush-tailed possum', 12);
insert into animal (nick, personId) values ('Cormorant (unidentified)', 13);
insert into animal (nick, personId) values ('Gonolek, burchell''s', 1);
insert into animal (nick, personId) values ('Bulbul, african red-eyed', 19);
insert into animal (nick, personId) values ('Small-clawed otter', 1);
insert into animal (nick, personId) values ('Booby, masked', 17);
insert into animal (nick, personId) values ('Desert spiny lizard', 10);
insert into animal (nick, personId) values ('Silver gull', 15);
insert into animal (nick, personId) values ('Asian lion', 15);
insert into animal (nick, personId) values ('Dog, black-tailed prairie', 14);
insert into animal (nick, personId) values ('Rose-ringed parakeet', 18);
insert into animal (nick, personId) values ('Dove, white-winged', 6);
insert into animal (nick, personId) values ('Rabbit, eastern cottontail', 14);
insert into animal (nick, personId) values ('Canadian river otter', 18);
insert into animal (nick, personId) values ('Cattle egret', 9);
insert into animal (nick, personId) values ('Galapagos dove', 18);
insert into animal (nick, personId) values ('Sungazer, yellow-brown', 12);
insert into animal (nick, personId) values ('Galapagos dove', 17);
insert into animal (nick, personId) values ('Paddy heron (unidentified)', 16);
insert into animal (nick, personId) values ('Lizard, mexican beaded', 14);
insert into animal (nick, personId) values ('Thirteen-lined squirrel', 8);
insert into animal (nick, personId) values ('Beaver, eurasian', 9);
insert into animal (nick, personId) values ('Red-legged pademelon', 9);
insert into animal (nick, personId) values ('Margay', 9);
insert into animal (nick, personId) values ('Echidna, short-beaked', 19);
insert into animal (nick, personId) values ('Egyptian vulture', 17);
insert into animal (nick, personId) values ('Trumpeter, green-winged', 19);
insert into animal (nick, personId) values ('Arctic fox', 17);
insert into animal (nick, personId) values ('Laughing dove', 10);
insert into animal (nick, personId) values ('Gray rhea', 2);
insert into animal (nick, personId) values ('Common rhea', 7);
insert into animal (nick, personId) values ('Python, carpet', 4);
insert into animal (nick, personId) values ('Silver-backed fox', 12);
insert into animal (nick, personId) values ('Green-winged macaw', 7);
insert into animal (nick, personId) values ('Mountain goat', 1);
insert into animal (nick, personId) values ('Owl, burrowing', 4);
insert into animal (nick, personId) values ('Serval', 7);
insert into animal (nick, personId) values ('Margay', 20);
insert into animal (nick, personId) values ('Squirrel glider', 4);
insert into animal (nick, personId) values ('Deer, mule', 10);
insert into animal (nick, personId) values ('Crimson-breasted shrike', 3);
insert into animal (nick, personId) values ('Indian mynah', 1);
insert into animal (nick, personId) values ('Australian magpie', 15);
insert into animal (nick, personId) values ('Red-breasted nuthatch', 1);
insert into animal (nick, personId) values ('Squirrel, golden-mantled ground', 10);
insert into animal (nick, personId) values ('Black-throated cardinal', 6);
insert into animal (nick, personId) values ('Agama lizard (unidentified)', 14);
insert into animal (nick, personId) values ('Trumpeter, dark-winged', 4);
insert into animal (nick, personId) values ('Ring-tailed lemur', 20);
insert into animal (nick, personId) values ('Greater rhea', 8);
insert into animal (nick, personId) values ('Red-billed hornbill', 13);
insert into animal (nick, personId) values ('Pheasant, common', 4);
insert into animal (nick, personId) values ('Flicker, campo', 15);
insert into animal (nick, personId) values ('Red-capped cardinal', 14);
insert into animal (nick, personId) values ('Kite, black', 4);
insert into animal (nick, personId) values ('Mudskipper (unidentified)', 4);
insert into animal (nick, personId) values ('Spotted-tailed quoll', 16);
insert into animal (nick, personId) values ('Duiker, gray', 12);
insert into animal (nick, personId) values ('Common zorro', 11);
insert into animal (nick, personId) values ('South African hedgehog', 18);
insert into animal (nick, personId) values ('Mouse, four-striped grass', 1);
insert into animal (nick, personId) values ('Grouse, greater sage', 18);
insert into animal (nick, personId) values ('Columbian rainbow boa', 15);
insert into animal (nick, personId) values ('Waxbill, violet-eared', 2);
insert into animal (nick, personId) values ('Ferret, black-footed', 18);
insert into animal (nick, personId) values ('Steller''s sea lion', 16);
insert into animal (nick, personId) values ('White-necked raven', 15);
insert into animal (nick, personId) values ('Caiman, spectacled', 17);
insert into animal (nick, personId) values ('Black-tailed prairie dog', 10);
insert into animal (nick, personId) values ('Timber wolf', 2);
insert into animal (nick, personId) values ('Echidna, short-beaked', 2);
insert into animal (nick, personId) values ('Bunting, crested', 4);


SELECT nick, fio
FROM animal JOIN person 
ON animal.personId = person.id
WHERE person.id = 7

--¿√–≈√¿“Õ€≈ ‘”Õ ÷»» MAX, MIN, COUNT, AVG, SUM
SELECT COUNT(*) AS 'count', person.fio
FROM animal JOIN person
ON animal.personId = person.id
GROUP BY person.fio