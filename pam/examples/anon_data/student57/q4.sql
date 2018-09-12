truncate query4;
INSERT INTO QUERY4 (SELECT DISTINCT product.pid, pname as pame, orders.quantity * product.cost AS totalcost 

					FROM product LEFT JOIN orders ON orders.pid = product.pid 

					WHERE orders.status = 'S' ORDER BY totalcost ASC);





select * from query4;
