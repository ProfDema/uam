truncate query4;
INSERT INTO Query4 (SELECT product.pid AS pid, pname, SUM(quantity*cost) AS totalcost

			FROM product, orders

			WHERE product.pid = orders.pid AND status = 'S'

			GROUP BY product.pid

			ORDER BY totalcost);





select * from query4;
