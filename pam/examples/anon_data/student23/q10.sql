truncate query10;
INSERT INTO QUERY10 (

	SELECT t.lid AS lid, l.lname AS lname, o.quantity*o.price AS totalsales

	FROM (

		SELECT l.lid AS lid

		FROM location AS l

		GROUP BY l.lid

		) t LEFT OUTER JOIN warehouse AS w ON w.wid = t.lid JOIN orders AS o ON w.wid = o.shipwid JOIN location AS l ON t.lid = l.lid

	WHERE o.status='S'

	ORDER BY lname ASC

	);



select * from query10;
