USE lecture_2;

-- CREATE TABLE - Создает базу данных
CREATE TABLE Customers (
  Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Age INT,
  FirstName VARCHAR(20) NOT NULL,
  LastName VARCHAR(20) NOT NULL,
  Phone VARCHAR(20) NOT NULL);
  
  SELECT * FROM customers;
  