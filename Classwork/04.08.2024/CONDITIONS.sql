CREATE TABLE Customer(
	id INT IDENTITY PRIMARY KEY,
	FIO NVARCHAR(100) UNIQUE,
	BALANCE FLOAT DEFAULT 0
)

CREATE TABLE Cart(
	id INT IDENTITY PRIMARY KEY,
	GoodName NVARCHAR(100) NOT NULL,
	GoodCount INT DEFAULT 1,
	CustomerId INT REFERENCES Customer(id)
)

INSERT INTO Customer
VALUES ('First', 120120), ('Second', 1020)

INSERT INTO Cart
VALUES ('BREAD', 2, 1), ('MILK', 1, 1), ('MEAT', 3, 1),
('BURGER', 3, 2), ('COLA', 3, 2), ('FRIES', 1, 2), ('SAUCE', 2, 2)

SELECT *
FROM Cart

SELECT C.FIO, R.GoodName, R.GoodCount
FROM CUSTOMER AS C JOIN Cart AS R
ON C.id = R.CUSTOMERID


SELECT COUNT(*) AS 'COUNT', C.FIO
FROM CUSTOMER AS C JOIN Cart AS R
ON C.id = R.CUSTOMERID
GROUP BY C.FIO
HAVING COUNT(*) = 4
ORDER BY C.FIO 


--������ ���-�� ������� �������
--������ ���-�� ������� �������
--������� � ���������� ��� ������ 

DECLARE @FIRSTCOUNT INT
SET @FIRSTCOUNT = (SELECT COUNT(*) AS 'COUNT'
					FROM CUSTOMER AS C JOIN Cart AS R
					ON C.id = R.CUSTOMERID
					WHERE C.id = 1)
SELECT @FIRSTCOUNT AS fc


DECLARE @SECCOUNT INT
SET @SECCOUNT = (SELECT COUNT(*) AS 'COUNT'
					FROM CUSTOMER AS C JOIN Cart AS R
					ON C.id = R.CUSTOMERID
					WHERE C.id = 2)
SELECT @SECCOUNT AS sc

IF @FIRSTCOUNT > @SECCOUNT
BEGIN
	SELECT 'FIRST HAS MORE ORDERS'
	SELECT @FIRSTCOUNT
END
ELSE
	SELECT 'SECOND HAS MORE ORDERS', @SECCOUNT


---------------------------------------------------
DECLARE @name NVARCHAR(100) = 'MILK'
SELECT @name

IF (SELECT COUNT(*) FROM Cart WHERE GoodName LIKE @name) = 1
	SELECT 'EXIST'
ELSE 
	SELECT 'NO'

