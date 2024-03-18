CREATE table students (
 id int identity primary key,
   fullname nvarchar(100) not null,
   bdate datetime not null
)
CREATE table groups (
 id int identity primary key,
   groupname nvarchar(100) not null
)
create table groupsstudents (
 id int identity primary key,
   groupsid int foreign key references groups(id),
   studentsid int foreign key references students(id)
)

insert into students (fullname, bdate) values ('Culley Bonellie', '2007-04-30 17:37:23');
insert into students (fullname, bdate) values ('Lyndsay Proger', '2005-05-07 21:15:45');
insert into students (fullname, bdate) values ('Faustine Waldera', '2005-07-30 17:10:30');
insert into students (fullname, bdate) values ('Waldemar Enevoldsen', '2005-08-16 01:29:27');
insert into students (fullname, bdate) values ('Junina Petrina', '2005-09-25 12:11:29');
insert into students (fullname, bdate) values ('Jacquenette Haysey', '2006-09-08 23:54:48');
insert into students (fullname, bdate) values ('Natala Ruddiforth', '2006-07-18 03:10:05');
insert into students (fullname, bdate) values ('Brant Tancock', '2006-11-21 09:56:18');
insert into students (fullname, bdate) values ('Jolie Narey', '2007-03-30 22:05:28');
insert into students (fullname, bdate) values ('Bengt Westwick', '2005-06-21 20:36:57');
insert into students (fullname, bdate) values ('Gwenora Whittaker', '2006-07-31 21:37:43');
insert into students (fullname, bdate) values ('Marnia Lindsley', '2005-08-26 17:56:19');
insert into students (fullname, bdate) values ('Maryrose Tombling', '2005-09-21 03:08:10');
insert into students (fullname, bdate) values ('Ethe Noblet', '2006-12-15 20:23:39');
insert into students (fullname, bdate) values ('Darn Gleave', '2006-10-29 07:13:11');
insert into students (fullname, bdate) values ('Bartholemy Churm', '2006-12-12 07:52:59');
insert into students (fullname, bdate) values ('Amelia Jeannon', '2006-10-24 08:43:27');
insert into students (fullname, bdate) values ('Cyb Lewtey', '2006-12-11 10:21:59');
insert into students (fullname, bdate) values ('Harrison Paynton', '2005-10-18 02:50:58');
insert into students (fullname, bdate) values ('Cece Ody', '2006-08-24 12:08:33');


insert into groups (groupname) values ('SDP-202');
insert into groups (groupname) values ('SDP-222');
insert into groups (groupname) values ('SDP-221');
insert into groups (groupname) values ('SDP-220');
insert into groups (groupname) values ('SEP-202');
insert into groups (groupname) values ('SEP-222');
insert into groups (groupname) values ('SEP-221');
insert into groups (groupname) values ('SEP-220');


insert into groupsstudents (groupsid, studentsid) values (1, 1);
insert into groupsstudents (groupsid, studentsid) values (1, 2);
insert into groupsstudents (groupsid, studentsid) values (1, 3);

insert into groupsstudents (groupsid, studentsid) values (2, 7);
insert into groupsstudents (groupsid, studentsid) values (2, 8);
insert into groupsstudents (groupsid, studentsid) values (2, 9);


SELECT *
FROM students AS s JOIN groupsstudents AS SG
ON s.id = sg.studentsId JOIN GROUPS AS g
ON g.id = sg.groupsid
WHERE g.groupname LIKE 'SDP-222'

SELECT g.groupname, COUNT(*) AS 'count'
FROM students AS s JOIN groupsstudents AS SG
ON s.id = sg.studentsId JOIN GROUPS AS g
ON g.id = sg.groupsid
GROUP BY g.groupname