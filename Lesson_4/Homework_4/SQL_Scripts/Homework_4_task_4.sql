# Задание 4:
# Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.

SELECT Analysis.an_name, Analysis.an_price, Orders.ord_datetime
FROM Orders
LEFT JOIN Analysis ON Analysis.an_id = Orders.ord_an
WHERE DATE(Orders.ord_datetime) >= '2020-02-05';