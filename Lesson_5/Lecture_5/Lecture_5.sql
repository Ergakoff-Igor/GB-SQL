CREATE DATABASE Lecture_5;
USE Lecture_5;

CREATE TABLE `productsDb` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productName` VARCHAR(45) NOT NULL,
  `manufacturer` VARCHAR(45) NOT NULL,
  `productCount` INT NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`id`));
  
INSERT productsDb (productName, manufacturer, productCount, price) 
VALUES ('iPhone X', 'Apple', 3, 76000), 
('iPhone 8', 'Apple', 2, 51000), 
('Galaxy S9', 'Samsung', 2, 56000), 
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000),  
('9T', 'Xiaomi', 3, 30000);

SELECT * FROM productsDb;

CREATE VIEW CopyProducts AS
SELECT price, productCount, manufacturer
FROM productsDb
WHERE manufacturer IN ('Apple');

SELECT * FROM CopyProducts;

# Удаление виртуальной таблицыalter
DROP VIEW CopyProducts;

# Добавление поля productName
ALTER VIEW CopyProducts AS
SELECT price, productCount, manufacturer, productName
FROM productsDb
WHERE manufacturer IN ('Apple');
