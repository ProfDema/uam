truncate query7;
INSERT INTO Query7(

SELECT CAST(to_char(orders.odate, 'YYYYMM') AS INTEGER) AS period, sum (orders.price * orders.quantity) AS sales, sum(product.cost * orders.quantity) AS cost

FROM orders, product

WHERE orders.pid = product.pid AND orders.status = 'S'

GROUP BY period

ORDER BY period ASC);





select * from query7;
