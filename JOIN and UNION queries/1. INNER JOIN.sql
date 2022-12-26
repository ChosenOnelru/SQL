1. Для каждого производителя, выпускающего ноутбуки c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ноутбуков. Вывод: производитель, скорость.

SELECT DISTINCT maker, Laptop.speed FROM Product
INNER JOIN Laptop ON Laptop.model = Product.model
WHERE Laptop.hd>=10
ORDER BY maker

2. Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker

SELECT DISTINCT maker FROM pc
INNER JOIN product ON product.model = pc.model
WHERE pc.speed >=450

3. Найдите среднюю скорость ПК, выпущенных производителем A

SELECT AVG (speed) FROM product
INNER JOIN pc ON product.model = pc.model
WHERE maker like 'A'

4. Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.

SELECT ships.class, name, classes.country FROM ships
INNER JOIN classes ON classes.class = ships.class
WHERE classes. numGuns >= 10

5. Найдите сражения, в которых участвовали корабли класса Kongo из таблицы Ships.

SELECT DISTINCT outcomes.battle FROM outcomes JOIN ships ON ships.name=outcomes.ship WHERE ships.class='Kongo'

