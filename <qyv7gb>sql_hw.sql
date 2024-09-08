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

#Question 7: 

SELECT AlbumId, Title FROM Album WHERE ArtistId = (SELECT ArtistId FROM Artist WHERE Name = 'AC/DC');

#Question 8: 

SELECT FirstName, LastName, Email FROM `Customer` WHERE Country = "Brazil";

#Question 9: 

SELECT name FROM `Playlist`;

#Question 10: 

SELECT COUNT(name) FROM `Track` WHERE GenreId = 1;

#Question 11: 

SELECT FirstName, LastName FROM Employee WHERE ReportsTo = (SELECT EmployeeId FROM Employee WHERE FirstName = 'Nancy' AND LastName = 'Edwards');


#Question 12:
SELECT Customer.CustomerId, SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity) AS IndividualSales FROM InvoiceLine JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId JOIN Customer ON Invoice.CustomerId = Customer.CustomerId GROUP BY CustomerId ORDER BY IndividualSales DESC;

#Part 2 

Create TABLE CustomerInformation (
Name VARCHAR(80), 
Surname VARCHAR(80), 
Price INT, 
Product VARCHAR(80), 
EmployeeID INT, 
PRIMARY KEY (Name, Surname, Product)
);

INSERT INTO customers(Name, Surname, Price, Product, EmployeeID)
VALUES ("Joe", "Ryan", 61, "DeskChair", 1);

INSERT INTO customers(Name, Surname, Price, Product, EmployeeID)
VALUES ("Bill", "Robinson", 90, "Dresser", 2);

INSERT INTO customers(Name, Surname, Price, Product, EmployeeID)
VALUES ("Lacy", "Robinson", 200, "Couch", 3);

INSERT INTO customers(Name, Surname, Price, Product, EmployeeID)
VALUES ("Jack", "Hamilton", 165, "Crib", 4);

INSERT INTO customers(Name, Surname, Price, Product, EmployeeID)
VALUES ("Emilia", "Johnson", 59, "Mirror", 5);

#Table 2 

CREATE TABLE ProductsList ( Product VARCHAR(80), Color VARCHAR(80), Width INT, Height INT, Length INT, Quantity INT );

INSERT INTO Inventory(Product, Color, Width, Height, Length, Quantity)
VALUES ("Dresser", "Brown", 30, 50, 18, 107);

INSERT INTO Inventory(Product, Color, Width, Height, Length, Quantity)
VALUES ("Mirror", "White", 40, 30, 25, 99);

INSERT INTO Inventory(Product, Color, Width, Height, Length, Quantity)
VALUES ("Crib", "Brown", 16, 16, 16, 65);

INSERT INTO Inventory(Product, Color, Width, Height, Length, Quantity)
VALUES ("Desk", "Black", 20, 70, 40, 35);

INSERT INTO Inventory(Product, Color, Width, Height, Length, Quantity)
VALUES ("Chair", "Brown", 6, 10, 4, 289);


#Table 3
CREATE TABLE EmployeeRoles( Name VARCHAR(80), Surname VARCHAR(80), ZipCode INT, Salary INT, Title VARCHAR(80), YearsEmployed INT, EmployeeID INT, PRIMARY KEY (Name, Surname, ZipCode) );

INSERT INTO EmployeeRoles(Name, Surname, ZipCode, Salary, Title, YearsEmployed, EmployeeID)
VALUES ("Erik", "Cambell", 20394, 30, "Customer Service", 1, 1);

INSERT INTO EmployeeRoles(Name, Surname, ZipCode, Salary, Title, YearsEmployed, EmployeeID)
VALUES ("Jillian", "Kim", 79345, 40, "General Manager", 2, 2);


INSERT INTO EmployeeRoles(Name, Surname, ZipCode, Salary, Title, YearsEmployed, EmployeeID)
VALUES ("Katherine", "Jones", 65743, 60, "Owner", 3,3);


INSERT INTO EmployeeRoles(Name, Surname, ZipCode, Salary, Title, YearsEmployed, EmployeeID)
VALUES ("Mathew", "Shoe", 98765, 25, "Security", 1,4);


INSERT INTO EmployeeRoles(Name, Surname, ZipCode, Salary, Title, YearsEmployed, EmployeeID)
VALUES ("Natalia", "Smith", 30948, 20, "Associate", 1, 5)

#3 Queries 

#1 Find the three most expensive items customers have bought. 

SELECT Product FROM customers
ORDER BY Price DESC 
LIMIT 3;

#2 Retrieve the items that have a quantity of above 70. 

SELECT ProductName, Quantity FROM Inventory WHERE Quantity > 70;

#3 List the employees with more than 1 year of experience. 

SELECT YearsEmployeed, Name, Surname FROM employees WHERE YearsEmployeed > 1;




