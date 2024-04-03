
SELECT * 
FROM People

SELECT * 
FROM company

--1 
SELECT bookName, authorName 
FROM book
WHERE authorAge % bookAge = 0

--2
SELECT MAX(bookRaiting), MIN(bookRaiting) 
FROM book
WHERE authorName LIKE '%e'

--3
SELECT * 
FROM People
WHERE birthDate BETWEEN '2021-09-01' AND '2021-11-30'

--4
SELECT AVG(AGE) 
FROM animal
WHERE gender LIKE 'F'
AND city LIKE 'a%'

--5
SELECT MAX(authorAge) 
FROM book
WHERE authorName LIKE '%a%'
AND bookRaiting < 5


--6
SELECT NAME 
FROM People
WHERE birthDate BETWEEN '2015-01-01' AND '2015-12-31'

--7
SELECT * 
FROM People
WHERE birthDate BETWEEN '2021-09-01' AND '2021-11-30'
ORDER BY NAME


--8
SELECT AVG(bookRaiting) 
FROM book
WHERE authorAge > 75


--9
SELECT COUNT(*) 
FROM People
WHERE email LIKE '%.COM%'


--10
SELECT MAX(age)
from animal
Where gender LIKE '%F%'

--11
SELECT CompanyName
FROM Company
WHERE DATEDIFF(YEAR, directorAe, GETDATE()) > 20
AND DATEDIFF(YEAR, companyAge, GETDATE()) > 20
ORDER BY CompanyName ASC;


--12
SELECT TOP 5 *
FROM People
ORDER BY birthDate DESC;

--13
SELECT COUNT(*)
FROM Book
WHERE authorName LIKE '%L%L%';

--14
SELECT *
FROM Animal
WHERE Age IN (10, 20, 30, 40, 50);

--15
SELECT COUNT(*) AS MaleCount
FROM People
WHERE Gender = 'Male' AND YEAR(BirthDate) = YEAR(GETDATE());

--16
SELECT bookName, bookAge
FROM Book
WHERE bookAge BETWEEN 10 AND 15
ORDER BY bookAge;

--17
SELECT *
FROM People
WHERE Name LIKE 'S%' AND surname LIKE 'S%'
ORDER BY City;


--18
SELECT COUNT(*)
FROM Animal
WHERE Age % 4 = 3;

--19
SELECT SUM(AuthorAge) AS TotalAge
FROM Book
WHERE bookRaiting = 10 AND bookName LIKE '%о%';

--20
SELECT COUNT(*) AS CompanyCount
FROM Company
WHERE workersCount > 100 AND DomainName LIKE '%[0-9]%';

--variant 2
--1
SELECT CompanyName, DirectorName
FROM Company
WHERE DirectorName LIKE '%e' AND CompanyName LIKE 'd%';

--2
SELECT MAX(companyAge) AS MaxAge, MIN(companyAge) AS MinAge
FROM Company
WHERE DirectorName LIKE '%t%';

--3
SELECT *
FROM Animal
WHERE Age % 5 = 0;

--4
SELECT *
FROM Company
WHERE workersCount > directorAe * 80

--5
SELECT *
FROM Animal
WHERE Gender = 'Male' AND Age > 40;

--6
SELECT TOP 1 *
FROM Animal
WHERE Gender = 'Male' AND City LIKE '%е'
ORDER BY Age DESC;

--7
SELECT *
FROM Book
WHERE bookAge > 18
ORDER BY bookRaiting ASC;

--8
SELECT COUNT(*)
FROM Animal
WHERE Age > 45;

--9
SELECT AVG(Directorae) AS AverageDirectorAge
FROM Company
WHERE workersCount > 500;

--10
SELECT TOP 1 *
FROM Company
ORDER BY companyAge DESC;

--11
SELECT *
FROM People
WHERE Email LIKE '%.com'
ORDER BY Name ASC;

--12
SELECT *
FROM Company
WHERE domainName LIKE '%.edu'
ORDER BY companyAge ASC;

--13
SELECT TOP 2 *
FROM Animal
ORDER BY Age DESC;

--14
SELECT *
FROM People
WHERE MONTH(Birthdate) IN (12, 1, 2) AND YEAR(Birthdate) IN (2021, 2022);

--15
SELECT *
FROM Company
WHERE workersCount IN (100, 200, 300, 400, 500);

--16
SELECT surname
FROM People
WHERE Gender = 'F' AND surname LIKE '%T%T%';

--17
SELECT City
FROM animal
WHERE City LIKE '%-%';

SELECT City
FROM people
WHERE City LIKE '%-%';

--18
SELECT *
FROM Company
WHERE DirectorAe = ID;

--19
SELECT COUNT(*)
FROM People
WHERE Gender = 'Male' AND Email LIKE '%[0-9]%';

--20
SELECT COUNT(*)
FROM Animal
WHERE Name LIKE 'м%' OR City LIKE 'м%' OR Gender LIKE 'м%';


SELECT * 
FROM book

SELECT * 
FROM animal



create table People
(
	id int identity,
  	name nvarchar(100) not null,
  	surname nvarchar(100) not null,
  	email nvarchar(100) not null,
  	birthDate date not null,
  	city nvarchar(100) not null,
  	gender nvarchar(100) not null
)


insert into People (name, surname, email, birthDate, city, gender) values ('Simplifiés', 'Skeermor', 'nskeermor0@macromedia.com', '2020-02-12', 'Ngamba', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Anaïs', 'Dafforne', 'hdafforne1@nps.gov', '2021-01-06', 'Gumawang', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Börje', 'Castle', 'acastle2@miitbeian.gov.cn', '2017-05-01', 'Rende', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Bécassine', 'Heamus', 'mheamus3@phoca.cz', '2017-09-23', 'Ditsaan', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Görel', 'Tamas', 'atamas4@behance.net', '2019-04-02', 'Kisovec', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Mahélie', 'Duckerin', 'lduckerin5@webeden.co.uk', '2018-09-29', 'Ribeirão', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Sélène', 'Stienham', 'mstienham6@edublogs.org', '2021-05-07', 'Brie-Comte-Robert', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Réjane', 'Carmen', 'hcarmen7@myspace.com', '2021-08-21', 'Ngrejo', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Anaïs', 'Prattington', 'nprattington8@guardian.co.uk', '2017-05-20', 'Rantepang', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Bérengère', 'Rock', 'trock9@shinystat.com', '2018-06-29', 'Tomé', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Erwéi', 'Kingsbury', 'vkingsburya@icq.com', '2017-03-22', 'Kerrobert', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Marie-josée', 'Walling', 'ewallingb@cnet.com', '2016-01-16', 'Yanggu', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Thérèsa', 'Drinkeld', 'cdrinkeldc@hibu.com', '2019-10-30', 'Maliuzui', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Daphnée', 'Remmer', 'fremmerd@usa.gov', '2017-12-22', 'Nuamuzi', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Noëlla', 'Vallow', 'gvallowe@bing.com', '2021-05-06', 'Waihibar', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Edmée', 'Enderlein', 'oenderleinf@nps.gov', '2016-08-30', 'Riyom', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Irène', 'Ashwell', 'cashwellg@fc2.com', '2020-05-28', 'Saboyá', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Véronique', 'Locksley', 'elocksleyh@cornell.edu', '2018-07-03', 'Reforma', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Joséphine', 'Fitzpatrick', 'dfitzpatricki@dailymail.co.uk', '2017-07-05', 'Réo', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Stévina', 'Hambrick', 'ghambrickj@google.de', '2021-07-23', 'Pombal', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Mélissandre', 'Jarratt', 'hjarrattk@cargocollective.com', '2016-05-19', 'Buracan', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Salomé', 'Benini', 'hbeninil@ebay.co.uk', '2016-12-23', 'Cikajang', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Mélina', 'Pincott', 'apincottm@senate.gov', '2017-09-09', 'Cikalaces', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Desirée', 'Elcom', 'melcomn@shareasale.com', '2022-03-28', 'Katiola', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Publicité', 'Sebright', 'asebrighto@telegraph.co.uk', '2018-03-28', 'Catungawan Sur', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Régine', 'Cano', 'gcanop@usda.gov', '2020-11-16', 'Krajan Nglinggis', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Maëlle', 'Hammerman', 'lhammermanq@webnode.com', '2017-12-05', 'Hidalgo', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Kallisté', 'Press', 'fpressr@homestead.com', '2021-11-19', 'Hrazdan', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Anaé', 'Gasgarth', 'jgasgarths@ning.com', '2020-12-01', 'Bajera', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Pélagie', 'Bolley', 'kbolleyt@umn.edu', '2021-09-11', 'Xiyuan', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Torbjörn', 'Jeffrey', 'ljeffreyu@twitpic.com', '2020-10-25', 'Bilbays', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Mélanie', 'Ferraresi', 'kferraresiv@storify.com', '2019-06-08', 'Okocim', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Gaëlle', 'Bazoche', 'cbazochew@time.com', '2020-02-08', 'Xuancheng', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Torbjörn', 'Ditt', 'zdittx@discuz.net', '2019-09-25', 'Milagros', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Lóng', 'Spanton', 'cspantony@europa.eu', '2022-02-09', 'Bonavista', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Sélène', 'Sibbe', 'msibbez@blogger.com', '2016-06-06', 'Laocheng', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Görel', 'Cottesford', 'mcottesford10@ameblo.jp', '2021-07-26', 'Villa Ángela', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Jú', 'Kiendl', 'kkiendl11@artisteer.com', '2017-04-14', 'Ganpu', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Desirée', 'Defraine', 'mdefraine12@foxnews.com', '2015-12-27', 'New York City', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Eliès', 'Dunmore', 'edunmore13@themeforest.net', '2020-01-29', 'Linköping', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Daphnée', 'Goom', 'hgoom14@goo.gl', '2016-04-20', 'San Diego', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Andréa', 'Elcoat', 'velcoat15@storify.com', '2021-04-05', 'Sangalhos', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Cunégonde', 'Arrighetti', 'harrighetti16@constantcontact.com', '2017-05-15', 'Tanbuqiao', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Gaïa', 'Savaage', 'esavaage17@marketwatch.com', '2019-10-24', 'Honghualiangzi', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Angèle', 'Leftbridge', 'mleftbridge18@nature.com', '2021-11-09', 'Montpellier', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Régine', 'Oattes', 'yoattes19@google.com.au', '2018-01-29', 'Pancanagara', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Valérie', 'Solomon', 'msolomon1a@uiuc.edu', '2022-03-31', 'Nankou', 'F');
insert into People (name, surname, email, birthDate, city, gender) values ('Adèle', 'Wheble', 'awheble1b@unblog.fr', '2018-10-16', 'Karangnunggal', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Rachèle', 'Brown', 'kbrown1c@mashable.com', '2017-07-30', 'Baldone', 'M');
insert into People (name, surname, email, birthDate, city, gender) values ('Françoise', 'Persicke', 'apersicke1d@toplist.cz', '2019-11-27', 'San Isidro', 'M');





create table animal
(
	id int identity,
  	age int not null,
  	name nvarchar(100) not null,
  	city nvarchar(100) not null,
  	gender nvarchar(100) not null
)


insert into animal (age, name, city, gender) values (50, 'Crake, african black', 'Fale old settlement', 'F');
insert into animal (age, name, city, gender) values (23, 'Kiskadee, great', 'Três Pontas', 'F');
insert into animal (age, name, city, gender) values (22, 'Squirrel, african bush', 'Qorovulbozor Shahri', 'M');
insert into animal (age, name, city, gender) values (33, 'Asiatic jackal', 'Mansôa', 'M');
insert into animal (age, name, city, gender) values (4, 'Goose, andean', 'Séléa', 'M');
insert into animal (age, name, city, gender) values (38, 'Tasmanian devil', 'San Benito', 'M');
insert into animal (age, name, city, gender) values (50, 'Avocet, pied', 'Lubrza', 'M');
insert into animal (age, name, city, gender) values (36, 'Loris, slender', 'Xai-Xai', 'F');
insert into animal (age, name, city, gender) values (8, 'Crow, american', 'Sikur', 'M');
insert into animal (age, name, city, gender) values (5, 'Urial', 'Arrepiado', 'F');
insert into animal (age, name, city, gender) values (30, 'Drongo, fork-tailed', 'Kanbula', 'F');
insert into animal (age, name, city, gender) values (23, 'Mallard', 'Nevers', 'M');
insert into animal (age, name, city, gender) values (45, 'Huron', 'Khōshī', 'F');
insert into animal (age, name, city, gender) values (30, 'Hoopoe, eurasian', 'Moravský Krumlov', 'F');
insert into animal (age, name, city, gender) values (5, 'African wild cat', 'Ipoti', 'M');
insert into animal (age, name, city, gender) values (34, 'Huron', 'Paiçandu', 'M');
insert into animal (age, name, city, gender) values (22, 'Common palm civet', 'Jaboticabal', 'F');
insert into animal (age, name, city, gender) values (7, 'Clark''s nutcracker', 'Guojiaba', 'M');
insert into animal (age, name, city, gender) values (37, 'Serval', 'Carcassonne', 'M');
insert into animal (age, name, city, gender) values (16, 'Eurasian badger', 'Drosáto', 'M');
insert into animal (age, name, city, gender) values (33, 'Large cormorant', 'Metu', 'M');
insert into animal (age, name, city, gender) values (6, 'Brown hyena', 'Paôy Pêt', 'F');
insert into animal (age, name, city, gender) values (40, 'Langur, gray', 'Banjar Dharmasemedi', 'M');
insert into animal (age, name, city, gender) values (4, 'Rhea, gray', 'Chengxi', 'F');
insert into animal (age, name, city, gender) values (46, 'Brazilian tapir', 'Katyuzhanka', 'M');
insert into animal (age, name, city, gender) values (42, 'White-winged tern', 'Xinjiezi', 'M');
insert into animal (age, name, city, gender) values (23, 'Brindled gnu', 'Lame', 'M');
insert into animal (age, name, city, gender) values (45, 'Snake, buttermilk', 'Sukorejo', 'M');
insert into animal (age, name, city, gender) values (48, 'Southern sea lion', 'Campo Largo', 'M');
insert into animal (age, name, city, gender) values (36, 'Anteater, giant', 'Ocala', 'F');
insert into animal (age, name, city, gender) values (6, 'Langur, hanuman', 'Nanjing', 'F');
insert into animal (age, name, city, gender) values (21, 'Oriental short-clawed otter', 'Wanshi', 'M');
insert into animal (age, name, city, gender) values (26, 'Peccary, collared', 'Cibogo', 'F');
insert into animal (age, name, city, gender) values (24, 'Cougar', 'Slavgorod', 'F');
insert into animal (age, name, city, gender) values (34, 'Kiskadee, great', 'Ndungu', 'F');
insert into animal (age, name, city, gender) values (24, 'Ferret, black-footed', 'Buyant', 'F');
insert into animal (age, name, city, gender) values (11, 'Helmeted guinea fowl', 'Sucre', 'F');
insert into animal (age, name, city, gender) values (43, 'Caiman, spectacled', 'Huangling', 'M');
insert into animal (age, name, city, gender) values (11, 'Black-capped capuchin', 'Gal’bshtadt', 'F');
insert into animal (age, name, city, gender) values (34, 'American marten', 'Guayatá', 'M');
insert into animal (age, name, city, gender) values (36, 'Crane, wattled', 'Tres Arroyos', 'F');
insert into animal (age, name, city, gender) values (32, 'Black and white colobus', 'Xuanma', 'M');
insert into animal (age, name, city, gender) values (23, 'Monkey, rhesus', 'Tiel', 'M');
insert into animal (age, name, city, gender) values (14, 'Jungle kangaroo', 'Xinsheng', 'M');
insert into animal (age, name, city, gender) values (33, 'Squirrel, eastern fox', 'Waerana', 'F');
insert into animal (age, name, city, gender) values (41, 'Blue-tongued lizard', 'Lab', 'M');
insert into animal (age, name, city, gender) values (19, 'Burrowing owl', 'Banjar Laing', 'F');
insert into animal (age, name, city, gender) values (50, 'Vulture, white-headed', 'Bang Sai', 'M');
insert into animal (age, name, city, gender) values (42, 'Indian star tortoise', 'Loakulu', 'M');
insert into animal (age, name, city, gender) values (13, 'Cape fox', 'Kefar Shemaryahu', 'F');








create table company
(
	id int identity,
  	companyName nvarchar(100) not null,
  	domainName nvarchar(100) not null,
  	appName nvarchar(100) not null,
  	directorName nvarchar(100) not null,
  	companyAge int not null,
  	directorAe Int not null,
  	workersCount int not null
)

insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Batz, Lueilwitz and Smith', 'java.com', 'Zathin', 'Shae', 9, 21, 509);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Swaniawski LLC', 't.co', 'Bitchip', 'Skippie', 20, 27, 155);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Pfeffer, King and Douglas', 'ebay.co.uk', 'Voltsillam', 'Delmor', 21, 30, 626);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Moen-Ebert', 'columbia.edu', 'Bytecard', 'Luis', 1, 29, 308);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Tillman, Gerlach and Sawayn', 'wisc.edu', 'Zathin', 'Wood', 20, 26, 188);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Huel LLC', 'scribd.com', 'Domainer', 'Tomasina', 4, 9, 847);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Ferry, Padberg and Kiehn', 'stumbleupon.com', 'Kanlam', 'Gregoire', 9, 8, 312);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Russel Inc', 'dropbox.com', 'Bigtax', 'Daisie', 25, 21, 468);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Bosco-Macejkovic', 'cisco.com', 'Home Ing', 'Boone', 3, 9, 363);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Grimes, Bashirian and Koch', 'buzzfeed.com', 'Lotstring', 'Glynis', 10, 10, 244);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Mueller LLC', 'domainmarket.com', 'Redhold', 'Zoe', 28, 16, 946);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Daugherty, Wisoky and Toy', 'bbb.org', 'Quo Lux', 'Fredek', 11, 24, 948);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Larson-Abbott', 'harvard.edu', 'Stronghold', 'Jarad', 18, 20, 262);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Padberg-Williamson', 'tumblr.com', 'Cardguard', 'Anselma', 20, 25, 540);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Greenfelder Inc', 'jigsy.com', 'Mat Lam Tam', 'Godiva', 28, 14, 667);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Dach, Altenwerth and Mante', 'tinypic.com', 'Duobam', 'Sydney', 29, 27, 443);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Deckow-Koss', 'nature.com', 'Mat Lam Tam', 'Dode', 12, 21, 540);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Feeney, Will and Boyer', 'seattletimes.com', 'Quo Lux', 'Abbi', 21, 30, 116);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Jakubowski-Wisoky', 'myspace.com', 'Zamit', 'Rosemarie', 3, 30, 758);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Wintheiser-Volkman', 'accuweather.com', 'Home Ing', 'Courtney', 29, 12, 853);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Schiller, Wilderman and Kuphal', 'canalblog.com', 'Fixflex', 'Wittie', 10, 12, 452);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Braun-Thompson', 'wikimedia.org', 'Aerified', 'Obidiah', 7, 9, 431);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Padberg LLC', 'abc.net.au', 'Biodex', 'Elna', 5, 26, 403);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Monahan-Kerluke', 'princeton.edu', 'Transcof', 'Dorice', 5, 19, 911);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Lesch-Osinski', 'buzzfeed.com', 'Keylex', 'Herrick', 26, 16, 570);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Johnston and Sons', 'mozilla.com', 'Overhold', 'Hunt', 4, 19, 797);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Bode LLC', 'marriott.com', 'Span', 'Steffie', 17, 24, 877);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Aufderhar-Jast', 'cafepress.com', 'Zaam-Dox', 'Nerty', 25, 11, 411);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Murphy LLC', 'zimbio.com', 'Treeflex', 'Andrus', 29, 23, 434);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Ondricka Inc', 'slashdot.org', 'Biodex', 'Alberta', 9, 22, 246);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Shanahan-Bergnaum', '360.cn', 'Bytecard', 'Ludovico', 21, 24, 156);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Hermann, Cronin and Watsica', 'fda.gov', 'Zoolab', 'Nico', 19, 11, 375);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Ankunding, Toy and Bartoletti', 'goo.gl', 'Zamit', 'Patty', 17, 30, 717);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Halvorson-Dibbert', 'businessweek.com', 'Sonsing', 'Vinnie', 29, 9, 431);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Roberts-Emard', 'yahoo.com', 'Wrapsafe', 'Romola', 6, 12, 657);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Padberg-Langworth', 'indiatimes.com', 'Sonair', 'Wendeline', 12, 22, 124);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Reichel-VonRueden', 'cornell.edu', 'Hatity', 'Niven', 28, 29, 770);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Huels, Kirlin and Kemmer', 'fda.gov', 'Fix San', 'Fifine', 18, 11, 354);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Kshlerin-Dare', 'wired.com', 'Solarbreeze', 'Hewe', 27, 20, 287);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Greenfelder-Grady', 'techcrunch.com', 'Quo Lux', 'Isabelle', 16, 23, 519);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Konopelski Inc', 'cloudflare.com', 'Pannier', 'Emlynne', 4, 26, 973);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Bailey Inc', 'rakuten.co.jp', 'Flexidy', 'Raina', 21, 15, 569);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Mertz Group', 'webs.com', 'Toughjoyfax', 'Dorian', 7, 15, 556);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Gerhold, Bernhard and Stanton', 'altervista.org', 'Biodex', 'Dode', 27, 21, 761);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Altenwerth-Bailey', 'whitehouse.gov', 'Fixflex', 'Iago', 16, 8, 500);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('McDermott Group', 'alibaba.com', 'Tempsoft', 'Sander', 21, 14, 960);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Wyman and Sons', 'usatoday.com', 'Y-find', 'Amelia', 1, 18, 207);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Koch Inc', 'discovery.com', 'Opela', 'Marni', 6, 10, 146);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Russel, O''Conner and Dickens', 'surveymonkey.com', 'Aerified', 'Karoly', 17, 28, 559);
insert into company (companyName, domainName, appName, directorName, companyAge, directorAe, workersCount) values ('Okuneva, Pouros and Satterfield', 'printfriendly.com', 'Wrapsafe', 'Derwin', 2, 9, 234);








create table book
(
	id int identity,
  	bookName nvarchar(100) not null,
  	authorName nvarchar(100) not null,
  	authorAge int not null,
  	bookAge int not null,
  	bookRaiting int not null
)

insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Sharpscale Sedge', 'Veradis Lisciardelli', 83, 15, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Lake Ella Hawthorn', 'Giulio Borgnol', 77, 11, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Spider Plant', 'Dorri Sanper', 49, 16, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Colonial Bentgrass', 'Reagen Killeley', 71, 1, 3);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Nodding Locoweed', 'Mabelle Ben', 49, 8, 4);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Freckled Milkvetch', 'Sadie Vasquez', 41, 16, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Longflower Beeblossom', 'Celestine Matthesius', 53, 16, 4);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Spiralgrass', 'Catharine Pettiward', 65, 6, 5);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Schistidium Moss', 'Rockie Paladini', 42, 8, 8);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Croomia', 'Nonah Suatt', 79, 6, 4);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Japanese Flowering Cherry', 'Jacquette Angrove', 35, 6, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Wahiawa Bog Dubautia', 'Darcy Pittway', 56, 20, 2);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Bigleaf Lupine', 'Syman Millhill', 52, 16, 10);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Mountain-avens', 'Torrance Trevithick', 42, 17, 8);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Gray''s Bedstraw', 'Lorettalorna Mattack', 83, 4, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Butterfly Orchid', 'Fritz Amesbury', 83, 16, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Royen''s Tree Cactus', 'Corry Licari', 62, 11, 2);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Ochroma', 'Maddy Haggish', 44, 11, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Barrett''s Beardtongue', 'Yves Romanet', 54, 19, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Spiked Crested Coralroot', 'Yorker Ewebank', 51, 1, 1);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Cojite Blanco', 'Merrilee Frenzl', 48, 1, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Grant''s Sedge', 'Rollins McNirlin', 74, 2, 6);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Tumamoc Globeberry', 'Ray Stephens', 71, 4, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Beach Seepweed', 'Clint Keary', 41, 2, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Scentless Bayberry', 'Liv Stoggles', 82, 19, 8);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Dunegrass', 'Jeffrey Iacovuzzi', 45, 16, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Fayodia Lichen', 'Woodrow Burdett', 43, 20, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Oriental Wheat', 'Oswald Meachen', 69, 6, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Eastern Poison Ivy', 'Caroljean Walne', 84, 12, 4);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Navajo Cinquefoil', 'Bay Fontelles', 81, 3, 2);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Largeleaf Blackberry', 'Ricky Jablonski', 38, 6, 2);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Sampson''s Snakeroot', 'Gilli Beaford', 47, 17, 4);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Western Rosinweed', 'Montague Tows', 44, 15, 2);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Fescue Ryegrass', 'Alain Rewan', 73, 6, 9);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Rim Lichen', 'Christyna Awcock', 64, 20, 5);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Dwarf Checkerbloom', 'Maryanna Balling', 75, 5, 8);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Willowherb', 'Kizzee Lillecrop', 78, 18, 8);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Rim Lichen', 'Lorri Kick', 31, 17, 6);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Spoonshape Barbara''s Buttons', 'Wilfrid O''Fallon', 41, 12, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Pennsylvania Blackberry', 'Farrell Ritzman', 54, 16, 8);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Tasselflower', 'Ramon Adamson', 47, 15, 6);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Bitter Cherry', 'Chauncey Stembridge', 44, 11, 6);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Sunset Crater Beardtongue', 'Antonietta Winsbury', 33, 16, 3);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Tree Cotton', 'Carlie Baike', 51, 20, 10);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Sedge', 'Tuck Leaton', 72, 7, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Sinkwa Towelsponge', 'Ester Wakes', 64, 17, 7);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Clauzadeana', 'Antony Keywood', 77, 13, 8);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Sierra Blazingstar', 'Avivah Kinnear', 75, 4, 1);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Branching Phacelia', 'Marlin Eagle', 84, 17, 5);
insert into book (bookName, authorName, authorAge, bookAge, bookRaiting) values ('Wart Lichen', 'Ricky Nehls', 68, 12, 9);


































