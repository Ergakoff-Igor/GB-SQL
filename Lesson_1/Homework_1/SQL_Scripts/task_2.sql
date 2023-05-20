# Задание № 2:
# Выведите название, производителя и цену для товаров, количество которых превышает 2 
# (SQL - файл, скриншот, либо сам код)

USE homework_1;

SELECT manufacture, price 
FROM phonescatalog
WHERE productCount > 2;
