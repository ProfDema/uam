truncate query7;


INSERT INTO Query7 (

	SELECT DATE_PART('YEAR', ord.odate) * 100 + DATE_PART('MONTH', ord.odate) AS period,

	CAST(SUM(ord.quantity * ord.price) AS NUMERIC(10,2)) AS sales,

	CAST(SUM(ord.quantity * pr.cost) AS NUMERIC(10,2)) AS cost

	FROM orders ord JOIN product pr ON ord.pid=pr.pid

	GROUP BY period

	ORDER BY period

);



select * from query7;
