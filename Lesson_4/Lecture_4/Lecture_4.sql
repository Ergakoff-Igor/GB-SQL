CREATE DATABASE lecture_4;
USE lecture_4;

CREATE TABLE Customers 
(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Firstname VARCHAR(20) NOT NULL, 
  Lastname VARCHAR(20) NOT NULL, 
  accountSum DECIMAL
);

CREATE TABLE Employees 
(
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Firstname VARCHAR(20) NOT NULL, 
  Lastname VARCHAR(20) NOT NULL
);

INSERT INTO Customers (firstname, lastname, accountSum)
VALUES
('Tom', 'Smith', 2000),
('Sam', 'Brown', 3000),
('Mark', 'Adams', 2500),
('Paul', 'Ins', 4200),
('John', 'Smith', 2000),
('Tim', 'Cook', 2000);

SELECT * FROM Customers;

INSERT INTO Employees (firstname, lastname)
VALUES
('Homer', 'Simpson'),
('Tom', 'Smith'),
('Mark', 'Adams'),
('Nick', 'Svensson');

SELECT * FROM Employees;

# UNION удаляет повтаряющиеся значения
SELECT firstname, lastname 
FROM Customers
UNION 
SELECT firstname, lastname 
FROM Employees
ORDER BY firstname DESC;

# UNION ALL выводит все значения
SELECT firstname, lastname 
FROM Customers
UNION ALL
SELECT firstname, lastname 
FROM Employees
ORDER BY firstname DESC;

# Начисление процентов
SELECT firstname, lastname, accountSum + accountSum * 0.1 AS TotalSum
FROM Customers WHERE accountSum < 3000
UNION SELECT firstname, lastname, accountSum + accountSum * 0.3 AS TotalSum
FROM Customers WHERE accountSum >= 3000;



