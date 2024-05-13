CREATE TABLE producers
(
	id int identity PRIMARY KEY,
  	procName nvarchar(100) not null,
  	procAge int not null,
  	procRaiting int not null
)
CREATE TABLE singer
(
	id int identity PRIMARY KEY,
  	singerName nvarchar(100) not null,
  	singerAge int not null,
  	singerRaiting int not null
)
create table groups
(
	id int identity primary key,
  	gruopName nvarchar(100) not null,
  	groupRaiting int not null
)
create table groupTotal
(
	id int identity PRIMARY KEY,
  	groupId int FOREIGN KEY references groups(id),
  	singerId int FOREIGN KEY references singer(id)
)
create table team 
(
	id int identity PRIMARY key,
  	groupTotalId int FOREIGN KEY references groupTotal(id),
    producersId int FOREIGN KEY references producers(id)
)

INSERT INTO producers (procName, procAge, procRaiting)
VALUES
('John Smith', 35, 8),
('Anna Johnson', 42, 7),
('Peter Brown', 28, 9),
('Sarah White', 50, 6),
('Alex Green', 36, 8),
('Emma Davis', 45, 7),
('Mike Wilson', 33, 9),
('Laura Lee', 39, 8),
('Mark Taylor', 48, 6),
('Rachel Clark', 31, 9);



INSERT INTO singer (singerName, singerAge, singerRaiting)
VALUES
('Lisa Anderson', 25, 7),
('Michael Jackson', 30, 9),
('David Lee', 28, 8),
('Emily Davis', 22, 6),
('Kevin Brown', 27, 7),
('Sarah Johnson', 32, 8),
('Alex Turner', 26, 9),
('Emma Thompson', 29, 7),
('John Parker', 24, 6),
('Laura Hill', 31, 8);

INSERT INTO groups (gruopName, groupRaiting)
VALUES
('BandA', 8),
('BandB', 7),
('BandC', 9),
('BandD', 6),
('BandE', 8),
('BandF', 7),
('BandG', 9),
('BandH', 8),
('BandI', 6),
('BandJ', 9);

INSERT INTO groupTotal (groupId, singerId)
VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10);

INSERT INTO team (groupTotalId, producersId)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


CREATE TRIGGER FORBIDDEN
ON team
INSTEAD OF INSERT 
AS 
DECLARE @ISCOUNT INT = (SELECT COUNT(*)
					   FROM team
					   WHERE producersId = (SELECT producersId
											FROM inserted))
IF (@ISCOUNT <= 3)
BEGIN
	INSERT INTO team(producersId, groupTotalId)
	SELECT PRODUCERSID, groupTotalID
	FROM inserted
END
ELSE
SELECT 'wE CAnT LEARn'


INSERT INTO team
VALUES (4, 0)



CREATE TRIGGER UPLOADRATEGROUP
ON GROUPTOTAL
AFTER INSERT 
AS 
DECLARE @RATEGROUP INT  



CREATE VIEW GROUPSDESCRIPTION AS 
SELECT GROUPS.gruopName PRODUCERS.PROCNAME
FROM groups 
JOIN GRUOP
