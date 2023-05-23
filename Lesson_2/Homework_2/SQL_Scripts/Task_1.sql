# Задание 1:
/*
Используя операторы языка SQL, 
создайте таблицу “sales”. Заполните ее данными.
*/

# Создаем Базу данных
CREATE DATABASE homework_2;
# Запускаем базу данных
USE homework_2;

# Создаем таблицу
CREATE TABLE sales (id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, order_date DATE NOT NULL, count_product INT NOT NULL);

# Заполняем таблицу
INSERT sales (order_date, count_product) VALUES 
('2022-01-01', 156),
('2022-01-02', 180),
('2022-01-03', 21),
('2022-01-04', 124),
('2022-01-05', 341);

SELECT * FROM sales;