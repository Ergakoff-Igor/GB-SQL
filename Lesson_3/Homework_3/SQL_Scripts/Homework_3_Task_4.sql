# Задание 4:
# Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно.

SELECT post, COUNT(*) AS 'Quantity_of_staff_age_24-49'
FROM Staff
WHERE post IN ('Рабочий') AND age BETWEEN 24 AND 49;