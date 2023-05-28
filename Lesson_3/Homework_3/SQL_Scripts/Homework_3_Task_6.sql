# Задание 6:
# Выведите специальности, у которых средний возраст сотрудников меньше 30 лет.

SELECT post, AVG(age) AS 'Average age'
FROM Staff
GROUP BY post
HAVING AVG(age) < 30;