/*
Задание 2:
Создайте функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
* С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
* с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
* с 18:00 до 00:00 — "Добрый вечер", 
* с 00:00 до 6:00 — "Доброй ночи".
*/

-- Создание функции:
DROP FUNCTION IF EXISTS hello;
DELIMITER //
CREATE FUNCTION hello()
RETURNS VARCHAR(15)
DETERMINISTIC
BEGIN
DECLARE time TIME;
DECLARE result_text VARCHAR(15);
SET time = CURRENT_TIME();
SET result_text = CASE 
	WHEN time BETWEEN '06:00:00' AND '11:59:00' THEN 'Доброе утро'
    WHEN time BETWEEN '12:00:00' AND '17:59:00' THEN 'Добрый день'
	WHEN time BETWEEN '18:00:00' AND '23:59:00' THEN 'Добрый вечер'
	ELSE 'Доброй ночи'
    END;
RETURN result_text;
END//
DELIMITER ;
-- Вызов функции:
SELECT hello();
