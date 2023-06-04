# GB. SQL. Домашнее задание № 5

Для решения задач используйте базу данных, скрипт создания которой прикреплен к уроку: 

__*[Task condition](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/SQL_Scripts/HW_5_Create_tables.sql)*__

__*Таблица "users"  для заданий:*__

![Users table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/ScreenShots/Users_table.png?raw=true)

__*Таблица "profiles"  для заданий:*__

![Profiles table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/ScreenShots/Profiles_table.png?raw=true)

__*Таблица "messages"  для заданий:*__

![Messages table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/ScreenShots/Messages_table.png?raw=true)

1. Создайте представление, в которое попадет информация о  пользователях (имя, фамилия, город и пол), которые не старше 20 лет.

__*[SQL script Homework 5 Task 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/SQL_Scripts/HW_5_task_1.sql)*__

![Homework 5 Task 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/ScreenShots/HW_5_task_1_correct.png?raw=true)

2. Найдите кол-во  отправленных сообщений каждым пользователем и  выведите ранжированный список пользователей, указав имя и фамилию пользователя, количество отправленных сообщений и место в рейтинге 
(первое место у пользователя с максимальным количеством сообщений). 
(используйте DENSE_RANK)

__*[SQL script Homework 5 Task 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/SQL_Scripts/HW_5_task_2.sql)*__

![Homework 5 Task 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/ScreenShots/HW_5_task_2.png?raw=true)

3. Выберите все сообщения, отсортируйте сообщения по возрастанию даты отправления (created_at) и найдите разницу времени отправления между соседними сообщениями, получившегося списка. (используйте LEAD или LAG)

__*[SQL script Homework 5 Task 3](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/SQL_Scripts/HW_5_task_3.sql)*__

![Homework 5 Task 3](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_5/Homework_5/ScreenShots/HW_5_task_3.png?raw=true)












