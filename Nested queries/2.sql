1. Найти все покупки в стране Country 6

SELECT * FROM sale WHERE store_id IN (SELECT store_id FROM store WHERE city_id IN (SELECT city_id FROM city WHERE country_id IN (SELECT country_id FROM country WHERE country_name='Country 6')))