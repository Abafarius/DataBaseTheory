  SELECT *
  FROM Student AS s FULL JOIN Achievements AS a
  ON s.id = a.StudentId


         
create table Student (
  	id int identity primary key,
	FirstName VARCHAR(50),
	LastName VARCHAR(50),
	Email VARCHAR(50),
	BirthDate DATE
);


  
insert into Student   values ('Ky', 'Coling', 'kcoling0@prnewswire.com', '2021-09-02 ')
insert into Student   values ('Rodrigo', 'Chevolleau', 'rchevolleau1@patch.com', '2022-01-16 ')
insert into Student   values ('Ethelyn', 'Merle', 'emerle2@macromedia.com', '2021-06-30 ')
insert into Student   values ('Zacharias', 'Vobes', 'zvobes3@wufoo.com', '2021-11-12 ')
insert into Student   values ('Johannes', 'Selway', 'jselway4@scientificamerican.com', '2021-11-01 ')
insert into Student   values ('Franklin', 'Brisley', 'fbrisley5@home.pl', '2021-12-12 ')
insert into Student   values ('Twyla', 'Hurworth', 'thurworth6@mashable.com', '2022-02-10 ')
insert into Student   values ('Maryanna', 'Garstan', 'mgarstan7@census.gov', '2021-08-09 ')
insert into Student   values ('Shandeigh', 'Volette', 'svolette8@fotki.com', '2021-12-31 ')
insert into Student   values ('Phylis', 'Huston', 'phuston9@quantcast.com', '2021-05-07' )               
               
  


create table Achievements (
  	id int identity primary key,
  	Assesment int not null,
	StudentId INT FOREIGN key references Student(id)
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
               
