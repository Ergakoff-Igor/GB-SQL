CREATE DATABASE Seminar_5;
USE Seminar_5;

CREATE TABLE academic_record (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	name VARCHAR(45),
	quartal  VARCHAR(45),
    subject VARCHAR(45),
	grade INT
);

INSERT INTO academic_record (name, quartal, subject, grade)
values
	('Александр','1 четверть', 'математика', 4),
	('Александр','2 четверть', 'русский', 4),
	('Александр', '3 четверть','физика', 5),
	('Александр', '4 четверть','история', 4),
	('Антон', '1 четверть','математика', 4),
	('Антон', '2 четверть','русский', 3),
	('Антон', '3 четверть','физика', 5),
	('Антон', '4 четверть','история', 3),
    ('Петя', '1 четверть', 'физика', 4),
	('Петя', '2 четверть', 'физика', 3),
	('Петя', '3 четверть', 'физика', 4),
	('Петя', '2 четверть', 'математика', 3),
	('Петя', '3 четверть', 'математика', 4),
	('Петя', '4 четверть', 'физика', 5);
    
# Задача 1. Получить с помощью оконных функции:
# средний балл ученика 
# наименьшую оценку ученика
# наибольшую оценку ученика
# сумму всех оценок
# количество всех оценок
SELECT *, 
AVG(grade) OVER w AS Avg_grade,
MIN(grade) OVER w AS Min_grade,
MAX(grade) OVER w AS Max_grade,
SUM(grade) OVER w AS Sum_grade,
COUNT(grade) OVER w AS Count_grade
FROM academic_record
WINDOW w AS (PARTITION BY name ORDER BY name);

/*
Задача 2. Получить информацию об оценках Пети по физике по четвертям:
текущая успеваемость 
оценка в следующей четверти
оценка в предыдущей четверти
*/
SELECT name, quartal, grade, 
LEAD (grade) OVER w AS Next_grade, 
LAG (grade) OVER w AS Last_grade
FROM academic_record
WHERE subject IN ('физика') AND name IN ('Петя')
WINDOW w AS (PARTITION BY subject);

SELECT name, quartal, grade, 
LEAD (grade) OVER w AS Next_grade, 
LAG (grade) OVER w AS Last_grade
FROM academic_record
WHERE subject IN ('физика') AND name IN ('Петя')
WINDOW w AS (ORDER BY quartal);

SELECT name, quartal, grade, 
LEAD (grade, 1, 0) OVER w AS Next_grade, 
LAG (grade, 2, 'not def') OVER w AS Last_grade
FROM academic_record
WHERE subject IN ('физика') AND name IN ('Петя')
WINDOW w AS (ORDER BY quartal);

# Временная таблица (TEMPORARY  TABLE)
CREATE TEMPORARY TABLE new_tbl AS
SELECT * FROM orig_tbl LIMIT 0;

# Обобщеное табличное выражение (WITH)
WITH
  cte1 AS (SELECT a, b FROM table1),
  cte2 AS (SELECT c, d FROM table2)
SELECT b, d FROM cte1 JOIN cte2
WHERE cte1.a = cte2.c;

# Представление (VIEW)
CREATE OR REPLACE VIEW v_tbl AS
SELECT * FROM orig_tbl LIMIT 0;

# Показать представления
SHOW FULL TABLES 
WHERE table_type = 'VIEW';

SELECT * FROM academic_record;