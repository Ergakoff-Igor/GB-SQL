# Задание № 5.4:
# С помощью регулярных выражений найти товары, в которых есть ЦИФРА "8"

USE homework_1;

SELECT * 
FROM phonescatalog
WHERE productName REGEXP'[8]';