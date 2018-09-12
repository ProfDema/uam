truncate query9;
INSERT INTO Query9(pid, date, totalsales)

SELECT p.pid AS pid, p.introdate AS date, CAST(SUM(o.price*o.quantity) AS NUMERIC(10, 2)) AS "totalsales"

FROM product AS p, orders AS o

WHERE o.status = 'S' AND o.pid = p.pid AND p.introdate <= '2015-12-31'

GROUP BY p.pid

ORDER BY date ASC;





select * from query9;
