truncate query4;
INSERT INTO Query4

(

	SELECT pid, p.pname as pname, SUM(p.cost * o.quantity) as totalcost

	FROM product p NATURAL JOIN orders o

	WHERE status = 'S'

	GROUP BY p.pid

	ORDER BY totalcost ASC

);





select * from query4;
