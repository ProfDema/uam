truncate query4;
INSERT INTO Query4(SELECT product.pid AS pid, product.pname AS pname, sum(product.cost*orders.quantity) AS totalcost

FROM product, orders

WHERE product.pid = orders.pid AND orders.status = 'S'

GROUP BY product.pid

ORDER BY totalcost ASC);





select * from query4;
