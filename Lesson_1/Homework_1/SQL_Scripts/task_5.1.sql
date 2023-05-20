# Задание № 5.1:
# С помощью регулярных выражений найти товары, в которых есть упоминание "Iphone"

USE homework_1;

SELECT * 
FROM phonescatalog
WHERE productName LIKE'%iphone%';