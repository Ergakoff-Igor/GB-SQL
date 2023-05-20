# Задание 2:
USE seminar_1;

# 1.	Получить список с информацией обо всех студентах
SELECT * FROM students;

# 2. 	Получить список всех студентов с именем “Антон”(или любого существующего студента)
SELECT * FROM students 
WHERE name = 'Pavel';

# 3. 	Вывести имя и название курса из таблички "Студент"
SELECT name, email FROM students;

# 4*.	Выбрать студентов, фамилии которых начинаются с буквы «А».
SELECT * FROM students 
WHERE name studentsLIKE'D%';