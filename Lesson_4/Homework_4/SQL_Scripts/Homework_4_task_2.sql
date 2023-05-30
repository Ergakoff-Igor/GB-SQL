# Задание 2:
# Вывести магазины, в которых продается кот “Murzik” (попробуйте выполнить 2 способами)

# Решение при помощи LEFT JOIN
SELECT shops.shopname, cats.name
FROM shops
LEFT JOIN cats ON shops.id = cats.shops_id
WHERE cats.name = 'Murzik';

# Решение с помощью подзапроса
SELECT shopname
FROM shops
WHERE id IN (
SELECT shops_id 
FROM cats
WHERE name IN ('Murzik')
);