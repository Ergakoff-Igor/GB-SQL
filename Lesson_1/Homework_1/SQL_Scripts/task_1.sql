# Задание № 1:
# Создайте таблицу с мобильными телефонами, используя SQL-скрипт. Заполните БД данными.
# Добавьте скриншот на платформу в качестве ответа на ДЗ

CREATE SCHEMA `homework_1` ;
USE homework_1;

CREATE TABLE `phonesCatalog` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `productName` VARCHAR(45) NOT NULL,
  `manufacture` VARCHAR(45) NOT NULL,
  `productCount` INT NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`id`));
  
INSERT phonesCatalog (productName, manufacture, productCount, price) 
VALUES ('iPhone X', 'Apple', 3, 76000), 
('iPhone 8', 'Apple', 2, 51000), 
('Galaxy S9', 'Samsung', 2, 56000), 
('Galaxy S8', 'Samsung', 1, 41000),
('P20 Pro', 'Huawei', 5, 36000),  
('9T', 'Xiaomi', 3, 30000);