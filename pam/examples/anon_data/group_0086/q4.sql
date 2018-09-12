truncate query4;


INSERT INTO Query4 (SELECT p.pid, p.pname, CAST(SUM(o.quantity*p.cost)as NUMERIC(12,2)) AS totalcost

FROM orders o NATURAL JOIN product p

WHERE status = 'S' AND o.quantity>0

GROUP BY p.pid

ORDER BY totalcost

);



select * from query4;
