# GB. SQL. Домашнее задание № 4

Таблица: 

__*[Task condition](https://drive.google.com/file/d/1TZzW8ZlDdvIfDC9C46bUeILey6opQjdu/view?usp=share_link)*__

__*[SQL script Create tables "Cats", "Shops"](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/SQL_Scripts/Create_tables_1.sql)*__

__*Таблица "Cats" для заданий:*__

![Cats table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Cats_table.png?raw=true)

__*Таблица "Shops" для заданий:*__

![Shops table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Shops_table.png?raw=true)

Используя JOIN-ы, выполните следующие операции:

1. Вывести всех котиков по магазинам по id (условие соединения shops.id = cats.shops_id)

__*[SQL script Homework 4 Task 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/SQL_Scripts/Homework_4_task_1.sql)*__

![Homework 4 Task 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Homework_4_task_1.png?raw=true)

2. Вывести магазины, в которых продается кот “Murzik” (попробуйте выполнить 2 способами)

    __*[SQL script Homework 4 Task 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/SQL_Scripts/Homework_4_task_2.sql)*__

    * Решение при помощи LEFT JOIN

    ![Homework 4 task 2 LEFT JOIN](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Homework_4_task_2_LEFT_JOIN.png?raw=true)

    * Решение с помощью подзапроса
    
    ![Homework 4 task 2 subquery](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Homework_4_task_2_subquery.png?raw=true)


3. Вывести магазины, в которых НЕ продаются коты “Murzik” и “Zuza”

__*[SQL script Homework 4 Task 3](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/SQL_Scripts/Homework_4_task_3.sql)*__

![Homework 4 Task 3](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Homework_4_task_3.png?raw=true)

4. Вывести название и цену для всех анализов, которые продавались 5 февраля 2020 и всю следующую неделю.

    __*[SQL script Create tables "Analysis", "GroupsAn", "Orders"](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/SQL_Scripts/Create_tables_2.sql)*__

    * Есть таблица анализов Analysis:\
    an_id — ID анализа;\
    an_name — название анализа;\
    an_cost — себестоимость анализа;\
    an_price — розничная цена анализа;\
    an_group — группа анализов.

    ![Analysis table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Analysis_table.png?raw=true)

    * Есть таблица групп анализов Groups:\
    gr_id — ID группы;\
    gr_name — название группы;\
    gr_temp — температурный режим хранения.

    ![GroupsAn table](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/GroupsAn_table.png?raw=true)

    * Есть таблица заказов Orders:\
    ord_id — ID заказа;\
    ord_datetime — дата и время заказа;\
    ord_an — ID анализа.

    ![Orders table part 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Orders_table_part_1.png?raw=true)

    ![Orders table part 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Orders_table_part_2.png?raw=true)

__*[SQL script Homework 4 Task 4](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/SQL_Scripts/Homework_4_task_4.sql)*__

![Homework 4 Task 4](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_4/Homework_4/ScreenShots/Homework_4_task_4.png?raw=true)












