-- фитнес клуб

create table section 
(
	id int identity primary key,
	name nvarchar(50) not null unique
)

create table class 
(
	id int identity primary key,
	name nvarchar(50) not null unique
)

create table instructor
(
	id int identity primary key,
	fio nvarchar(100) not null,
	nick nvarchar(15) not null,
	workExperience int not null,
	price int not null,
	sectionId int foreign key references section(id),
	classId int foreign key references class(id)
)

create table client 
(
	id int identity primary key,
	name nvarchar(50) not null unique,
	instructorId int foreign key references instructor(id)
)

insert into section (name) values ('swim');
insert into section (name) values ('box');
insert into section (name) values ('run');
insert into section (name) values ('cardio');
insert into section (name) values ('gym');



insert into class (name) values ('economy');
insert into class (name) values ('comfort');
insert into class (name) values ('business');


insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Alan Boarder', 'Alan', 4, 73574, 1, 1);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Marc Duns', 'Marc', 4, 32254, 1, 2);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Sianna Bonar', 'Sianna', 7, 41470, 5, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Modestia Mattheissen', 'Modestia', 11, 109728, 4, 1);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Kristen Tewkesberry', 'Kristen', 7, 80861, 3, 1);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Hilda Calwell', 'Hilda', 4, 27796, 2, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Brnaby Sudworth', 'Brnaby', 4, 70721, 5, 2);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Consolata Hardingham', 'Consolata', 3, 70412, 1, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Kym Trebbett', 'Kym', 5, 32641, 5, 3);
insert into instructor (fio, nick, workExperience, price, sectionId, classId) values ('Camala Gallihawk', 'Camala', 5, 29543, 3, 1);



insert into client (name, instructorId) values ('Weston Spellworth', 8);
insert into client (name, instructorId) values ('Staffard Giraldez', 1);
insert into client (name, instructorId) values ('Wolfy Curnick', 1);
insert into client (name, instructorId) values ('Abbie Vacher', 10);
insert into client (name, instructorId) values ('Harrison Earles', 9);
insert into client (name, instructorId) values ('Letta O''Suaird', 3);
insert into client (name, instructorId) values ('Luke Gaymer', 10);
insert into client (name, instructorId) values ('Ivie Gabbetis', 6);
insert into client (name, instructorId) values ('Pen Lakenden', 4);
insert into client (name, instructorId) values ('Porty Rusling', 9);
insert into client (name, instructorId) values ('Chicky Buckner', 2);
insert into client (name, instructorId) values ('Charmian Chislett', 8);
insert into client (name, instructorId) values ('Dasya Skerman', 10);
insert into client (name, instructorId) values ('Brittne Birks', 2);
insert into client (name, instructorId) values ('Theresa Hulse', 2);
insert into client (name, instructorId) values ('Amii Downing', 9);
insert into client (name, instructorId) values ('Jillayne Crown', 10);
insert into client (name, instructorId) values ('Kort Choulerton', 3);
insert into client (name, instructorId) values ('Oren Jager', 3);
insert into client (name, instructorId) values ('Roxanne Midgely', 7);
insert into client (name, instructorId) values ('Madge Dutnell', 3);
insert into client (name, instructorId) values ('Edee Minero', 9);
insert into client (name, instructorId) values ('Trueman Chavrin', 6);
insert into client (name, instructorId) values ('Wayne Bourdice', 3);
insert into client (name, instructorId) values ('Elnore Anfonsi', 6);
insert into client (name, instructorId) values ('Panchito Buttriss', 10);
insert into client (name, instructorId) values ('Teresita Apedaile', 10);
insert into client (name, instructorId) values ('Mag O'' Loughran', 8);
insert into client (name, instructorId) values ('Tobie Caile', 8);
insert into client (name, instructorId) values ('Marissa MacTeague', 9);
insert into client (name, instructorId) values ('Thor Mayger', 5);
insert into client (name, instructorId) values ('Jeremy Waddington', 9);
insert into client (name, instructorId) values ('Domeniga Cicculi', 3);
insert into client (name, instructorId) values ('Tan Murcott', 8);
insert into client (name, instructorId) values ('Elfrieda Commander', 2);
insert into client (name, instructorId) values ('Celestine Seif', 5);
insert into client (name, instructorId) values ('Stepha Placide', 3);
insert into client (name, instructorId) values ('Ally Medforth', 1);
insert into client (name, instructorId) values ('Yard Coventry', 10);
insert into client (name, instructorId) values ('Townie Sodor', 3);
insert into client (name, instructorId) values ('Sherwood Larway', 8);
insert into client (name, instructorId) values ('Ivette Gludor', 10);
insert into client (name, instructorId) values ('Abbott Comusso', 8);
insert into client (name, instructorId) values ('Aura Briffett', 3);
insert into client (name, instructorId) values ('Madalena Sporle', 2);
insert into client (name, instructorId) values ('Sholom Albiston', 10);
insert into client (name, instructorId) values ('Derron Garrad', 7);
insert into client (name, instructorId) values ('Desirae Whitlow', 10);
insert into client (name, instructorId) values ('Francyne Yule', 9);
insert into client (name, instructorId) values ('Anissa Camel', 9);
insert into client (name, instructorId) values ('Sal Ayrs', 2);
insert into client (name, instructorId) values ('Sharai Barns', 2);
insert into client (name, instructorId) values ('Jean Antyshev', 1);
insert into client (name, instructorId) values ('Torrey Keyhoe', 7);
insert into client (name, instructorId) values ('Lottie Van der Velde', 5);
insert into client (name, instructorId) values ('Eula Amyes', 2);
insert into client (name, instructorId) values ('Billi Shortall', 3);
insert into client (name, instructorId) values ('Ferris Pedrocco', 10);
insert into client (name, instructorId) values ('Nani Bockh', 5);
insert into client (name, instructorId) values ('Care Merigeau', 5);
insert into client (name, instructorId) values ('Matt Swett', 7);
insert into client (name, instructorId) values ('Guilbert Bosman', 9);
insert into client (name, instructorId) values ('Merrel Edmeads', 6);
insert into client (name, instructorId) values ('Urbano Handrick', 10);
insert into client (name, instructorId) values ('Iosep Kippax', 8);
insert into client (name, instructorId) values ('Doralynn Sharland', 10);
insert into client (name, instructorId) values ('Melamie Foggarty', 1);
insert into client (name, instructorId) values ('Willamina Elen', 2);
insert into client (name, instructorId) values ('Colver Ruddom', 2);
insert into client (name, instructorId) values ('Susanna Glencross', 10);
insert into client (name, instructorId) values ('Ricoriki Cookes', 4);
insert into client (name, instructorId) values ('Padraig Pincked', 3);
insert into client (name, instructorId) values ('Lammond Downing', 2);
insert into client (name, instructorId) values ('Crystal Middlemist', 7);
insert into client (name, instructorId) values ('Christie Bossingham', 7);
insert into client (name, instructorId) values ('Marthe Eager', 9);
insert into client (name, instructorId) values ('Demetra Beccero', 9);
insert into client (name, instructorId) values ('Rodge Fawthrop', 1);
insert into client (name, instructorId) values ('Gabriell Pitkin', 9);
insert into client (name, instructorId) values ('Cam Sole', 8);
insert into client (name, instructorId) values ('Nikoletta Lindenfeld', 4);
insert into client (name, instructorId) values ('Holly Greenard', 10);
insert into client (name, instructorId) values ('Aldwin Colthard', 7);
insert into client (name, instructorId) values ('Darya Cornelissen', 5);
insert into client (name, instructorId) values ('Billi Deacon', 10);
insert into client (name, instructorId) values ('Brandi Edworthy', 5);
insert into client (name, instructorId) values ('Whitby Mathey', 1);
insert into client (name, instructorId) values ('Evonne Horry', 9);
insert into client (name, instructorId) values ('Estel Sanper', 9);
insert into client (name, instructorId) values ('Candis Archibald', 8);
insert into client (name, instructorId) values ('Nobe Dils', 2);
insert into client (name, instructorId) values ('Shane Maguire', 10);
insert into client (name, instructorId) values ('Kelsey McGettrick', 6);
insert into client (name, instructorId) values ('Christabel Setchfield', 5);
insert into client (name, instructorId) values ('Shantee Cometti', 10);
insert into client (name, instructorId) values ('Chrystal Hazle', 2);
insert into client (name, instructorId) values ('Adela Clampett', 1);
insert into client (name, instructorId) values ('Etienne Methingam', 6);
insert into client (name, instructorId) values ('Alissa Malcolm', 5);
insert into client (name, instructorId) values ('Kiley Danev', 8);


select c.name, i.fio, s.name, t.name
from client as c join instructor as i
on c.instructorId = i.id join class as s
on s.id = i.classId join section as t
on t.id = i.sectionId

select i.fio, count(*)
from client as c join instructor as i
on c.instructorId = i.id
group by i.fio
having count(*) > 10

select t.name, count(*)
from client as c join instructor as i
on c.instructorId = i.id join section as t
on t.id = i.sectionId 
where c.name like '%e%'
group by t.name

select s.name, sum(i.price)
from client as c join instructor as i
on c.instructorId = i.id join class as s
on s.id = i.classId
where i.workExperience > 3 
group by s.name 
having sum(i.price) > 1000000