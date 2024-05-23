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

-------------------------------
--задание1
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

---------------------------
--задание 2

CREATE TRIGGER trg_RemoveSingerFromGroup
ON singer
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    DELETE FROM groupTotal
    WHERE singerId IN (
        SELECT id
        FROM inserted
        WHERE singerRaiting < 4
    );
END;
------------------------------------------
--задание 3
CREATE TRIGGER trg_UpdateGroupRating
ON groupTotal
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @groupId int;

    -- Получаем идентификатор группы из вставленных данных
    SELECT @groupId = groupId FROM inserted;

    -- Обновляем рейтинг группы
    UPDATE groups
    SET groupRaiting = (
        SELECT SUM(s.singerRaiting) * 1.0 / COUNT(*)
        FROM groupTotal gt
        JOIN singer s ON gt.singerId = s.id
        WHERE gt.groupId = @groupId
    )
    WHERE id = @groupId;
END;
-------------------------------------
--задание4
CREATE TRIGGER trg_PreventYoungProducers
ON producers
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE procAge < 28)
    BEGIN
        RAISERROR ('Producers must be at least 28 years old.', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO producers (procName, procAge, procRaiting)
        SELECT procName, procAge, procRaiting
        FROM inserted;
    END
END;

CREATE TRIGGER trg_PreventOldSingers
ON singer
INSTEAD OF INSERT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM inserted WHERE singerAge > 30)
    BEGIN
        RAISERROR ('Singers must be 30 years old or younger.', 16, 1);
    END
    ELSE
    BEGIN
        INSERT INTO singer (singerName, singerAge, singerRaiting)
        SELECT singerName, singerAge, singerRaiting
        FROM inserted;
    END
END;

-----------------------------------
--view
--task1
CREATE VIEW GroupProducersCount AS
SELECT
    g.gruopName AS GroupName,
    COUNT(t.id) AS ProducerCount
FROM
    groups g
JOIN
    groupTotal gt ON g.id = gt.groupId
JOIN
    team t ON gt.id = t.groupTotalId
GROUP BY
    g.gruopName;

------------------------------------
--task2
CREATE VIEW GroupProducersDetails AS
SELECT
    g.gruopName AS GroupName,
    p.procName AS ProducerName
FROM
    groups g
JOIN
    groupTotal gt ON g.id = gt.groupId
JOIN
    team t ON gt.id = t.groupTotalId
JOIN
    producers p ON t.producersId = p.id;
----------------------------------------
--task3
CREATE VIEW HighRatedGroupTeams AS
SELECT
    t.id AS TeamID,
    g.gruopName AS GroupName,
    p.procName AS ProducerName,
    g.groupRaiting AS GroupRating
FROM
    groups g
JOIN
    groupTotal gt ON g.id = gt.groupId
JOIN
    team t ON gt.id = t.groupTotalId
JOIN
    producers p ON t.producersId = p.id
WHERE
    g.groupRaiting > 9;
-------------------------------------------
--task4
CREATE VIEW SingersAndProducersInLowRatedGroups AS
SELECT
    s.singerName AS SingerName,
    p.procName AS ProducerName
FROM
    groups g
JOIN
    groupTotal gt ON g.id = gt.groupId
JOIN
    singer s ON gt.singerId = s.id
JOIN
    team t ON gt.id = t.groupTotalId
JOIN
    producers p ON t.producersId = p.id
WHERE
    g.groupRaiting < 7;
------------------------------------------------------
--task5
CREATE VIEW GroupProducerAverageRating AS
SELECT
    g.gruopName AS GroupName,
    AVG(p.procRaiting) AS AverageProducerRating
FROM
    groups g
JOIN
    groupTotal gt ON g.id = gt.groupId
JOIN
    team t ON gt.id = t.groupTotalId
JOIN
    producers p ON t.producersId = p.id
GROUP BY
    g.gruopName;
-----------------------------------------------------------
--Procedures
--task1
CREATE PROCEDURE AddProducer
    @procName nvarchar(100),
    @procAge date,
    @procRaiting int
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO producers (procName, procAge, procRaiting)
    VALUES (@procName, @procAge, @procRaiting);
END;
-----------------------------------------------------------
--task2
CREATE PROCEDURE FindTopRatedProducer
AS
BEGIN
    SET NOCOUNT ON;

    SELECT TOP 1 *
    FROM producers
    ORDER BY procRaiting DESC;
END;

---------------------------------------------------------------
--task3
CREATE PROCEDURE AddGroup
    @groupName nvarchar(100),
    @groupRating int
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM groups WHERE gruopName = @groupName)
    BEGIN
        INSERT INTO groups (gruopName, groupRaiting)
        VALUES (@groupName, @groupRating);
        PRINT 'Group added successfully.';
    END
    ELSE
    BEGIN
        PRINT 'Group name already exists. Please choose a different name.';
    END
END;

