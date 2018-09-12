truncate query10;
INSERT INTO Query10 (

SELECT l.lid AS lid, l.lname AS lname, CASE WHEN totalsales IS NULL THEN 0 ELSE totalsales END AS totalsales

FROM ((

	SELECT t.wid AS wid, sum(sale) AS totalsales

	FROM (

		SELECT o.shipwid AS wid, o.quantity * o.price AS sale

		FROM orders o

		WHERE o.status = 'S'

		) t

	GROUP BY t.wid

	) u

JOIN warehouse w ON u.wid = w.wid) v

RIGHT OUTER JOIN location l ON v.lid = l.lid

ORDER BY lname ASC

);



select * from query10;
