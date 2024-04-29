CREATE TABLE Products (
	ID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(100),
	Price DECIMAL(10,2),
	[Description] NVARCHAR(MAX)
);

INSERT INTO Products (Name, Price, Description)
VALUES ('Book', 10.99, 'Good book for reading'),
		('Flash Drive', 5.50, '16 GB Flash Drive'),
		('Laptop', 699.99, 'Laptop for games and work')


CREATE TABLE Categories (
	ID INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(50)
)

INSERT INTO Categories (Name)
VALUES ('Book'), ('Electronics'), ('Clothes')

CREATE TABLE ProductCategories (
	ID INT PRIMARY KEY IDENTITY,
	ProductID INT FOREIGN KEY (ProductID) REFERENCES Products(ID),
	CategoryID INT FOREIGN KEY (CategoryID) REFERENCES Categories(ID)
)

INSERT INTO ProductCategories(ProductID, CategoryID)
VALUES (1, 1), (2, 2), (3, 2)

SELECT *
FROM PRODUCTS AS p JOIN ProductCategories AS pc
ON P.ID = pc.ProductID JOIN Categories AS c
ON c.ID = pc.CategoryID

BEGIN TRANSACTION 
	UPDATE Products
	SET Name = 'Book'
	WHERE id = 1

	UPDATE Categories
	SET Name = 'BookS'
	WHERE id = 1
COMMIT TRANSACTION


BEGIN TRANSACTION 
	UPDATE Products
	SET Price = Price - 3
	WHERE id = 2
	--проверим, не стала ли цена отрицательной
	IF(SELECT price FROM Products WHERE id = 2)<0
	BEGIN
		--откатываем транзакцию
		ROLLBACK TRANSACTION 
		SELECT 'ERROR: ....'
	END
	ELSE
	BEGIN 
		--фиксируем транзакцию
		COMMIT TRANSACTION
		SELECT 'SUCCESSFULLY...';
	END









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


BEGIN TRANSACTION;
	DECLARE @StudentID INT, @Assessment INT, @CurrentGrants INT
	SET @StudentID = 3  
	SET @Assessment = (SELECT TOP 1 Assesment
					   FROM Achievements     
					   WHERE StudentId = @StudentID
					   ORDER BY id DESC)
SET @CurrentGrants = (SELECT Grants FROM Students WHERE id= @StudentID) IF @Assessment >= 5
BEGIN 
	UPDATE Students SET Grants = @CurrentGrants + 500 WHERE id = @StudentID
	COMMIT TRANSACTION
END
ELSE
BEGIN
 ROLLBACK TRANSACTION 
 SELECT N'Студент не получил достаточно оценок для увеличения грантов.'
END


BEGIN TRANSACTION 
	DECLARE @StudentIDToDelete INT, @BIRTHDATE DATE 
	SET @StudentIDToDelete = 2
	SET @BIRTHDATE = (SELECT BirthDate
					  FROM Students
					  WHERE id = @StudentIDToDelete)
	IF @BIRTHDATE > '2000-01-01'
	BEGIN
		DELETE FROM Students WHERE id = @StudentIDToDelete
		SELECT N'Студент удален из базы данных.'
		COMMIT TRANSACTION 
	END 
	ELSE 
	BEGIN
		ROLLBACK TRANSACTION;
		SELECT N'Студент не может быть удален'
	END



BEGIN TRANSACTION
	DECLARE @GroupID INT, @StudentCOUNT INT, @GrantIncrease DECIMAL (10, 2)
	SET @GroupID = 2
	SET @StudentCOUNT = (SELECT COUNT(*)
						 FROM Students
						 WHERE GroupID = @GroupID)
	SET @GrantIncrease = 0.1 
	IF @StudentCOUNT > 10
	BEGIN
		UPDATE Students
		SET Grants = Grants * (1 + @GrantIncrease)
		WHERE GroupID = @GroupID
		SELECT N'Гранты студентов увеличены'
		COMMIT TRANSACTION 
	END
	ELSE
	BEGIN
		ROLLBACK TRANSACTION
		SELECT N'Нельзя изменить гранты студентов в группе'
	END

BEGIN TRANSACTION
	DECLARE @GroupIDNEW INT, @StudentCOUNTNEW INT, @AssesmentAVG DECIMAL (10, 2)
	SET @GroupIDNEW = 3
	SET @AssesmentAVG = (SELECT AVG(Assesment)
						 FROM Achievements
						 WHERE StudentId IN (SELECT ID
											 FROM Students
											 WHERE GroupID = @GroupIDNEW))

	IF @AssesmentAVG < 1
	BEGIN
		DELETE FROM STUDENTS
		WHERE GroupID = @GroupIDNEW

		SELECT N'ВСЕ СТУДЕНТЫ ИЗ ГРУППЫ УДАЛЕНЫ.'
		COMMIT TRANSACTION
	END
	ELSE
	BEGIN
		ROLLBACK TRANSACTION
		SELECT N'СТУДЕНТЫ ИЗ ГРУППЫ NE MOGUT BYT УДАЛЕНЫ.'
	END


BEGIN TRANSACTION 
	DECLARE @GROUPIDNEWNEW INT, @STUDENTCOUNTNEWNEW INT;
	SET @GROUPIDNEWNEW = 5
	SET @STUDENTCOUNTNEWNEW = (SELECT COUNT(*)
						       FROM Students
						       WHERE GroupID = @GroupIDNEWNEW)
	IF @STUDENTCOUNTNEWNEW = 1
	BEGIN
		DELETE FROM Students
		WHERE GroupID = @GROUPIDNEWNEW

		DELETE FROM GROUPS
		WHERE id = @GROUPIDNEWNEW

		SELECT N'ГРУППА И ВСЕ ЕЕ СТУДЕНТЫ УДАЛЕНЫ.'
		COMMIT TRANSACTION
END
ELSE
BEGIN
	ROLLBACK TRANSACTION
	SELECT N'СТУДЕНТЫ ИЗ ГРУППЫ NE MOGUT BYT УДАЛЕНЫ.'
END