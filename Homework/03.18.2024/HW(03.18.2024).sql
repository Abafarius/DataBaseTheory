-- Создание таблиц
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
