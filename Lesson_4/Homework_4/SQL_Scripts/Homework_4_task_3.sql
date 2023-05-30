# Задание 3:
# Вывести магазины, в которых НЕ продаются коты “Murzik” и “Zuza”

SELECT shopname
FROM shops
WHERE id NOT IN (
SELECT shops_id 
FROM cats
WHERE name IN ('Murzik', 'Zuza')
);