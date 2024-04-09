CREATE TABLE Airports (
    AirportID INT PRIMARY KEY,
    Name VARCHAR(100),
    Location VARCHAR(100),
    Code VARCHAR(5)
);

CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY,
    Name VARCHAR(100),
    Country VARCHAR(100),
    IATA_Code VARCHAR(3)
);

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    AirlineID INT,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Price DECIMAL(10, 2),
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID),
    FOREIGN KEY (DepartureAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES Airports(AirportID)
);

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    Name VARCHAR(100),
    Gender CHAR(1),
    Age INT,
    Nationality VARCHAR(100)
);

CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    FlightID INT,
    PassengerID INT,
    SeatNumber VARCHAR(10),
    Class VARCHAR(20),
    Price DECIMAL(10, 2),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);

CREATE TABLE AirportStaff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(100),
    Department VARCHAR(100),
    Salary DECIMAL(10, 2)
);

CREATE TABLE Baggage (
    BaggageID INT PRIMARY KEY,
    PassengerID INT,
    Weight DECIMAL(10, 2),
    Description VARCHAR(255),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);


-- Наполнение таблицы Airports
INSERT INTO Airports (AirportID, Name, Location, Code) VALUES
(1, 'Heathrow Airport', 'London, UK', 'LHR'),
(2, 'John F. Kennedy International Airport', 'New York City, USA', 'JFK'),
(3, 'Los Angeles International Airport', 'Los Angeles, USA', 'LAX'),
(4, 'Paris Charles de Gaulle Airport', 'Paris, France', 'CDG'),
(5, 'Tokyo Haneda Airport', 'Tokyo, Japan', 'HND'),
(6, 'Dubai International Airport', 'Dubai, UAE', 'DXB'),
(7, 'Sydney Kingsford Smith Airport', 'Sydney, Australia', 'SYD');


-- Наполнение таблицы Airlines
INSERT INTO Airlines (AirlineID, Name, Country, IATA_Code) VALUES
(1, 'British Airways', 'UK', 'BA'),
(2, 'Delta Air Lines', 'USA', 'DL'),
(3, 'Lufthansa', 'Germany', 'LH'),
(4, 'Qantas', 'Australia', 'QF'),
(5, 'Emirates', 'UAE', 'EK'),
(6, 'Air France', 'France', 'AF'),
(7, 'Singapore Airlines', 'Singapore', 'SQ');


-- Наполнение таблицы Flights
INSERT INTO Flights (FlightID, AirlineID, DepartureAirportID, ArrivalAirportID, DepartureTime, ArrivalTime, Price) VALUES
(1, 1, 1, 2, '2024-04-04 10:00:00', '2024-04-04 14:00:00', 250.00),
(2, 2, 2, 1, '2024-04-05 12:00:00', '2024-04-05 16:00:00', 300.00),
(3, 3, 3, 1, '2024-04-06 08:00:00', '2024-04-06 15:00:00', 400.00),
(4, 4, 1, 5, '2024-04-07 10:00:00', '2024-04-07 23:00:00', 600.00),
(5, 5, 6, 2, '2024-04-08 12:00:00', '2024-04-08 18:00:00', 700.00),
(6, 6, 4, 7, '2024-04-09 14:00:00', '2024-04-09 21:00:00', 550.00),
(7, 7, 5, 3, '2024-04-10 16:00:00', '2024-04-10 20:00:00', 450.00);


-- Наполнение таблицы Passengers
INSERT INTO Passengers (PassengerID, Name, Gender, Age, Nationality) VALUES
(1, 'John Smith', 'M', 35, 'USA'),
(2, 'Maria Garcia', 'F', 28, 'Spain'),
(3, 'David Johnson', 'M', 45, 'USA'),
(4, 'Sophie Martin', 'F', 22, 'France'),
(5, 'Yuki Suzuki', 'F', 30, 'Japan'),
(6, 'Ahmed Khan', 'M', 40, 'UAE'),
(7, 'Anna Petrova', 'F', 27, 'Russia');


-- Наполнение таблицы Tickets
INSERT INTO Tickets (TicketID, FlightID, PassengerID, SeatNumber, Class, Price) VALUES
(1, 1, 1, 'A23', 'Economy', 250.00),
(2, 2, 2, 'B14', 'Business', 500.00),
(3, 3, 3, 'C15', 'Economy', 400.00),
(4, 4, 4, 'D22', 'Business', 800.00),
(5, 5, 5, 'E10', 'First Class', 1200.00),
(6, 6, 6, 'F05', 'Economy', 500.00),
(7, 7, 7, 'G07', 'Business', 700.00);


-- Наполнение таблицы AirportStaff
INSERT INTO AirportStaff (StaffID, Name, Position, Department, Salary) VALUES
(1, 'Michael Johnson', 'Security Officer', 'Security', 35000.00),
(2, 'Emily Brown', 'Customer Service Representative', 'Customer Service', 30000.00),
(3, 'Sophia Brown', 'Flight Attendant', 'Cabin Crew', 40000.00),
(4, 'Daniel Wilson', 'Airport Operations Manager', 'Operations', 60000.00),
(5, 'Olivia Smith', 'Baggage Handler', 'Ground Services', 35000.00),
(6, 'James Taylor', 'Air Traffic Controller', 'Air Traffic Control', 55000.00),
(7, 'Emma Jones', 'Customer Service Supervisor', 'Customer Service', 45000.00);


-- Наполнение таблицы Baggage
INSERT INTO Baggage (BaggageID, PassengerID, Weight, Description) VALUES
(1, 1, 20.5, 'Large suitcase'),
(2, 2, 15.0, 'Small backpack'),
(3, 3, 18.0, 'Large suitcase'),
(4, 4, 12.5, 'Backpack'),
(5, 5, 25.0, 'Golf clubs'),
(6, 6, 15.5, 'Duffel bag'),
(7, 7, 22.0, 'Suitcase');

SELECT A1.Name AS DepartureAirport, A2.Name AS ArrivalAirport, F.DepartureTime, F.ArrivalTime, F.Price, AL.Name AS Airline
FROM Flights AS F
JOIN Airports AS A1 ON F.DepartureAirportID = A1.AirportID
JOIN Airports AS A2 ON F.ArrivalAirportID = A2.AirportID
JOIN Airlines AS AL ON F.AirlineID = AL.AirlineID;
