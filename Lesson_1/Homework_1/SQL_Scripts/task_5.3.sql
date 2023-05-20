# Задание № 5.3:
# С помощью регулярных выражений найти товары, в которых есть ЦИФРЫ

USE homework_1;

SELECT * 
FROM phonescatalog
WHERE productName REGEXP'[0-9]';