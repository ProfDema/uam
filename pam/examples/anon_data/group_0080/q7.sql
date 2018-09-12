truncate query7;
INSERT INTO Query7(period, sales, cost)

SELECT CAST(o.period as INTEGER) AS period, CAST(SUM(o.quantity * o.price) as NUMERIC(10,2)) AS sales,  CAST(SUM(o.quantity*p.cost) as NUMERIC(10,2)) AS cost

FROM  (SELECT *, TO_CHAR(odate, 'YYYYMM') as period 

FROM orders) AS o,  product AS p

WHERE o.pid = p.pid AND o.status = 'S'

GROUP BY o.period

ORDER BY  o.period ASC;





select * from query7;
