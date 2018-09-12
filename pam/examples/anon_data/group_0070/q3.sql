truncate query3;
INSERT INTO Query3(SELECT o.cid AS cuid, c.cname AS cuname, (SUM(o.quantity*o.price)) as totalsales 

	FROM orders o JOIN customer c ON o.cid = c.cid WHERE o.status = 'S' GROUP BY o.cid, c.cname

	ORDER BY totalsales DESC);





select * from query3;
