CREATE DATABASE lecture_3;
USE lecture_3;

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

# Сортировка цены по возрастанию
SELECT * 
FROM productsDb
ORDER BY price; ## Либо ASC

-- ORDER BY
# Сортировка цены по убыванию
SELECT * 
FROM productsDb
ORDER BY price DESC;

-- COUNT
# Вывод количества записей
SELECT COUNT(*) AS Count
FROM productsDb;

-- LIMIT (В MS SQL Server используется TOP)
# Вывести первые 5 записей
SELECT * 
FROM productsDb
LIMIT 5;

# Вывести с 2 до 3
SELECT * 
FROM productsDb
LIMIT 1, 2; #ервое число - количество пропускаемых строк; Второе число - количество выводимых строкalter

-- SUM
# Вывести сумму всех телефонов
SELECT SUM(price) AS totalSum
FROM productsDb;

-- MIN / MAX
# Вывести минимальную сумму по производителю 'Apple' 
SELECT MIN(price) 
FROM productsDb
WHERE manufacturer IN ('Apple');

# Вывести статистику по производителю 'Samsung'
SELECT 
	MIN(price), 
	MAX(price), 
    AVG(price)
FROM productsDb
WHERE manufacturer IN ('Samsung');

# Задание:
SELECT manufacturer, COUNT(*) AS Models, price, productCount
FROM productsDb
WHERE price > 40000
GROUP BY manufacturer;
/*
SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));
*/


SELECT * FROM productsDb;






  
  