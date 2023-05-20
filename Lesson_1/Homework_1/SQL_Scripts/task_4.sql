# Задание № 4:
# Выведите информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000**

USE homework_1;

SELECT * 
FROM phonescatalog
WHERE productCount * price BETWEEN 100000 AND 145000;