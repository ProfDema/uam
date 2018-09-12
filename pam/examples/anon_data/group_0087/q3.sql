truncate query3;
INSERT INTO Query3 (

SELECT cuid, c.cname AS cuname, totalsales

FROM ( 

	SELECT cid AS cuid, sum(quantity * price) AS totalsales

	FROM orders

	WHERE status = 'S'

	GROUP BY cid

	) sales 

JOIN customer c ON sales.cuid = c.cid

ORDER BY totalsales DESC);





select * from query3;
