truncate query4;
INSERT INTO Query4

(SELECT t.pid, product.pname, t.totalcost

	FROM 

		(SELECT orders.pid, SUM(orders.quantity * product.cost) AS totalcost FROM orders 

		JOIN product

		ON orders.pid = product.pid

		WHERE status = 'S'

		GROUP BY orders.pid) t

	JOIN product

	ON product.pid = t.pid  

	ORDER BY totalcost ASC  

);



select * from query4;
