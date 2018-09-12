truncate query9;


INSERT INTO Query9 (SELECT p.pid, introdate AS date, CAST(sum(o.price*o.quantity)as NUMERIC(12,2)) AS totalsales

FROM orders o NATURAL JOIN product p

WHERE status='S' AND o.quantity>0

GROUP BY p.pid

HAVING introdate<='2015-12-31' 

ORDER BY introdate

);



select * from query9;
