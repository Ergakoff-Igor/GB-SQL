# Задание 1:
# Создайте представление, в которое попадет информация о  пользователях (имя, фамилия, город и пол), которые не старше 20 лет.

USE homework_5;

CREATE OR REPLACE VIEW Users_info AS
SELECT CONCAT(users.firstname, ' ', users.lastname) AS Full_name, profiles.hometown, profiles.gender
FROM users
RIGHT JOIN profiles ON users.id = profiles.user_id;

SELECT * FROM Users_info;
