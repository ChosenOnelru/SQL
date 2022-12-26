1. Добавление в таблицу поля

ALTER TABLE users ADD pass VARCHAR(32)

2. Удаление из таблицы поля pass

ALTER TABLE users DROP COLUMN pass

3. Вставить запись в таблицу 

INSERT INTO users (name, mail, birt)
VALUES (‘Bob’, ‘bob@mail.ru’, ‘2000-02-02’)

4. Изменить в таблице поле 

ALTER TABLE users CHANGE mail mail VARCHAR(30) NOT NULL

5. Множественный ввод данных

INSERT INTO users (name, mail, birt)
	VALUES
	('Tom', 'tom@mail.ru', '1985-02-02'),
    ('Keanu', 'Keanu@hotmail.ru', '1970-02-02'),
    ('Mark', 'mark@gmail.ru', '2010-02-02')
