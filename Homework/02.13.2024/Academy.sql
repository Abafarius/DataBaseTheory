CREATE TABLE Groups (
  	Id INT PRIMARY KEY IDENTITY NOT NULL,
  	Name NVARCHAR(10) UNIQUE NOT NULL,
  	Rating INT NOT NULL,
  	Year INT NOT NULL,
  	Check((Rating >= 1) AND (Rating <= 5)),
  	Check((Year >= 1) AND (Year <= 5))
)
  
INSERT INTO Groups (Name, Rating, Year)
VALUES (N'RPO-232.1', 5, 1),
	   (N'RPO-321.5', 1, 5)


CREATE TABLE Departments (
  	Id INT PRIMARY KEY IDENTITY NOT NULL,
  	Financing MONEY NULL DEFAULT 0,
  	Name NVARCHAR(100) UNIQUE NOT NULL,
  	Check(Financing >= 0)
)
  
INSERT INTO Departments (Financing, Name)
VALUES (5000000, N'Artificial Intellegance dep'),
  	   (0, N'Web Development dep')


CREATE TABLE Faculties (
  	Id INT PRIMARY KEY IDENTITY NOT NULL,
  	Name NVARCHAR(100) UNIQUE NOT NULL
)
  
INSERT INTO Faculties(Name)
VALUES(N'Engineering'),
  		(N'Software Dev')


CREATE TABLE Teachers (
  	Id INT PRIMARY KEY IDENTITY NOT NULL,
  	EmploymentDate DATE NOT NULL, 
  	Name NVARCHAR(max) NOT NULL,
  	Surname NVARCHAR(max) NOT NULL,
  	Premium MONEY NOT NULL DEFAULT 0,
  	Salary MONEY NOT NULL,
  	Check(EmploymentDate >= '01-01-1990'),
    Check(Premium > 0),
    Check(Salary >= 0)
)

INSERT INTO Teachers(EmploymentDate, Name, Surname, Premium, salary)
VALUES ('06-05-2015', N'Barry', N'Allan', 2000, 5000)

SELECT *
FROM Departments, Groups, Faculties, Teachers
