CREATE TABLE Customers (
CustomerID INT PRIMARY KEY IDENTITY(1,1),
Forename VARCHAR(50) NOT NULL,
Surname VARCHAR(50) NOT NULL,
PhoneNumber VARCHAR(11) NOT NULL,
Age INT NOT NULL)
CREATE TABLE Tickets (
TicketID INT PRIMARY KEY IDENTITY(1,1),
SeatNumber INT NOT NULL,
CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID) NOT NULL,
CustomerType VARCHAR(11) NOT NULL,
PricePaid Money NOT NULL)
CREATE TABLE Performances (
PerformanceNumber INT PRIMARY KEY IDENTITY(1,1),
PerformanceTitle VARCHAR(50) NOT NULL,
PerformanceDate DATETIME2 NOT NULL,
)
CREATE TABLE Bookings (
BookingID INT PRIMARY KEY IDENTITY(1,1),
TicketID INT FOREIGN KEY REFERENCES Tickets(TicketID),
PerformanceNumber INT FOREIGN KEY REFERENCES Performances(PerformanceNumber))
CREATE TABLE Blockings (
SeatNumber INT NOT NULL, 
PerformanceNumber INT FOREIGN KEY REFERENCES Performances(PerformanceNumber),
PRIMARY KEY (PerformanceNumber, SeatNumber))

