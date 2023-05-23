# Задание 3:
/*
Создайте таблицу “orders”, заполните ее значениями
Выберите все заказы. 
В зависимости от поля order_status выведите столбец full_order_status:
- OPEN – «Order is in open state» ; 
- CLOSED - «Order is closed»; 
- CANCELLED -  «Order is cancelled»
*/

# Запускаем базу данных
USE homework_2;

# Создаем таблицу
CREATE TABLE orders 
(id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
employee_id VARCHAR(3), 
amount DECIMAL NOT NULL, 
order_status VARCHAR(9) NOT NULL);

# Заполняем таблицу
INSERT orders (employee_id, amount, order_status) VALUES 
('e03', 15, 'OPEN'),
('e01', 25.5, 'OPEN'),
('e05', 100.7, 'CLOSED'),
('e02', 22.18, 'OPEN'),
('e04', 9.5, 'CANCELLED');

TRUNCATE orders;
ALTER TABLE orders MODIFY COLUMN amount DECIMAL (6, 2);

SELECT *,
CASE
    WHEN order_status IN ('OPEN') THEN 'Order is in open state'
    WHEN order_status IN ('CLOSED') THEN 'Order is closed'
    WHEN order_status IN ('CANCELLED') THEN 'Order is cancelled'
END AS full_order_status 
FROM orders;

SELECT * FROM orders;