truncate query7;


INSERT INTO Query7 (SELECT CAST(TO_CHAR(odate,'YYYYMM') as integer) AS period, 

CAST(SUM(o.quantity*o.price)as NUMERIC(10,2)) AS sales, CAST(SUM(o.quantity*p.cost) as NUMERIC(10,2)) AS cost

FROM product p NATURAL JOIN orders o

WHERE o.quantity>0 AND o.status='S'

GROUP BY period

ORDER BY period    

);



select * from query7;
