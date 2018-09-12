truncate query4;
INSERT INTO Query4(

SELECT p.pid AS pid, p.pname AS pname,

	CAST(SUM(p.cost * o.quantity) as NUMERIC(12,2)) AS totalcost

FROM product p, orders o

WHERE o.status = 'S' AND p.pid = o.pid

GROUP by p.pid

ORDER BY totalcost ASC);



select * from query4;
