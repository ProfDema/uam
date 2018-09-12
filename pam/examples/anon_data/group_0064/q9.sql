truncate query9;
INSERT INTO Query9 (

SELECT p.pid, p.introdate AS date, CAST(sum(o.quantity * o.price) AS NUMERIC(12,2)) AS totalsales

FROM orders o, product p

WHERE o.status = 'S' AND p.pid = o.pid AND p.introdate <= '2015-12-31'

GROUP BY p.pid, date

ORDER BY date ASC);





select * from query9;
