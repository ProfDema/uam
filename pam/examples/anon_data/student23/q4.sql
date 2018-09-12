truncate query4;
INSERT INTO QUERY4 (

	SELECT t.pid AS pid, p.pname AS pname, t.totalcost AS totalcost

	FROM (

		SELECT o.pid AS pid, SUM(o.quantity*p.cost) AS totalcost

		FROM orders AS o, product AS p

		WHERE o.status = 'S'

		GROUP BY o.pid 

		) t JOIN product AS p ON t.pid = p.pid

	ORDER BY totalcost ASC

	);





select * from query4;
