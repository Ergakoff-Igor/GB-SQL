# Логические операции

USE lecture_2;

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

SELECT * FROM phonescatalog;

# Увеличить все цены на 3000
UPDATE phonescatalog
SET price = price + 3000;

# Вывести все данные марки 'Apple' и 'Samsung'
SELECT * FROM phonescatalog
WHERE manufacture
IN ('Apple', 'Samsung');

# Вывести все данные марки НЕ 'Apple' и 'Samsung'
SELECT * FROM phonescatalog
WHERE NOT manufacture
IN ('Apple', 'Samsung');


