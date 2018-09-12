truncate query3;
INSERT INTO query3(

SELECT c.cid AS cuid, c.cname AS cuname, SUM(o.quantity * o.price) AS totalsales

FROM customer c NATURAL JOIN orders o

WHERE o.status = 'S'

GROUP BY cuid

ORDER BY totalsales DESC);





select * from query3;
