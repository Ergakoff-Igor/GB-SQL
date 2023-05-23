# GB. SQL. Домашнее задание № 2

1. Используя операторы языка SQL, 
создайте таблицу “sales”. Заполните ее данными.

Рисунок к первому заданию:

![Условие задания 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/ScreenShots/Task_condition_1.png?raw=true)

*__[SQL script 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/SQL_Scripts/Task_1.sql)__*

![Скриншот решения 1](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/ScreenShots/Task_1.png?raw=true)

---

2.  Для данных таблицы “sales” укажите тип заказа в зависимости от кол-ва : 
    * меньше 100 - Маленький заказ
    * от 100 до 300 - Средний заказ
    * больше 300 - Большой заказ

Рисунок ко второму заданию:

![Условие задания 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/ScreenShots/Task_condition_2.png?raw=true)\

*__[SQL script 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/SQL_Scripts/Task_2.sql)__*

![Скриншот решения 2](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/ScreenShots/Task_2.png?raw=true)

---

3. Создайте таблицу “orders”, заполните ее значениями

![Условие задания 3](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/ScreenShots/Task_condition_3.png?raw=true)

    Выберите все заказы.
    В зависимости от поля order_status 
    выведите столбец full_order_status:
    * OPEN – «Order is in open state» ;
    * CLOSED - «Order is closed»;
    * CANCELLED -  «Order is cancelled»

*__[SQL script 3](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/SQL_Scripts/Task_3.sql)__*

![Скриншот решения 3](https://github.com/Ergakoff-Igor/GB-SQL/blob/main/Lesson_2/Homework_2/ScreenShots/Task_3.png?raw=true)

---

4.  Чем __*0*__ отличается от __*NULL*__?

__Ответ:__

__*NULL*__ - это специальное значение, которое используется в SQL для обозначения отсутствия данных. Оно отличается от пустой строки или нулевого значения, так как NULL означает отсутствие какого-либо значения в ячейке таблицы.

__*0*__ - это целое число, которое при сложении с любым числом или вычитании из него не меняет последнее, то есть даёт результат, равный этому последнему.



