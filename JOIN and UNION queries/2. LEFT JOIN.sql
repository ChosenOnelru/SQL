SELECT * FROM product LEFT JOIN sale ON sale.product_id=product.product_id WHERE sale.sale_id IS NULL