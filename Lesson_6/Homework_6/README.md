# GB. SQL. Домашнее задание № 6

Для решения задач используйте базу данных, скрипт создания которой прикреплен к уроку: 

__*[Task condition](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_6/Homework_6/SQL_Scripts/HW_6_Create_tables.sql)*__

__*Таблица "Users"  для заданий:*__

![Users table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_6/Homework_6/ScreenShots/Users_table.png?raw=true)


1. Создайте таблицу users_old, аналогичную таблице users. Создайте процедуру,  с помощью которой можно переместить любого *(одного)* пользователя из таблицы users в таблицу users_old. *(использование транзакции с выбором commit или rollback – обязательно)*.

__*[SQL script Homework 6 Task 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_6/Homework_6/SQL_Scripts/HW_6_task_1.sql)*__

__*Таблица "Users"  после выполнения задания:*__

![Homework 6 Task 1 Users table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_6/Homework_6/ScreenShots/HV_6_task_1_Users_table.png?raw=true)

__*Таблица "Users_old"  после выполнения задания:*__

![Homework 6 Task 1 Users_old table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_6/Homework_6/ScreenShots/HV_6_task_1_Users_old_table.png?raw=true)

2. Создайте функцию hello(), которая будет возвращать приветствие, в зависимости от текущего времени суток. 
* С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", 
* с 12:00 до 18:00 функция должна возвращать фразу "Добрый день", 
* с 18:00 до 00:00 — "Добрый вечер", 
* с 00:00 до 6:00 — "Доброй ночи".

__*[SQL script Homework 6 Task 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_6/Homework_6/SQL_Scripts/HW_6_task_2.sql)*__

![Homework 6 Task 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_6/Homework_6/ScreenShots/HV_6_task_2.png?raw=true)










