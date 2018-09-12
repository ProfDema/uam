truncate query4;


INSERT INTO Query4 (SELECT p.pid, p.pname, sum(o.quantity*p.cost) AS "totalcost"

			FROM product p, orders o

			WHERE p.pid = o.pid AND o.status = 'S'

			GROUP BY p.pid

			ORDER BY totalcost);



select * from query4;
