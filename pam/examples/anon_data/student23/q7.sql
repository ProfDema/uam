truncate query7;
INSERT INTO QUERY7 (

	SELECT TO_CHAR(o.odate, 'YYYYMM')::text::int AS period, SUM(o.quantity*o.price) AS sales, SUM(p.cost*o.quantity) AS cost

	FROM orders AS o, product AS p

	WHERE o.status = 'S' AND p.pid = o.pid

	GROUP BY period

	ORDER BY period ASC

	);





select * from query7;
