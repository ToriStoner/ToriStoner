#Question 1 

SELECT name FROM `country` WHERE region = "South America"; 

#Question 2: 

SELECT name, population FROM `country` WHERE name = "Germany";

#Question 3: 

SELECT name FROM `city` WHERE CountryCode = "JPN";

#Question 4: 

SELECT name, Population FROM `country` WHERE continent = "Africa" ORDER BY population DESC LIMIT 3;

#Question 5: 

SELECT name, LifeExpectancy, Population FROM `country` WHERE population > 1000000 AND population < 5000000;

#Question 6: 

SELECT country.Name FROM country
JOIN countrylanguage ON country.Code = countrylanguage.CountryCode
WHERE countrylanguage.Language = 'French' AND countrylanguage.IsOfficial = 'T';

Chinook Database questions 

#Question 1: 

SELECT AlbumId, Title FROM Album WHERE ArtistId = (SELECT ArtistId FROM Artist WHERE Name = 'AC/DC');

#Question 2: 

SELECT FirstName, LastName, Email FROM `Customer` WHERE Country = "Brazil";

#Question 3: 

SELECT name FROM `Playlist`;

#Question 4: 

SELECT COUNT(name) FROM `Track` WHERE GenreId = 1;

#Question 5: 

SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards');


#Question 6
SELECT Customer.CustomerId, SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity) AS IndividualSales FROM InvoiceLine JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId JOIN Customer ON Invoice.CustomerId = Customer.CustomerId GROUP BY CustomerId ORDER BY IndividualSales DESC;

#Part 2 

Create TABLE customers (
Name VARCHAR(80), 
Surname VARCHAR(80), 
Price INT, 
Product VARCHAR(80), 
PRIMARY KEY (Name, Surname, OrderDate)
);

INSERT INTO customers(Name, Surname, Price, Product)
VALUES ("Joe", "Ryan", 61, "DeskChair");

INSERT INTO customers(Name, Surname, Price, Product)
VALUES ("Bill", "Robinson", 90, "Dresser");

INSERT INTO customers(Name, Surname, Price, Product)
VALUES ("Lacy", "Robinson", 200, "Couch");

INSERT INTO customers(Name, Surname, Price, Product)
VALUES ("Jack", "Hamilton", 165, "Crib");

INSERT INTO customers(Name, Surname, Price, Product)
VALUES ("Emilia", "Johnson", 59, "Mirror");

#Table 2 

CREATE TABLE Inventory ( ProductName VARCHAR(80), Color VARCHAR(80), Width INT, Height INT, Length INT, Quantity INT );

INSERT INTO Inventory(ProductName, Color, Width, Height, Length, Quantity)
VALUES ("Dresser", "Brown", 30, 50, 18, 107);

INSERT INTO Inventory(ProductName, Color, Width, Height, Length, Quantity)
VALUES ("Desk", "White", 40, 30, 25, 99);

INSERT INTO Inventory(ProductName, Color, Width, Height, Length, Quantity)
VALUES ("WoodenChair", "Brown", 16, 16, 16, 65);

INSERT INTO Inventory(ProductName, Color, Width, Height, Length, Quantity)
VALUES ("Bookshelf", "Black", 20, 70, 40, 35);

INSERT INTO Inventory(ProductName, Color, Width, Height, Length, Quantity)
VALUES ("SmallLamp", "Brown", 6, 10, 4, 289);


#Table 3
CREATE TABLE employees( Name VARCHAR(80), Surname VARCHAR(80), ZipCode INT, Salary INT, Title VARCHAR(80), YearsEmployeed INT, PRIMARY KEY (Name, Surname, ZipCode) );

INSERT INTO employees(Name, Surname, ZipCode, Salary, Title, YearsEmployeed)
VALUES ("Erik", "Cambell", 20394, 30, "Customer Service", 1);

INSERT INTO employees(Name, Surname, ZipCode, Salary, Title, YearsEmployeed)
VALUES ("Jillian", "Kim", 79345, 40, "General Manager", 2)


INSERT INTO employees(Name, Surname, ZipCode, Salary, Title, YearsEmployeed)
VALUES ("Katherine", "Jones", 65743, 60, "Owner", 3)


INSERT INTO employees(Name, Surname, ZipCode, Salary, Title, YearsEmployeed)
VALUES ("Mathew", "Shoe", 98765, 25, "Security", 1)


INSERT INTO employees(Name, Surname, ZipCode, Salary, Title, YearsEmployeed)
VALUES ("Natalia", "Smith", 30948, 20, "Associate", 1)

#3 Queries 

#1 Find the three most expensive items customers have bought. 

SELECT Product FROM customers
ORDER BY Price DESC 
LIMIT 3;

#2 Retrieve the items that have a quantity of above 70. 

SELECT ProductName, Quantity FROM Inventory WHERE Quantity > 70;

#3 List the employees with more than 1 year of experience. 

SELECT YearsEmployeed, Name, Surname FROM employees WHERE YearsEmployeed > 1;



