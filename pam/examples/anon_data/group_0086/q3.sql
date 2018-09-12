truncate query3;


INSERT INTO Query3 (SELECT c.cid AS cuid, c.cname AS cuname, CAST(SUM(o.quantity*o.price)as NUMERIC(12,2)) AS totalsales

FROM orders o NATURAL JOIN customer c

WHERE o.status = 'S' AND o.quantity>0

GROUP BY c.cid

ORDER BY totalsales DESC

);



select * from query3;
