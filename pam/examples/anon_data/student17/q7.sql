truncate query7;
INSERT INTO Query7 (period, sales, cost)

SELECT SUM(DATE_PART("year", orders.odate)*100, DATE_PART("month", orders.odate)) AS period, SUM(orders.quantity * orders.price) AS sales, SUM(orders.quantity * product.cost) AS cost

FROM orders INNER JOIN product ON orders.pid = product.pid

GROUP BY period

ORDER BY period ASC;





select * from query7;
