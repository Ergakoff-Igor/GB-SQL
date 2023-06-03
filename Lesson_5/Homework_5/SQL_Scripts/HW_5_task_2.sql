# Задание 2:
/*
Найдите кол-во  отправленных сообщений каждым пользователем и выведите ранжированный список пользователей, 
указав имя и фамилию пользователя, количество отправленных сообщений и место в рейтинге 
(первое место у пользователя с максимальным количеством сообщений). 
(используйте DENSE_RANK).
*/
USE homework_5;

# Метод нахождения Рангов по количеству отправленных сообщений и вывод в представление
CREATE OR REPLACE VIEW Top_massages AS
SELECT from_user_id, DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS Rank_messages, 
COUNT(*) AS Count_massages 
FROM messages
GROUP BY from_user_id;

# JOIN Таблицы с рангами и таблицы с пользователями для добавления имени и фамилии, а также вывод id пользователя для удобства
SELECT users.id, CONCAT(users.firstname, ' ', users.lastname) AS Full_name, Top_massages.Rank_messages, Top_massages.Count_massages
FROM users
JOIN Top_massages ON users.id = Top_massages.from_user_id
ORDER BY Top_massages.Rank_messages;

SELECT * FROM Top_massages;
SELECT * FROM users;
SELECT * FROM messages;
