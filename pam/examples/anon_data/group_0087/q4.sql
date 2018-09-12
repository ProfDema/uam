truncate query4;
INSERT INTO Query4 (

SELECT t.pid AS pid, p.pname AS pname, t.totalqty * p.cost AS totalcost

FROM (

	SELECT pid,sum(quantity) AS totalqty

	FROM orders

	WHERE status = 'S'

	GROUP BY pid

	) t

JOIN product p ON t.pid = p.pid

ORDER BY totalcost ASC);





select * from query4;
