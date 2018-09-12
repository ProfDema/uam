truncate query3;


INSERT INTO Query3

	(SELECT c.cid AS cuid, c.cname AS cuname, sum(o.quantity * o.price) AS totalsales

	FROM customer c

	JOIN orders o ON c.cid = o.cid

	WHERE status = 'S'

	GROUP BY c.cid

	ORDER BY sum(o.quantity * o.price) DESC);



select * from query3;
