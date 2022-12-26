1. Подготовь скрипт для поиска товаров, которые ни разу не покупали. Необходимо получить все данные по этим товарам. 

SELECT * FROM product LEFT JOIN sale ON sale.product_id=product.product_id WHERE sale.sale_id IS NULL

2. LEFT

SELECT users.name, orders.ordernumber FROM users
LEFT JOIN orders on users.id = orders.personID
ORDER BY users.name DESC;

3. RIGHT

SELECT users.name, orders.ordernumber FROM users
RIGHT JOIN orders on users.id = orders.personID
ORDER BY users.name DESC;

4. Названия стран, для которых не указаны города

SELECT country_name FROM country LEFT JOIN city ON city.country_id=country.country_id WHERE city.country_id IS NULL;