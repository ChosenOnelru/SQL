1. Найти 10 любых покупок с количеством проданных продуктов в заказе более 5000 р в статусе 3

SELECT * FROM sale WHERE amount > 5000 AND sale_id IN (SELECT sale_id FROM order_status WHERE status_name_id=3) LIMIT 10

2.Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price

SELECT model, price FROM printer WHERE price = (SELECT MAX (price) from printer)

3.Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed

SELECT DISTINCT Product.type, Laptop.model, Laptop.speed 
FROM Laptop, Product
WHERE Laptop.speed < ALL (SELECT speed 
 FROM PC) AND type = 'Laptop'

4. Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

SELECT DISTINCT Product.maker, Printer.price
FROM Printer JOIN Product ON Printer.model = Product.model
WHERE Printer.price = (SELECT MIN(Printer.price) 
 FROM Printer  WHERE Printer.color = 'y')
AND color ='y' 
