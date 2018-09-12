truncate query4;


INSERT INTO Query4

	(SELECT p.pid AS pid, p.pname AS pname, sum(o.quantity * p.cost) AS totalcost

	FROM product p

	JOIN orders o ON p.oid = o.oid

        WHERE status = 'S'

        GROUP BY p.pid

        ORDER BY sum(o.quantity * p.cost) ASC);

select * from query4;
