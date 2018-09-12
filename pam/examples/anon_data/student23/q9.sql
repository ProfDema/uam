truncate query9;
INSERT INTO QUERY9 (

	SELECT p.pid AS pid, p.introdate AS date, o.quantity*o.price AS totalsales

	FROM product AS p, orders AS o

	WHERE p.introdate >= to_date(cast('2015-12-31' AS text), 'YYYY-MM-DD') AND o.status='S'

	--GROUP BY pid

	ORDER BY date ASC

	);





select * from query9;
