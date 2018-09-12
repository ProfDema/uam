truncate query9;
INSERT INTO Query9 (

SELECT u.pid AS pid, v.introdate AS date, u.totalsales AS totalsales

FROM (

	SELECT t.pid AS pid, sum(sale) AS totalsales

	FROM (

		SELECT o.pid AS pid, introdate AS date, o.quantity * o.price AS sale

		FROM orders o JOIN product p ON o.pid = p.pid

		WHERE introdate <= to_date('2015-12-31', 'YYYY-MM-DD')

			AND o.status = 'S'

		ORDER BY o.oid

		) t

	GROUP BY t.pid

	) u

JOIN product v ON v.pid = u.pid

ORDER BY date ASC

);





select * from query9;
