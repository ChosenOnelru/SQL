SELECT * FROM `users`;

SELECT name, birt FROM `users`;

SELECT name, birt FROM `users` WHERE id > 2 AND id < 4;

SELECT name, birt FROM `users` WHERE mail IS NOT NULL;

SELECT name, birt FROM `users` WHERE mail IS NOT NULL OR id = 4;

SELECT DISTINCT name FROM `users`;

SELECT name FROM `users` LIMIT 2;

SELECT name FROM `users` LIMIT 2, 3;

SELECT * FROM `users` WHERE id > 1 ORDER BY birt LIMIT 2;

SELECT * FROM `users` WHERE id > 1 ORDER BY birt DESC LIMIT 2;

SELECT * FROM `users` WHERE id BETWEEN 2 AND 4;

SELECT * FROM `users` WHERE id IN(1, 3, 4);

SELECT * FROM `users` WHERE name LIKE 'g%';

SELECT * FROM `users` WHERE name LIKE '%o%';

SELECT * FROM `users` WHERE name LIKE '%o';

SELECT name AS 'Имя', birt AS 'день рождения' FROM users;

SELECT CONCAT ('имя:', name, 'день рождения', birt) AS 'информация' FROM users;

SELECT u.id, u.name, s.title, s.price FROM users AS u, shop AS s;

SELECT COUNT(Id) FROM shop;

SELECT MIN(price) FROM shop;

SELECT AVG(price) FROM shop;

SELECT SUM(price) FROM shop;

SELECT ucase(title) FROM shop;

SELECT price, COUNT(price) AS 'количество' FROM `shop` GROUP BY price;

SELECT price, COUNT(price) AS 'количество' FROM `shop` GROUP BY price HAVING COUNT(price) > 1;