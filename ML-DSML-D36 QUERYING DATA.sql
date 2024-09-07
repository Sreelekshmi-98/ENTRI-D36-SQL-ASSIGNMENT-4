CREATE DATABASE Assignment;

USE Assignment;

CREATE TABLE Country (Id INT PRIMARY KEY, Country_name VARCHAR(40), Population INT,
    Area FLOAT);

INSERT INTO Country (Id, Country_name, Population, Area)
VALUES
(1, 'Japan', 123753041, 364555),
(2, 'Australia', 26713205, 26713205),
(3, 'Switzerland', 8921981, 39516),
(4, 'Russia', 144820423, 16376870),
(5, 'Canada', 39742430, 1943950),
(6, 'Ireland', 5255017, 68890),
(7, 'UK', 69138192, 241930),
(8, 'USA',345426571, 298170),
(9, 'Germany', 84552242, 348560),
(10, 'India', 1450935791, 2973190);

SELECT * FROM Country;

CREATE TABLE Persons (Id INT PRIMARY KEY, Fname VARCHAR(60), Lname VARCHAR(60),
    Population INT, Rating FLOAT, Country_Id INT, Country_name VARCHAR(60),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id));
    
    
    INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'Frederick', 'Louis', 53429, 4.7,9, 'Germany'),
(2, 'Noah', 'Murphy', 1203, 4.2, 8, 'Ireland'),
(3, 'Robert', 'Jones', 64790, 3.3, 1,NULL),
(4, 'Margaret', 'Lawrence', 40639, 4.9, 6, 'Canada'),
(5, 'Isha', 'Sharma', 73698, 4.2, 1, 'India'),
(6, 'Robert', 'Walser', 2004, 3.9, 2, 'Switzerland'),
(7, 'Rose','Byrne', 10479, 4, 3, 'Australia'),
(8, 'Emma', 'Thompson', 69804, 4.9, 5, 'UK'),
(9, 'Christopher', 'Jones', 470, 3.4, 2, NULL),
(10, 'Richard', 'Ford', 83697, 4.6,5 ,'USA');

SELECT * FROM Persons;

SELECT DISTINCT Country_name FROM Persons;

SELECT Fname AS FirstName, Lname AS LastName FROM Persons;

SELECT * FROM Persons WHERE Rating > 4.0;

SELECT * FROM Country WHERE Population > 1000000;

SELECT * FROM Persons WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT * FROM Persons WHERE Country_name IS NULL;

SELECT * FROM Persons WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT * FROM Persons WHERE Country_name NOT IN ('India', 'Australia');

SELECT * FROM Country WHERE Population BETWEEN 500000 AND 2000000;

SELECT * FROM Country WHERE Country_name NOT LIKE 'C%';






