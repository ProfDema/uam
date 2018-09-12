truncate query4;
INSERT INTO Query4 (pid, pname, totalcost)

SELECT pid, product.pname, SUM(orders.quantity * product.cost) AS totalcost

FROM orders INNER JOIN product ON orders.pid = product.pid

WHERE orders.status = "S"

GROUP BY pid, pname

ORDER BY totalcost ASC;





select * from query4;
