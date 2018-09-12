truncate query4;
INSERT INTO Query4 (

SELECT p.pid , p.pname, CAST(sum(o.quantity * p.cost) AS NUMERIC(12,2)) AS totalcost

FROM product p, customer c, orders o

WHERE o.status = 'S' AND c.cid = o.cid AND p.pid = o.pid 

GROUP BY p.pid, p.pname

ORDER BY sum(o.quantity * p.cost) ASC);





select * from query4;
