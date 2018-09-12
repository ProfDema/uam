truncate query3;
INSERT INTO Query3 (

SELECT c.cid AS cuid, c.cname AS cuname, CAST(sum(o.quantity * o.price) AS NUMERIC(12,2)) AS totalsales

FROM orders o, customer c

WHERE o.status = 'S' AND o.cid = c.cid  

GROUP BY c.cid, cuname

ORDER BY sum(o.quantity * o.price) DESC);





select * from query3;
