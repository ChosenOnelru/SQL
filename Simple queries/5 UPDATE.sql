1. Обновить поле в таблице 
UPDATE `users` SET `name` = 'Max' WHERE id = 1

2. Обновить поле в таблице 
UPDATE `users` SET `name` = 'Gor', mail = 'gor@mail.ru' WHERE name = 'Max'

3. Обновить поле в таблице 
UPDATE `users` SET `name` = 'Gor', mail = 'gor@mail.ru' WHERE id > 2

4. Обновить поле в таблице 
UPDATE `users` SET `name` = 'notGor', mail = 'notgor@mail.ru' WHERE name = 'gor' AND id > 2

5. Обновить поле в таблице 
UPDATE users SET mail = '111@mail.ru' WHERE users.id = 1