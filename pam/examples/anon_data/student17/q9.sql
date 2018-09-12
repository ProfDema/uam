truncate query9;
INSERT INTO Query4 (pid, date, totalsales)

SELECT pid, product.introdate, SUM(orders.quantity * orders.price) AS totalsales

FROM orders INNER JOIN product ON orders.pid = product.pid

WHERE orders.status = "S" AND product.introdate <= DATE("2015-12-31")

GROUP BY pid

ORDER BY product.introdate ASC;





select * from query9;
