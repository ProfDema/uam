truncate query4;
INSERT INTO query4(

SELECT p.pid, p.pname, SUM(p.cost * o.quantity) AS totalcost

FROM product p NATURAL JOIN orders o

WHERE o.status = 'S'

GROUP BY p.pid

ORDER BY totalcost ASC);





select * from query4;
