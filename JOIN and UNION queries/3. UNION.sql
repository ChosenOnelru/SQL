SELECT Laptop.model, Laptop.price FROM Laptop INNER JOIN Product ON product.model = laptop.model WHERE maker LIKE 'B'
UNION
SELECT PC.model, PC.price FROM PC INNER JOIN Product on product.model = PC.model WHERE maker LIKE 'B'
UNION
SELECT printer.model, printer.price FROM printer INNER JOIN Product ON product.model = printer.model WHERE maker LIKE 'B'
