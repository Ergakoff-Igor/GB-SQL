# Задание № 5.2:
# С помощью регулярных выражений найти товары, в которых есть упоминание "Galaxy"

USE homework_1;

SELECT * 
FROM phonescatalog
WHERE productName LIKE'%Galaxy%';