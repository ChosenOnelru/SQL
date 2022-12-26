1. Создание БД

CREATE DATABASE qa;

2.Создание в БД таблицы с именем users
С полем id которое имеет тип данных INTEGER и не может быть пустым
С полем name c типом данных VARCHAR длиной 30 символов
С полем mail c типом данных VARCHAR длиной 30 символов
С полем birth c типом данных DATE не может быть пустым
Основной ключ по полю id – поле id не может повторятся, имеет уникальные значения

CREATE TABLE users(				
Id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(30),
mail VARCHAR(30),
birth DATE NOT NULL,
PRIMARY KEY (id)
)

3.Создание в БД таблицы. Поля shopID и personID являются ссылка на поля в других таблицах

CREATE TABLE orders(				
Id INT NOT NULL AUTO_INCREMENT,
ordernumber INT,
shopID INT,
personID INT,
    date_time datetime DEFAULT CURRENT_TIMESTAMP,
PRIMARY KEY (id),
    FOREIGN KEY (shopID) REFERENCES shop(id),
    FOREIGN KEY (personID) REFERENCES users(id)
)

4. Создание индекса для поля

CREATE INDEX NIndex ON users(name)