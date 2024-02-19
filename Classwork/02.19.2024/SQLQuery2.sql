CREATE TABLE users(
	id INT IDENTITY,
	fio NVARCHAR(100) NOT NULL,
	bdate DATETIME DEFAULT '1999-01-01',
	phone NVARCHAR(15) UNIQUE,
	[address] NVARCHAR(500)
)
INSERT INTO users
VALUES('QWERTY', '1999-12-12', '15646', 'ABAY')

SELECT *
FROM users


insert into users (fio, bdate, phone, [address]) values ('Parrnell Fagg', '2023-05-15', '168-678-8982', '95614 Clarendon Street');
insert into users (fio, bdate, phone, [address]) values ('Amy MacArd', '2020-11-06', '938-171-7835', '180 5th Way');
insert into users (fio, bdate, phone, [address]) values ('Minerva Papachristophorou', '2023-04-16', '748-453-3087', '0949 Texas Alley');
insert into users (fio, bdate, phone, [address]) values ('Haywood Davidovitz', '2022-06-17', '380-594-4508', '7778 Merry Point');
insert into users (fio, bdate, phone, [address]) values ('Braden Fero', '2022-05-25', '114-810-4251', '86 Porter Crossing');
insert into users (fio, bdate, phone, [address]) values ('Jarib Bulcock', '2021-03-23', '973-879-8127', '738 Dayton Pass');
insert into users (fio, bdate, phone, [address]) values ('Nevin Bleazard', '2022-08-03', '559-753-5870', '9 Washington Way');
insert into users (fio, bdate, phone, [address]) values ('Emory Armsby', '2020-09-07', '480-839-7684', '1004 Transport Hill');
insert into users (fio, bdate, phone, [address]) values ('Jay Topes', '2023-05-19', '967-122-7084', '730 Fordem Junction');
insert into users (fio, bdate, phone, [address]) values ('Charlie Waring', '2022-09-22', '230-903-4185', '125 Mcbride Park');
insert into users (fio, bdate, phone, [address]) values ('Cristi Sinson', '2023-11-03', '708-278-4238', '7855 Crest Line Pass');
insert into users (fio, bdate, phone, [address]) values ('Che Clarey', '2021-08-30', '223-861-0792', '1510 Bunting Terrace');
insert into users (fio, bdate, phone, [address]) values ('Kessia Hollingshead', '2020-04-09', '794-840-5240', '2 Dovetail Point');
insert into users (fio, bdate, phone, [address]) values ('Britt MacKerley', '2021-05-16', '809-937-7910', '15 5th Crossing');
insert into users (fio, bdate, phone, [address]) values ('Adi Goodbairn', '2021-08-31', '859-474-0749', '5 Lunder Terrace');
insert into users (fio, bdate, phone, [address]) values ('Cole Ranfield', '2023-06-18', '632-849-2938', '6 Kenwood Street');
insert into users (fio, bdate, phone, [address]) values ('Padget Emmert', '2023-09-06', '805-877-1644', '046 Troy Terrace');
insert into users (fio, bdate, phone, [address]) values ('Ferdinanda Vellacott', '2021-04-05', '287-964-4628', '146 Lawn Alley');
insert into users (fio, bdate, phone, [address]) values ('Ruprecht Norledge', '2020-10-14', '130-584-6631', '4 Bartillon Junction');
insert into users (fio, bdate, phone, [address]) values ('Cristal Surridge', '2022-04-27', '626-853-0022', '4192 Brickson Park Pass');
insert into users (fio, bdate, phone, [address]) values ('Porty Simonou', '2020-06-12', '581-449-0101', '78 Porter Terrace');
insert into users (fio, bdate, phone, [address]) values ('Curcio Megany', '2023-07-13', '958-194-4059', '650 Kropf Crossing');
insert into users (fio, bdate, phone, [address]) values ('Nelli Train', '2020-12-07', '935-204-5615', '3 Spenser Terrace');
insert into users (fio, bdate, phone, [address]) values ('Dwight Osipenko', '2020-10-21', '294-988-2414', '125 Petterle Avenue');
insert into users (fio, bdate, phone, [address]) values ('Sunshine Menaul', '2020-05-09', '456-803-6004', '69839 Anhalt Way');
insert into users (fio, bdate, phone, [address]) values ('Doretta Low', '2021-06-19', '125-375-6234', '499 Bonner Road');
insert into users (fio, bdate, phone, [address]) values ('Mohandis Udden', '2022-10-20', '246-662-0243', '35 Schmedeman Way');
insert into users (fio, bdate, phone, [address]) values ('Iggy Eubank', '2024-02-02', '696-204-9872', '59688 Elgar Alley');
insert into users (fio, bdate, phone, [address]) values ('Daniel Ruggier', '2020-07-28', '426-864-3541', '955 Charing Cross Park');
insert into users (fio, bdate, phone, [address]) values ('Sherman MacCarroll', '2022-01-01', '636-463-8615', '3 Jenifer Point');
insert into users (fio, bdate, phone, [address]) values ('Alberik Lauret', '2023-03-07', '139-519-8190', '533 Hayes Point');
insert into users (fio, bdate, phone, [address]) values ('Roley Harding', '2020-12-28', '659-875-1553', '80 Kingsford Point');
insert into users (fio, bdate, phone, [address]) values ('Maxim Gedge', '2023-12-05', '739-718-3286', '89972 Lunder Drive');
insert into users (fio, bdate, phone, [address]) values ('Cecily Bullerwell', '2023-10-31', '390-808-5830', '94433 Westend Street');
insert into users (fio, bdate, phone, [address]) values ('Jeremias Connock', '2024-02-13', '261-164-2387', '6 Victoria Parkway');
insert into users (fio, bdate, phone, [address]) values ('Thor Treece', '2020-11-08', '874-272-7408', '90746 Sage Parkway');
insert into users (fio, bdate, phone, [address]) values ('Addie Wroth', '2021-04-24', '749-405-9820', '46378 Tony Trail');
insert into users (fio, bdate, phone, [address]) values ('Conway Paur', '2023-02-21', '988-313-9705', '27 Tony Terrace');
insert into users (fio, bdate, phone, [address]) values ('Patty Lambis', '2022-06-11', '491-187-4018', '508 Tennessee Trail');
insert into users (fio, bdate, phone, [address]) values ('Winne McElrath', '2022-03-12', '398-134-7572', '5228 Garrison Trail');
insert into users (fio, bdate, phone, [address]) values ('Iris Townsend', '2022-04-19', '999-778-3854', '0039 David Junction');
insert into users (fio, bdate, phone, [address]) values ('Tilda Fortye', '2020-04-19', '253-935-0067', '75 Vermont Avenue');
insert into users (fio, bdate, phone, [address]) values ('Michel Massen', '2020-08-26', '873-181-5510', '777 Lindbergh Crossing');
insert into users (fio, bdate, phone, [address]) values ('Erny Creenan', '2021-10-06', '729-947-4103', '4242 Nobel Junction');
insert into users (fio, bdate, phone, [address]) values ('Ailene Badam', '2022-10-11', '778-418-1161', '2309 Merry Terrace');
insert into users (fio, bdate, phone, [address]) values ('Alicea Arington', '2022-03-15', '752-281-4620', '355 Lakewood Gardens Plaza');
insert into users (fio, bdate, phone, [address]) values ('Cymbre Broyd', '2022-07-12', '874-839-7913', '40 Kennedy Drive');
insert into users (fio, bdate, phone, [address]) values ('Ailina Tottie', '2021-01-10', '847-332-0869', '29 Helena Road');
insert into users (fio, bdate, phone, [address]) values ('Lynette Boraston', '2023-08-31', '480-677-8323', '61225 Lunder Road');
insert into users (fio, bdate, phone, [address]) values ('Wallis Twitchings', '2021-07-07', '545-593-7121', '366 5th Terrace');

--SELECT *
--FROM users
--WHERE phone LIKE '1%'
--ORDER BY id DESC
--WHERE phone LIKE '%101%'
--AND id % 2 = 1
--WHERE id IN (10, 15, 20) -- œŒ»—  œŒ —œ»— ”
--WHERE fio LIKE 'Tilda%' -- % - ◊“Œ ”√ŒƒÕŒ
--WHERE [address] NOT LIKE '29 Helena Road'
--WHERE id <> 10  --(<> - not equal)
--WHERE id between 10 and 15
--WHERE bdate between '2021-01-01' and '2021-12-31'

--¿√–≈√¿“Õ€≈ ‘”Õ ÷»»
--SELECT max(AGE), MIN(AGE), SUM(AGE), COUNT(AGE), AVG(AGE)