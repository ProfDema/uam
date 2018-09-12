truncate query7;


INSERT INTO Query7 (

SELECT CAST(to_char(odate,'yyyymm') AS INTEGER) as period, SUM(o.quantity * o.price) AS sales, SUM(o.quantity * p.cost) AS cost 

FROM orders o, product p

WHERE o.status = 'S' AND o.pid = p.pid

GROUP BY period 

ORDER BY period ASC);



select * from query7;
