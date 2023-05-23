# CREATE DATABASE seminar_2;
USE seminar_2;
/*
В таблице имеются следующие атрибуты:
id -- уникальный идентификатор фильма,
title -- название фильма
title_eng -- название фильма на английском языке
year_movie  --  год выхода
count_min -- длительность фильма в минутах
storyline -- сюжетная линия, небольшое описание фильма
Все поля (кроме title_eng, count_min и storyline) обязательны для заполнения. 
Поле id : первичный ключ, который заполняется автоматически.
*/

CREATE TABLE moves (id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, title VARCHAR(30) NOT NULL, title_eng VARCHAR(30), 
year_movie YEAR NOT NULL, count_min INT, storyline VARCHAR(255));

INSERT moves (title, title_eng, year_movie, count_min, storyline) VALUES
('Игры разума', 'A Beautiful Mind', 2001, 135, 'От всемирной известности до греховных глубин — все это познал на своей шкуре Джон Форбс Нэш-младший. Математический гений, он на заре своей карьеры сделал титаническую работу в области теории игр, которая перевернула этот раздел математики и практически принесла ему международную известность. Однако буквально в то же время заносчивый и пользующийся успехом у женщин Нэш получает удар судьбы, который переворачивает уже его собственную жизнь.'),
('Форрест Гамп', 'Forrest Gump', 1994, 142, 'Сидя на автобусной остановке, Форрест Гамп — не очень умный, но добрый и открытый парень — рассказывает случайным встречным историю своей необыкновенной жизни. С самого малолетства парень страдал от заболевания ног, соседские мальчишки дразнили его, но в один прекрасный день Форрест открыл в себе невероятные способности к бегу. Подруга детства Дженни всегда его поддерживала и защищала, но вскоре дороги их разошлись.'),
('Иван Васильевич меняет профессию', NULL, 1998, 128,'Инженер-изобретатель Тимофеев сконструировал машину времени, которая соединила его квартиру с далеким шестнадцатым веком - точнее, с палатами государя Ивана Грозного. Туда-то и попадают тезка царя пенсионер-общественник Иван Васильевич Бунша и квартирный вор Жорж Милославский. На их место в двадцатом веке «переселяется» великий государь. Поломка машины приводит ко множеству неожиданных и забавных событий...'),
('Назад в будущее', 'Back to the Future', 1985, 116, 'Подросток Марти с помощью машины времени, сооружённой его другом-профессором доком Брауном, попадает из 80-х в далекие 50-е. Там он встречается со своими будущими родителями, ещё подростками, и другом-профессором, совсем молодым.'),
('Криминальное чтиво', 'Pulp Fiction', 1994, 154, NULL);

SELECT * FROM moves;

ALTER TABLE moves MODIFY COLUMN storyline TEXT;
ALTER TABLE moves MODIFY COLUMN title VARCHAR(45);


# Переименовать сущность movies в cinema.
RENAME TABLE moves TO cinema;
SELECT * FROM cinema;

# Добавить сущности cinema новый атрибут status_active (тип BIT) и атрибут genre_id.
ALTER TABLE cinema ADD COLUMN status_active BIT;
ALTER TABLE cinema ADD COLUMN genre_id INT;
ALTER TABLE cinema ADD COLUMN genre_id INT AFTER title_eng;

# Удалить атрибут status_active сущности cinema. 
ALTER TABLE cinema DROP COLUMN genre_id;
ALTER TABLE cinema DROP COLUMN status_active;

# Удалить сущность actors из базы данных
-- Добавить внешний ключ на атрибут genre_id сущности cinema и направить его на атрибут id сущности genres.

CREATE TABLE genres (id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, nameGenre VARCHAR(30) NOT NULL);
INSERT genres (nameGenre) VALUES ('Action'), ('Documental'), ('Comedy');
SELECT * FROM genres;

ALTER TABLE cinema ADD FOREIGN KEY (genre_id) REFERENCES genres (id);
# ALTER TABLE cinema ADD CONSTRAINT "fk_name" FOREIGN KEY ("my_column") REFERENCES...
# Посмотреть ключи:
DESCRIBE cinema;

-- Очистить сущность genres от данных и обнулить автоинкрементное  поле.
# DROP - Удалить таблицу
# TRUNCATE - Очищает таблицу

TRUNCATE genres;
SHOW CREATE TABLE cinema;
# Удалить внешний ключ из "cinema"
ALTER TABLE cinema DROP FOREIGN KEY cinema_ibfk_1;

ALTER TABLE cinema ADD COLUMN Category VARCHAR(1);

UPDATE cinema SET Category = 'П' WHERE id = 6;
UPDATE cinema SET Category = 'В' WHERE id = 8;
UPDATE cinema SET Category = 'Д' WHERE id = 10;

SELECT *,
CASE
    WHEN Category = 'П' THEN 'Подростковое'
    WHEN Category = 'В' THEN 'Взрослое'
    WHEN Category = 'Д' THEN 'Детское'
    ELSE 'Не определено'
END AS CategoryLong 
FROM cinema;
# UPDATE ur_table SET field = CASE ....

-- функция IF()
-- IF( condition, [value_if_true], [value_if_false] )

-- Если 100<200, то печатаем 'Да'; иначе - 'Нет'

SELECT IF(100>200, 'Да', 'Нет') AS Result;

SELECT title, IF (count_min > 120, 'Полнометражный', 'Короткометражный') AS Result FROM cinema;

SELECT * FROM cinema;
 