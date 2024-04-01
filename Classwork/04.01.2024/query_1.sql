          



create table Groups (
  	id int identity primary key,
	GroupName VARCHAR(50)
);               
               
          
insert into Groups (GroupName) values ('SEP-172.2');
insert into Groups (GroupName) values ('SAT-172.2');
insert into Groups (GroupName) values ('SEP-211.1');
insert into Groups (GroupName) values ('SEP-182.1');
insert into Groups (GroupName) values ('SAT-172.1');
insert into Groups (GroupName) values ('SEP-191.2');
insert into Groups (GroupName) values ('SAT-211.2');
insert into Groups (GroupName) values ('SEN-182.1');
insert into Groups (GroupName) values ('SAT-192.1');


         
create table Students (
  	id int identity primary key,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(50),
	BirthDate DATE,
  	GroupID int FOREIGN key references Groups(id),
	Grants int default 1500
);


  
insert into Students   values ('Ky', 'Coling', 'kcoling0@prnewswire.com', '2021-09-02 ', 9, 2000)
insert into Students   values ('Rodrigo', 'Chevolleau', 'rchevolleau1@patch.com', '2022-01-16 ', 1, 4000)
insert into Students   values ('Ethelyn', 'Merle', 'emerle2@macromedia.com', '2021-06-30 ', 3, 5000)
insert into Students   values ('Zacharias', 'Vobes', 'zvobes3@wufoo.com', '2021-11-12 ', 1, 2000)
insert into Students   values ('Johannes', 'Selway', 'jselway4@scientificamerican.com', '2021-11-01 ', 9, 5000)
insert into Students   values ('Franklin', 'Brisley', 'fbrisley5@home.pl', '2021-12-12 ', 2, 10000)
insert into Students   values ('Twyla', 'Hurworth', 'thurworth6@mashable.com', '2022-02-10 ', 4, 3000)
insert into Students   values ('Maryanna', 'Garstan', 'mgarstan7@census.gov', '2021-08-09 ', 2, 3000)
insert into Students   values ('Shandeigh', 'Volette', 'svolette8@fotki.com', '2021-12-31 ', 6, 1000)
insert into Students   values ('Phylis', 'Huston', 'phuston9@quantcast.com', '2021-05-07 ', 6, 2000)               
               
  


create table Achievements (
  	id int identity primary key,
  	Assesment int not null,
	StudentId INT FOREIGN key references Students(id)
);
insert into Achievements (Assesment, StudentId) values (2, 3);
insert into Achievements (Assesment, StudentId) values (7, 5);
insert into Achievements (Assesment, StudentId) values (6, 1);
insert into Achievements (Assesment, StudentId) values (11, 1);
insert into Achievements (Assesment, StudentId) values (6, 1);
insert into Achievements (Assesment, StudentId) values (1, 4);
insert into Achievements (Assesment, StudentId) values (3, 7);
insert into Achievements (Assesment, StudentId) values (4, 6);
insert into Achievements (Assesment, StudentId) values (1, 8);
insert into Achievements (Assesment, StudentId) values (12, 6);
               




create table Teachers (
  	id int identity primary key,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(50),
	BirthDate DATE
);


insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Matty', 'Justun', 'mjustun0@google.pl', '2022-03-26');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Dorrie', 'Bauer', 'dbauer1@diigo.com', '2021-08-24');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Guglielma', 'Rosencrantz', 'grosencrantz2@istockphoto.com', '2021-08-03');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Debby', 'Comello', 'dcomello3@indiatimes.com', '2022-02-26');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Jesselyn', 'Sail', 'jsail4@wikispaces.com', '2021-10-07');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Odie', 'Pavelka', 'opavelka5@ycombinator.com', '2021-10-11');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Jesselyn', 'Callear', 'jcallear6@phoca.cz', '2021-11-03');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Claudius', 'Oxe', 'coxe7@com.com', '2021-07-05');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Almire', 'Vanner', 'avanner8@columbia.edu', '2021-09-03');
insert into Teachers (FirstName, LastName, Email, BirthDate) values ('Zondra', 'Beamson', 'zbeamson9@aboutads.info', '2021-10-24');

SELECT s.FirstName + s.LastName, g.GroupName
FROM Students AS s JOIN Groups AS g
ON s.groupid = g.id
WHERE s.grants = (SELECT MAX(Grants) FROM Students)


SELECT g.GroupName, SUM(s.grants)
FROM Students AS s JOIN Groups AS g
ON s.GroupID = g.id
WHERE s.id IN (SELECT id FROM Students WHERE email LIKE '%com')
GROUP BY g.GroupName

SELECT FirstName + ' ' + LastName AS FullName, BirthDate
FROM Students
WHERE MONTH(BirthDate) > 5
AND MONTH(BirthDate) < 9
UNION
SELECT FirstName + ' ' + LastName, BirthDate
FROM Teachers
WHERE MONTH(BirthDate) > 5
AND MONTH(BirthDate) < 9
ORDER BY BirthDate


SELECT 'Spring' AS SEASONS, COUNT(*) AS [Count of students]
FROM Students
WHERE MONTH(BirthDate) BETWEEN 3 AND 5
UNION ALL

SELECT 'Summer', COUNT(*)
FROM Students
WHERE MONTH(BirthDate) BETWEEN 6 AND 8
UNION ALL

SELECT 'Autumn', COUNT(*)
FROM Students
WHERE MONTH(BirthDate) BETWEEN 9 AND 11
UNION ALL

SELECT 'Winter', COUNT(*)
FROM Students
WHERE MONTH(BirthDate) IN (1,2,12); 








CREATE TABLE Sponsor(
	id INT IDENTITY PRIMARY KEY,
	NAME NVARCHAR(100)
)


insert into Sponsor (NAME) values ('Jo Prin');
insert into Sponsor (NAME) values ('Chris Alyoshin');
insert into Sponsor (NAME) values ('Lilllie Bidwell');
insert into Sponsor (NAME) values ('Costa Eversley');
insert into Sponsor (NAME) values ('Aldrich Vlasyuk');
insert into Sponsor (NAME) values ('Ethe Yakobowitch');
insert into Sponsor (NAME) values ('Shae Fain');
insert into Sponsor (NAME) values ('Denys Woffinden');
insert into Sponsor (NAME) values ('Codie Blatcher');
insert into Sponsor (NAME) values ('Luis Duinkerk');

CREATE TABLE Departments(
	id INT IDENTITY PRIMARY KEY,
	Building INT,
	[Name] NVARCHAR(100)
)

insert into Departments (Building, Name) values (21, 'Gilda Whitehouse');
insert into Departments (Building, Name) values (48, 'Marketa Trusty');
insert into Departments (Building, Name) values (92, 'Toddie Krates');
insert into Departments (Building, Name) values (94, 'Netty Snawdon');
insert into Departments (Building, Name) values (5, 'Correy Daniel');
insert into Departments (Building, Name) values (31, 'Leila Neasam');
insert into Departments (Building, Name) values (10, 'Elladine Hampton');
insert into Departments (Building, Name) values (3, 'Benni McCullough');
insert into Departments (Building, Name) values (2, 'Meghann Danilchev');
insert into Departments (Building, Name) values (79, 'Cyndia Bomb');

CREATE TABLE Donations(
	id INT IDENTITY PRIMARY KEY,
	Amount INT,
	[Date] DATETIME,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(id),
	sponsorId INT FOREIGN KEY REFERENCES Sponsor(id)
)

insert into Donations (Amount, Date, DepartmentId, sponsorId) values (7, '2023-04-17', 10, 6);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (35, '2023-07-15', 5, 1);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (41, '2023-04-01', 1, 5);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (18, '2024-03-30', 2, 6);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (65, '2023-12-25', 2, 8);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (57, '2023-11-16', 4, 4);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (43, '2023-06-20', 6, 5);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (89, '2024-01-13', 8, 5);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (96, '2023-07-13', 9, 8);
insert into Donations (Amount, Date, DepartmentId, sponsorId) values (24, '2023-12-30', 8, 1);



CREATE TABLE Wards(
	id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(100),
	Places INT,
	DepartmentId INT FOREIGN KEY REFERENCES Departments(id)
)

insert into Wards (Name, Places, DepartmentId) values ('Mora Warham', 2, 2);
insert into Wards (Name, Places, DepartmentId) values ('Rudd Banfill', 5, 10);
insert into Wards (Name, Places, DepartmentId) values ('Clayson Ferrini', 5, 1);
insert into Wards (Name, Places, DepartmentId) values ('Arvie Posner', 5, 1);
insert into Wards (Name, Places, DepartmentId) values ('Orelie O''Cannon', 4, 9);
insert into Wards (Name, Places, DepartmentId) values ('Flo Scutt', 1, 2);
insert into Wards (Name, Places, DepartmentId) values ('Katerina Levine', 2, 5);
insert into Wards (Name, Places, DepartmentId) values ('Arni Easterby', 1, 8);
insert into Wards (Name, Places, DepartmentId) values ('Karie Woodhall', 4, 1);
insert into Wards (Name, Places, DepartmentId) values ('Coralie Walklate', 5, 9);

CREATE TABLE Doctors(
	id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(100),
	Premium INT,
	Salary INT,
	Surname NVARCHAR(100)
)

insert into Doctors (Name, Premium, Salary, Surname) values ('Ruthy', 214, 6215, 'Perceval');
insert into Doctors (Name, Premium, Salary, Surname) values ('Cherish', 917, 9858, 'Balas');
insert into Doctors (Name, Premium, Salary, Surname) values ('Imogen', 362, 9641, 'Turrell');
insert into Doctors (Name, Premium, Salary, Surname) values ('Kissiah', 820, 9847, 'Shewon');
insert into Doctors (Name, Premium, Salary, Surname) values ('Asia', 766, 6889, 'Rickett');
insert into Doctors (Name, Premium, Salary, Surname) values ('Lorette', 588, 7844, 'Swanton');
insert into Doctors (Name, Premium, Salary, Surname) values ('Rachael', 965, 5507, 'Satchell');
insert into Doctors (Name, Premium, Salary, Surname) values ('Esma', 801, 7829, 'Crompton');
insert into Doctors (Name, Premium, Salary, Surname) values ('Estelle', 937, 6788, 'De Roberto');
insert into Doctors (Name, Premium, Salary, Surname) values ('Fania', 516, 5192, 'Badrick');

CREATE TABLE Examinations(
	id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(100)
)

insert into Examinations (Name) values ('Phoma herbarum');
insert into Examinations (Name) values ('Octinoxate');
insert into Examinations (Name) values ('Guaifenesin');
insert into Examinations (Name) values ('Prednisone');
insert into Examinations (Name) values ('carbidopa, levodopa, and entacapone');
insert into Examinations (Name) values ('Arroyo Willow');
insert into Examinations (Name) values ('CEFAZOLIN SODIUM');
insert into Examinations (Name) values ('topiramate');
insert into Examinations (Name) values ('POVIDONE-IODINE');
insert into Examinations (Name) values ('darbepoetin alfa');

CREATE TABLE DoctorsExaminations(
	id INT IDENTITY PRIMARY KEY,
	EndTime TIME,
	StartTime TIME,
	DoctorsId INT FOREIGN KEY REFERENCES Doctors(id),
	ExaminationsId INT FOREIGN KEY REFERENCES Examinations(id),
	WardId INT FOREIGN KEY REFERENCES Wards(id)
)

insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('21:04', '1:32', 10, 1, 1);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('6:52', '18:21', 2, 10, 6);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('22:46', '21:04', 7, 6, 9);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('3:48', '20:00', 8, 1, 4);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('6:36', '6:59', 3, 6, 10);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('14:37', '23:22', 5, 7, 2);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('9:58', '21:43', 6, 2, 6);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('12:48', '7:32', 2, 7, 2);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('7:06', '10:53', 5, 2, 8);
insert into DoctorsExaminations (EndTime, StartTime, DoctorsId, ExaminationsId, WardId) values ('14:54', '23:25', 3, 2, 1);



SELECT *
FROM Departments
WHERE Building = (SELECT TOP 1 Building
					FROM Departments
					WHERE NAME LIKE 'Gilda Whitehouse')

SELECT NAME 
FROM Departments
WHERE id IN (SELECT id 
			FROM Donations
			WHERE Amount = (SELECT MIN(Amount)
							FROM Donations))









               