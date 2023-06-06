/*
Задание 1:
Создайте таблицу users_old, аналогичную таблице users. Создайте процедуру,  
с помощью которой можно переместить любого (одного) пользователя из таблицы users в таблицу users_old. 
(использование транзакции с выбором commit или rollback – обязательно).
*/

USE homework_6;

CREATE TABLE Users_old LIKE users;

DROP PROCEDURE IF EXISTS task_1;
DELIMITER //
CREATE PROCEDURE task_1(IN find_user INT)
DETERMINISTIC
BEGIN
START TRANSACTION;
INSERT INTO users_old (firstname, lastname, email) 
SELECT firstname, lastname, email 
	FROM users 
	WHERE id = find_user;
DELETE FROM users 
	WHERE id = find_user;
	IF find_user IN (SELECT id FROM users_old WHERE find_user = id) AND find_user NOT IN (SELECT id FROM users WHERE find_user = id) THEN COMMIT;
	ELSE ROLLBACK;
    END IF;
END //
DELIMITER ;

-- вызов процедуры
CALL task_1(1);

SELECT * FROM Users_old;
SELECT * FROM users;
