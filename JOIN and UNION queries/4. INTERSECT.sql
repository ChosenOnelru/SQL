1. Найдите производителя, выпускающего ПК, но не ноутбуки.

SELECT DISTINCT maker FROM Product
WHERE type = 'PC'
EXCEPT
SELECT DISTINCT maker FROM Product
WHERE type = 'Laptop'

2. Найдите производителей, которые производили бы как ПК со скоростью не менее 750 МГц, так и ПК-блокноты со скоростью не менее 750 МГц. Вывести: Maker

SELECT DISTINCT product.maker FROM product JOIN pc ON pc.model=product.model
WHERE pc.speed>=750
INTERSECT
SELECT DISTINCT product.maker FROM product JOIN laptop ON laptop.model=product.model
WHERE laptop.speed>=750

3. Найдите страны, имевшие когда-либо классы обычных боевых кораблей ('bb') и имевшие когда-либо классы крейсеров ('bc').

SELECT country FROM classes where type='bb'
INTERSECT
SELECT country FROM classes where type='bc'


