truncate query3;
INSERT INTO Query3(

	SELECT c.cid AS cuid, c.name AS cuname, SUM(o.price*o.quantity) AS totalsales

	FROM customer AS c JOIN orders AS o ON c.cid = o.cid

	WHERE o.status = 'S'

	GROUP BY o.cid

	order by totalsales DESC

)



select * from query3;
