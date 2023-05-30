# Задание 1:
# Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)

SELECT cats.name, shops.shopname
FROM cats
JOIN shops ON shops.id = cats.shops_id;