truncate query4;
INSERT INTO Query4(pid, pname, totalcost)

SELECT p.pid AS pid, p.pname AS pname, CAST(SUM(o.quantity*p.cost) as NUMERIC(12,2)) AS totalcost

FROM orders AS o, product as p

WHERE o.pid = p.pid AND o.status = 'S'

GROUP BY p.pid

ORDER BY totalcost ASC;



select * from query4;
