# Задание 3:
/*
Выберите все сообщения, отсортируйте сообщения по возрастанию даты отправления (created_at) 
и найдите разницу времени отправления между соседними сообщениями, 
получившегося списка. (используйте LEAD или LAG).
*/
USE homework_5;

SELECT *, 
TIMEDIFF(LEAD(created_at) OVER(), created_at) AS Next_messages
FROM messages
ORDER BY created_at;

SELECT * FROM messages;
