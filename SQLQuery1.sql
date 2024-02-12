--CREATE TABLE TEST (
--	[name] nvarchar(100), 
--	age int,
--	height float,
--	gender bit, -- 1 0
--	bdate datetime -- yyyy-mm-dd
--)

--SELECT * -- NAME, HEIGHT -- * --ALL
--FROM TEST

--INSERT INTO TEST
--VALUES(N'ANEL', 23, 162.5, 1, '2000-04-06')

--CONSTRAINT - ÄÎÏÎËÍÈÒÅËÜÍÛÅ ÍÀÑÒÐÎÉÊÈ ÄËß ÑÒÎËÁÈÊÀ 
--CREATE TABLE USERS(
--	ID INT IDENTITY, --ÀÂÒÎÈÍÊÐÅÌÅÍÒ
--	FIO NVARCHAR(150) NOT NULL, 
--	PHONE NVARCHAR(15) UNIQUE, 
--	AGE INT DEFAULT 18
--)

--INSERT INTO USERS (FIO, PHONE, AGE)
--VALUES(N'GALYMZHAN YESSIMBEK BULATULY', '+7755212254', 55),
--	  (N'GALYMZHAN BASE BULAT', '+7725212254', 53),
--	  (N'GALYMZHAN ASE BUL', '+7725212255', 55)


--INSERT INTO USERS (FIO, PHONE)
--VALUES(N'GALYM YESSIMBEK BULATULY', '+7755212253')

--SELECT *
--FROM USERS

--CREATE TABLE book(
--	ID INT IDENTITY, --ÀÂÒÎÈÍÊÐÅÌÅÍÒ
--	bookName nvarchar(100),
--	relaseDate datetime, -- yyyy-mm-dd
--	genre nvarchar(20),
--	Author nvarchar(50),
--	cost float
--)

--INSERT INTO book (bookName, relaseDate, genre, Author, cost)
--values(N'1984', '1949-06-08', N'sci-fi, antiutopia', N'George Orwell', 3000),
--	  (N'Dead souls', '1842-06-08', N'Novel', N'Nikolai Gogol', 5000),
--	  (N'Traveler', '2019-12-01', N'fantasy', N'Grag Weisman', 2500),
--	  (N'The lord of the rings', '1954-07-29', N'fantasy', N'J.R.R Tolkien', 8000),
--	  (N'The lord of the rings', '1954-07-29', N'fantasy', N'J.R.R Tolkien', 8000)

--SELECT *
--FROM book

CREATE TABLE pop(
	i int,
	t time,
	check((i > 0 and i < 100) or t > '14:00')
)

INSERT INTO pop
values(200, '10:00')