


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

CREATE PROC taskExam AS 
SELECT 'HELLO'

EXEC taskExam

CREATE PROC addTeacher 
	@fname NVARCHAR(100),
	@lname NVARCHAR(100),
	@bdate DATETIME,
	@email NVARCHAR(100)
AS
	INSERT INTO Teachers
	VALUES (@fname, @lname, @email,@bdate)


DECLARE @fn NVARCHAR(100), @ln NVARCHAR(100)
DECLARE @bd DATETIME, @em NVARCHAR(100)
SET @fn = 'FIRST'
SET @ln = 'LAST'
SET @bd = '2020-02-02'
SET @em = 'QWERTY.@MAIL.RU'

EXEC addTeacher @fn, @ln, @bd, @em

EXEC addTeacher 'FF', 'LL', '2025-05-05', '1@MAIL.RU'
 
SELECT * FROM Teachers

CREATE PROC checkTeacher 
	@fname NVARCHAR(100),
	@bdate DATETIME OUTPUT
AS 
	SELECT @bdate = (SELECT birthdate
					FROM Teachers
					WHERE FirstName LIKE @fname)

DECLARE @FN NVARCHAR(100)
DECLARE @BD DATETIME
SET @FN = 'FIRST'

EXEC checkTeacher @FN, @BD OUTPUT

SELECT @BD


CREATE FUNCTION getTeacherEmail (@id INT)
RETURNS NVARCHAR(100)
AS
BEGIN
	DECLARE @RET NVARCHAR (100);
	SELECT @RET = (SELECT email FROM Teachers WHERE id = @id)
	IF (@RET IS NULL)
		SET @RET = 'NOT FIND TEACHER BY ID';
	RETURN @RET;
END

SELECT dbo.getTeacherEmail(2)
SELECT DBO.getTeacherEmail(2222)

CREATE FUNCTION getStudentByGroup(@id INT)
RETURNS TABLE
AS 
RETURN
(
	SELECT S.FIRSTNAME + S.LASTNAME AS 'FIO', G.GROUPNAME AS 'GNAME'
	FROM Students AS S JOIN Groups AS G
	ON S.GroupID = G.id
	WHERE G.id = @id
)

SELECT * FROM dbo.getStudentByGroup(2)
SELECT * FROM dbo.getStudentByGroup(2222)


SELECT DATEADD(MONTH, 1, '2006-08-31');

SELECT GETDATE();

DECLARE @VAR NVARCHAR(5)
SET @VAR = '15'
SELECT ISNUMERIC(@VAR) -- RETURNS 1

DECLARE @VAR NVARCHAR(5)
SET @VAR = 'DF'
SELECT ISNUMERIC(@VAR) -- RETURNS 0 


