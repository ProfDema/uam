truncate query3;
INSERT INTO QUERY3 (

	SELECT t.cuid AS cuid, c.cname AS cuname, t.totalsales AS totalsales

	FROM (

		SELECT o.cid AS cuid, SUM(o.price*o.quantity) AS totalsales

		FROM orders AS o

		WHERE o.status = 'S'

		GROUP BY cuid

		) t JOIN customer AS c ON t.cuid = c.cid

	ORDER BY totalsales DESC

	);





select * from query3;
