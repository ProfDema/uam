truncate query4;


INSERT INTO Query4(

	SELECT P.pid, P.pname, CAST(SUM(P.cost * O.quantity) as NUMERIC(12,2)) AS totalcost

	FROM orders O, product P

	WHERE O.status = 'S'

	GROUP BY P.pid

	ORDER BY totalcost ASC

	);





select * from query4;
