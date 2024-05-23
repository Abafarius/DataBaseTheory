create table Departments
(
	Id int primary key identity,
	Building int not null,				-- номер корпуса отделени 
	DepartName nvarchar(100) not null,	-- название отделения
)
create table Doctors
(
	Id int primary key identity,		
	DocName nvarchar(100) not null,		-- название доктора
	Premium int not null default 0,		-- премия доктора
	Salary int not null,				-- зарплата доктора
	Surname nvarchar(100) not null		-- фамилия доктора
)
create table Examinations
(
	Id int primary key identity,
	ExamName nvarchar(30) not null,		-- название объследования
)
create table Wards
(
	Id int primary key identity,
	WardName nvarchar(30) not null,		-- название палаты
	Places int not null,				-- мест в палате
	DepartmentId int foreign key references Departments(Id),	-- в каком отделение палата
)
create table Sponsors
(
	Id int primary key identity,
	SponsorName nvarchar(30) not null,	-- название спонсоров
)
create table Donations
(
	Id int primary key identity,
	Amount int not null,				-- кол-во пожертвований
	DonationDate date not null,			-- дата пожертвования
	DepartmentId int foreign key references Departments(Id),	-- какому отделу пожерт
	SponsorId int foreign key references Sponsors(Id),			-- какой спонсор пожерт
)
create table DoctorsExaminations
(
	Id int primary key identity,		
	StartTime time not null,			-- время начала записи
	EndTime time not null,				-- время конца записи
	DoctorId int foreign key references Doctors(Id),			-- к какому доктору запись
	ExaminationId int foreign key references Examinations(Id),	-- какое обследование
	WardId int foreign key references Wards(Id),				-- в каокй палате обслед
)



insert into Departments (Building, DepartName) values (3, 'Zoolab');
insert into Departments (Building, DepartName) values (3, 'Fixflex');
insert into Departments (Building, DepartName) values (5, 'Home');
insert into Departments (Building, DepartName) values (4, 'Regrant');
insert into Departments (Building, DepartName) values (3, 'Zamit');
insert into Departments (Building, DepartName) values (1, 'Alphazap');
insert into Departments (Building, DepartName) values (3, 'Ynd');
insert into Departments (Building, DepartName) values (4, 'Zamit');
insert into Departments (Building, DepartName) values (5, 'Span');
insert into Departments (Building, DepartName) values (4, 'Sub');
insert into Departments (Building, DepartName) values (4, 'Transcof');
insert into Departments (Building, DepartName) values (1, 'Overhold');




insert into Doctors (DocName, Premium, Salary, Surname) values ('Arie', 8807, 67835, 'Boxell');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Livy', 6229, 32970, 'Scamal');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Faustine', 7808, 26750, 'Michael');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Burl', 6325, 47084, 'Hartwright');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Bernete', 9537, 28646, 'Timbs');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Dyanna', 6362, 48290, 'Messier');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Myrilla', 5256, 96303, 'Smedmoor');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Albert', 5786, 69438, 'Szantho');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Thedrick', 8522, 96531, 'Chatteris');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Dasie', 5174, 39901, 'Whates');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Bari', 9320, 81445, 'Dwelley');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Ralina', 9657, 99205, 'Cormack');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Boycey', 6880, 96043, 'Willatt');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Cirstoforo', 5907, 48975, 'Nerne');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Gare', 8936, 74302, 'Penzer');
insert into Doctors (DocName, Premium, Salary, Surname) values ('Moselle', 5974, 11911, 'Roseby');



insert into Examinations (ExamName) values ('Calcitrene');
insert into Examinations (ExamName) values ('Lisinopril');
insert into Examinations (ExamName) values ('Treatment');
insert into Examinations (ExamName) values ('aspirin');
insert into Examinations (ExamName) values ('LBEL Couleur');
insert into Examinations (ExamName) values ('Relivora Complex');
insert into Examinations (ExamName) values ('House Dust');
insert into Examinations (ExamName) values ('dg health pain');
insert into Examinations (ExamName) values ('Oxygen');
insert into Examinations (ExamName) values ('Levothyroxine');
insert into Examinations (ExamName) values ('CARE ONE');
insert into Examinations (ExamName) values ('Benztropine');





insert into Wards (WardName, Places, DepartmentId) values ('Tres-Zap', 77, 11);
insert into Wards (WardName, Places, DepartmentId) values ('Transcof', 72, 10);
insert into Wards (WardName, Places, DepartmentId) values ('Subin', 47, 2);
insert into Wards (WardName, Places, DepartmentId) values ('Stronghold', 80, 11);
insert into Wards (WardName, Places, DepartmentId) values ('Cardify', 74, 12);
insert into Wards (WardName, Places, DepartmentId) values ('Job', 54, 12);
insert into Wards (WardName, Places, DepartmentId) values ('Lotlux', 13, 12);
insert into Wards (WardName, Places, DepartmentId) values ('Aerified', 99, 12);
insert into Wards (WardName, Places, DepartmentId) values ('Tampflex', 96, 8);
insert into Wards (WardName, Places, DepartmentId) values ('Aerified', 50, 8);
insert into Wards (WardName, Places, DepartmentId) values ('Tres-Zap', 66, 11);
insert into Wards (WardName, Places, DepartmentId) values ('Subin', 76, 10);
insert into Wards (WardName, Places, DepartmentId) values ('Cardguard', 44, 12);
insert into Wards (WardName, Places, DepartmentId) values ('Fix San', 13, 1);
insert into Wards (WardName, Places, DepartmentId) values ('Transcof', 88, 6);
insert into Wards (WardName, Places, DepartmentId) values ('Fix San', 41, 8);




insert into Sponsors (SponsorName) values ('Yadel');
insert into Sponsors (SponsorName) values ('Vidoo');
insert into Sponsors (SponsorName) values ('Quinu');
insert into Sponsors (SponsorName) values ('Feedbug');
insert into Sponsors (SponsorName) values ('Nlounge');
insert into Sponsors (SponsorName) values ('Rhyloo');
insert into Sponsors (SponsorName) values ('Gabcube');
insert into Sponsors (SponsorName) values ('Fivechat');
insert into Sponsors (SponsorName) values ('Realcube');
insert into Sponsors (SponsorName) values ('Zoomcast');
insert into Sponsors (SponsorName) values ('Wikido');
insert into Sponsors (SponsorName) values ('Mycat');





insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (74252, '2021-12-16', 12, 3);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (43817, '2021-07-17', 10, 11);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (72550, '2021-04-23', 10, 11);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (65575, '2021-09-10', 1, 11);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (66110, '2021-06-03', 5, 5);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (12713, '2021-06-27', 6, 9);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (10735, '2021-09-09', 4, 11);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (22286, '2021-11-08', 10, 9);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (16225, '2022-03-21', 2, 5);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (21807, '2021-10-26', 1, 3);
insert into Donations (Amount, DonationDate, DepartmentId, SponsorId) values (30192, '2021-11-17', 3, 5);




insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('9:20', '0:08', 16, 6, 13);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('8:54', '1:52', 13, 7, 8);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('8:01', '4:38', 15, 7, 11);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('10:13', '11:26', 14, 12, 6);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('10:03', '4:19', 2, 10, 7);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('9:27', '1:28', 14, 4, 15);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('8:06', '4:45', 2, 10, 13);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('8:26', '4:19', 16, 11, 1);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('10:36', '1:50', 7, 7, 1);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('9:30', '11:31', 7, 12, 9);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('11:10', '1:12', 9, 6, 14);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('10:30', '9:54', 9, 8, 9);
insert into DoctorsExaminations (StartTime, EndTime, DoctorId, ExaminationId, WardId) values ('10:04', '7:57', 10, 2, 8);



----------------------------------------------------------------------------------------------------------------------------
--task1
BEGIN TRANSACTION;

BEGIN TRY
    -- Задать максимальное допустимое количество врачей в отделении
    DECLARE @MaxDoctors INT = 10;

    -- Создать временную таблицу для хранения отделений с избыточным количеством врачей
    CREATE TABLE #ExcessiveDepartments (DepartmentId INT);

    -- Заполнить временную таблицу идентификаторами отделений с избыточным количеством врачей
    INSERT INTO #ExcessiveDepartments (DepartmentId)
    SELECT d.Id
    FROM Departments d
    JOIN Wards w ON w.DepartmentId = d.Id
    JOIN DoctorsExaminations de ON de.WardId = w.Id
    GROUP BY d.Id
    HAVING COUNT(de.DoctorId) > @MaxDoctors;

    -- Удалить врачей из отделений с избыточным количеством врачей
    DELETE FROM Doctors
    WHERE Id IN (
        SELECT DoctorId
        FROM DoctorsExaminations de
        JOIN Wards w ON w.Id = de.WardId
        WHERE w.DepartmentId IN (SELECT DepartmentId FROM #ExcessiveDepartments)
    );

    -- Удалить записи обследований врачей, которых мы удалили
    DELETE FROM DoctorsExaminations
    WHERE DoctorId NOT IN (SELECT Id FROM Doctors);

    -- Удалить временную таблицу
    DROP TABLE #ExcessiveDepartments;

    COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    -- В случае ошибки откатить транзакцию
    ROLLBACK TRANSACTION;

    -- Показать сообщение об ошибке
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;

    SELECT 
        @ErrorMessage = ERROR_MESSAGE(),
        @ErrorSeverity = ERROR_SEVERITY(),
        @ErrorState = ERROR_STATE();

    RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
END CATCH;
----------------------------------------------------------------------------------------
