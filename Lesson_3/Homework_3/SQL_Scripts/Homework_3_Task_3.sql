# Задание 3:
# Посчитайте суммарную зарплату (salary) по каждой специальности (роst)

SELECT post, SUM(salary) AS 'Sum_Salary'
FROM Staff
GROUP BY post;