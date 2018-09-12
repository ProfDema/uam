truncate query7;
INSERT INTO Query7(

SELECT to_char(odate, 'YYYYMM')::INTEGER as period, count(status) AS sales,

 SUM(quantity * cost) AS cost

FROM product AS p, orders AS o

WHERE p.pid = o.pid AND status = 'S'

GROUP BY period

ORDER BY period

);



select * from query7;
