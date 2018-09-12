truncate query4;
INSERT INTO Query4

(SELECT p.pid , pname , SUM(o.quantity * cost) AS totalcost

FROM product AS p, orders as o

WHERE p.pid = o.pid AND status = 'S'

GROUP BY p.pid

ORDER BY totalcost);



select * from query4;
