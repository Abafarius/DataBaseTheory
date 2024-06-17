CREATE TABLE FAMILYMEMBERS(
	ID INT IDENTITY PRIMARY KEY,
	[STATUS] NVARCHAR(100),
	MemberName NVARCHAR(100),
	BirthDay DATETIME
)

CREATE TABLE GoodTypes(
	ID INT IDENTITY PRIMARY KEY,
	GoodTypeName NVARCHAR(100)
)

CREATE TABLE GOODS(
	ID INT IDENTITY PRIMARY KEY,
	GoodName NVARCHAR(100),
	TypeId INT FOREIGN KEY REFERENCES GoodTypes(ID)
)
CREATE TABLE PAYMENTS(
	ID INT IDENTITY PRIMARY KEY,
	FamilyMemberId INT FOREIGN KEY REFERENCES FAMILYMEMBERS(ID),
	GoodId INT FOREIGN KEY REFERENCES GOODS(ID),
	Amount INT,
	[Date] DATETIME
)


insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Khaki', 'Bianca Folke', '2000-04-21');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Mauv', 'Alexia Jahnisch', '1986-01-21');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Orange', 'Elicia Johnsson', '1980-01-01');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Teal', 'Cordelie Pfeiffer', '1962-09-16');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Fuscia', 'Rhody Moyse', '2008-03-18');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Maroon', 'Wayland Szubert', '1973-03-05');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Teal', 'Joline Alexsandrev', '1988-10-11');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Maroon', 'Tara Tolfrey', '2010-01-12');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Maroon', 'Bill Tack', '2019-02-09');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Red', 'Imelda Traher', '2020-02-13');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Khaki', 'Celie Callway', '2014-09-01');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Crimson', 'Mimi Marchiso', '1977-09-18');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Teal', 'Catha McPaik', '2019-07-26');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Pink', 'Jerrilee Edgeworth', '2012-04-03');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Puce', 'June Apted', '1996-04-16');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Orange', 'Alica Lamort', '1969-02-16');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Fuscia', 'Sosanna Coulling', '1973-03-20');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Khaki', 'Renate Mordin', '1980-07-04');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Fuscia', 'Junia Wormleighton', '1960-08-16');
insert into FAMILYMEMBERS ([STATUS], MemberName, BirthDay) values ('Crimson', 'Hershel Imm', '1975-05-31');

insert into GoodTypes (GoodTypeName) values ('Android 7, Amigo 4');
insert into GoodTypes (GoodTypeName) values ('Android 6.0');
insert into GoodTypes (GoodTypeName) values ('Microsoft Windows Mobile 5.0 for &hellip;');
insert into GoodTypes (GoodTypeName) values ('Feature phone');
insert into GoodTypes (GoodTypeName) values ('Android 4.4');
insert into GoodTypes (GoodTypeName) values ('Android 4.2, up to 4.4.2');
insert into GoodTypes (GoodTypeName) values ('Feature phone');
insert into GoodTypes (GoodTypeName) values ('Feature phone');
insert into GoodTypes (GoodTypeName) values ('Android 6.0, up to 7.0');
insert into GoodTypes (GoodTypeName) values ('Android 4.2');
insert into GoodTypes (GoodTypeName) values ('Android 2.3');
insert into GoodTypes (GoodTypeName) values ('Symbian 7.0s, Series 60 UI');
insert into GoodTypes (GoodTypeName) values ('Feature phone');
insert into GoodTypes (GoodTypeName) values ('Firefox OS 1.1');
insert into GoodTypes (GoodTypeName) values ('Android 5.0');
insert into GoodTypes (GoodTypeName) values ('Android 8.1');
insert into GoodTypes (GoodTypeName) values ('Feature phone');
insert into GoodTypes (GoodTypeName) values ('Android 7.0');
insert into GoodTypes (GoodTypeName) values ('Feature phone');
insert into GoodTypes (GoodTypeName) values ('Feature phone');

insert into GOODS (GoodName, TypeId) values ('Mix - Cappucino Cocktail', 5);
insert into GOODS (GoodName, TypeId) values ('Soup - Campbells, Beef Barley', 6);
insert into GOODS (GoodName, TypeId) values ('Roe - Lump Fish, Black', 10);
insert into GOODS (GoodName, TypeId) values ('Rolled Oats', 7);
insert into GOODS (GoodName, TypeId) values ('Rappini - Andy Boy', 18);
insert into GOODS (GoodName, TypeId) values ('Soup - Clam Chowder, Dry Mix', 16);
insert into GOODS (GoodName, TypeId) values ('Wine - Red, Lurton Merlot De', 10);
insert into GOODS (GoodName, TypeId) values ('Puree - Guava', 20);
insert into GOODS (GoodName, TypeId) values ('Coffee - Cafe Moreno', 17);
insert into GOODS (GoodName, TypeId) values ('Calypso - Strawberry Lemonade', 1);
insert into GOODS (GoodName, TypeId) values ('Carbonated Water - Blackcherry', 4);
insert into GOODS (GoodName, TypeId) values ('Water - Evian 355 Ml', 15);
insert into GOODS (GoodName, TypeId) values ('Turkey Leg With Drum And Thigh', 4);
insert into GOODS (GoodName, TypeId) values ('Parsnip', 20);
insert into GOODS (GoodName, TypeId) values ('Wasabi Powder', 20);
insert into GOODS (GoodName, TypeId) values ('Apple - Granny Smith', 6);
insert into GOODS (GoodName, TypeId) values ('Tobasco Sauce', 3);
insert into GOODS (GoodName, TypeId) values ('Tomatoes Tear Drop', 6);
insert into GOODS (GoodName, TypeId) values ('Nutmeg - Ground', 8);
insert into GOODS (GoodName, TypeId) values ('Wine - Alsace Gewurztraminer', 18);

insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (10, 20, 1, '2023-07-17');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (14, 14, 2, '2023-10-05');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (6, 18, 3, '2023-12-27');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (16, 17, 4, '2024-04-02');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (7, 2, 5, '2024-04-12');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (11, 12, 6, '2023-09-19');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (20, 17, 7, '2023-07-24');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (6, 20, 8, '2023-08-22');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (14, 12, 9, '2023-08-18');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (10, 16, 10, '2023-12-03');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (10, 19, 11, '2024-03-02');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (16, 1, 12, '2024-05-04');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (12, 15, 13, '2023-10-07');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (4, 14, 14, '2024-02-29');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (4, 6, 15, '2024-02-05');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (7, 14, 16, '2024-02-25');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (13, 2, 17, '2023-11-24');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (7, 3, 18, '2024-02-18');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (8, 9, 19, '2023-11-23');
insert into PAYMENTS (FamilyMemberId, GoodId, Amount, [Date]) values (2, 18, 20, '2023-08-24');



-------------------------------
SELECT
    FM.ID AS FamilyMemberID,
    FM.MemberName,
    GT.GoodTypeName,
    G.GoodName,
    P.Amount,
    P.Date
FROM 
    PAYMENTS P
JOIN 
    FAMILYMEMBERS FM ON P.FamilyMemberId = FM.ID
JOIN 
    GOODS G ON P.GoodId = G.ID
JOIN 
    GoodTypes GT ON G.TypeId = GT.ID;
--------------------------------------
CREATE VIEW FamilyMemberGoodsSummary AS
SELECT 
    G.ID AS GoodID,
    FM.ID AS FamilyMemberID,
    COUNT(P.ID) AS TotalQuantity
FROM 
    PAYMENTS P
JOIN 
    FAMILYMEMBERS FM ON P.FamilyMemberId = FM.ID
JOIN 
    GOODS G ON P.GoodId = G.ID
GROUP BY 
    G.ID, FM.ID;
---------------------------------------------------
CREATE PROCEDURE GetGoodsByType
    @GoodName NVARCHAR(100)
AS
BEGIN
    DECLARE @TypeId INT;
    
    -- Получение TypeId для указанного товара
    SELECT @TypeId = TypeId FROM GOODS WHERE GoodName = @GoodName;
    
    -- Вывод списка товаров того же типа
    SELECT GoodName 
    FROM GOODS 
    WHERE TypeId = @TypeId;
END;
--------------------------------------------------------
CREATE PROCEDURE GetPaymentsByMemberAndDateRange
    @MemberName NVARCHAR(100),
    @StartDate DATETIME,
    @EndDate DATETIME
AS
BEGIN
    SELECT 
        P.ID AS PaymentID,
        P.FamilyMemberId,
        P.GoodId,
        P.Amount,
        P.Date
    FROM 
        PAYMENTS P
    JOIN 
        FAMILYMEMBERS FM ON P.FamilyMemberId = FM.ID
    WHERE 
        FM.MemberName = @MemberName
        AND P.Date BETWEEN @StartDate AND @EndDate;
END;
-----------------------------------------------------------
CREATE TRIGGER trg_FormatMemberName
ON FAMILYMEMBERS
INSTEAD OF INSERT
AS
BEGIN
    INSERT INTO FAMILYMEMBERS ([STATUS], MemberName, BirthDay)
    SELECT 
        [STATUS],
        UPPER(LEFT(MemberName, 1)) + 
        LOWER(SUBSTRING(MemberName, 2, LEN(MemberName) - 2)) + 
        UPPER(RIGHT(MemberName, 1)),
        BirthDay
    FROM 
        INSERTED;
END;
--------------------------------------
CREATE TRIGGER trg_LimitMonthlyPayments
ON PAYMENTS
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @FamilyMemberId INT;
    DECLARE @NewAmount INT;
    
    SELECT @FamilyMemberId = FamilyMemberId, @NewAmount = Amount FROM INSERTED;
    
    DECLARE @CurrentDate DATETIME = GETDATE();
    DECLARE @StartDate DATETIME = DATEADD(MONTH, -1, @CurrentDate);
    
    DECLARE @TotalAmount INT;
    
    SELECT @TotalAmount = SUM(Amount)
    FROM PAYMENTS
    WHERE FamilyMemberId = @FamilyMemberId
        AND [Date] BETWEEN @StartDate AND @CurrentDate;
    
    IF @TotalAmount + @NewAmount <= 100000
    BEGIN
        INSERT INTO PAYMENTS (FamilyMemberId, GoodId, Amount, [Date])
        SELECT FamilyMemberId, GoodId, Amount, [Date] FROM INSERTED;
    END
    ELSE
    BEGIN
        RAISERROR('Monthly payment limit exceeded for this family member.', 16, 1);
    END
END;

