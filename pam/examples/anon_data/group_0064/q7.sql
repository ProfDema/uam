truncate query7;
INSERT INTO Query7 (

SELECT CAST(TO_CHAR(o.odate,'YYYYMM') as integer) AS period, CAST(sum(o.quantity * o.price) AS NUMERIC(10,2))AS sales,  CAST(sum(o.quantity * p.cost) AS NUMERIC(10,2))AS cost 

FROM product p, orders o

WHERE o.status = 'S'  AND o.pid = p.pid

GROUP BY period 

ORDER BY period);



select * from query7;
