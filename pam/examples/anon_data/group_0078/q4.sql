truncate query4;


INSERT INTO Query4 (

SELECT p.pid as pid, p.pname as pname, SUM(o.quantity * p.cost) AS totalcost 

FROM orders AS o JOIN product as p ON o.pid = p.pid 

WHERE o.status = 'S'

GROUP BY p.pid

ORDER BY totalcost ASC);



select * from query4;
