1. Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).

SELECT Laptop.model, Laptop.price FROM Laptop INNER JOIN Product ON product.model = laptop.model WHERE maker LIKE 'B'
UNION
SELECT PC.model, PC.price FROM PC INNER JOIN Product on product.model = PC.model WHERE maker LIKE 'B'
UNION
SELECT printer.model, printer.price FROM printer INNER JOIN Product ON product.model = printer.model WHERE maker LIKE 'B'

2. Перечислите номера моделей любых типов, имеющих самую высокую цену по всей имеющейся в базе данных продукции.

WITH svod(model, price) AS (  
  SELECT model, price FROM pc 
  UNION ALL 
  SELECT model, price FROM laptop
  UNION ALL 
  SELECT model, price FROM printer)
SELECT DISTINCT model FROM svod WHERE price=(SELECT MAX(price) FROM svod)

3. Найдите названия всех кораблей в базе данных, начинающихся с буквы R.
SELECT name FROM ships WHERE name LIKE 'R%'
UNION
SELECT ship FROM outcomes WHERE ship LIKE 'R%'

4. Найдите названия всех кораблей в базе данных, состоящие из трех и более слов (например, King George V).
Считать, что слова в названиях разделяются единичными пробелами, и нет концевых пробелов.

SELECT name FROM ships WHERE name LIKE '% % %'
UNION
SELECT ship FROM outcomes WHERE ship LIKE '% % %'

5. Найдите названия кораблей с орудиями калибра 16 дюймов (учесть корабли из таблицы Outcomes)

SELECT DISTINCT ships.name FROM ships JOIN classes ON classes.class=ships.class where classes.bore=16
UNION
SELECT DISTINCT outcomes.ship FROM outcomes JOIN ships ON ships.name=outcomes.ship JOIN classes ON classes.class=ships.name WHERE classes.bore=16