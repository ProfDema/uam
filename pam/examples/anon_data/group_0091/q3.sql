truncate query3;
INSERT INTO Query3 (

SELECT c.cid AS cuid, c.cname AS cuname, 

	CAST(SUM(o.quantity * o.price) as NUMERIC(12,2)) AS totalsales 

FROM customer c, orders o

WHERE c.cid = o.cid AND o.status = 'S'

GROUP BY c.cid, c.cname

ORDER BY totalsales DESC);



select * from query3;
