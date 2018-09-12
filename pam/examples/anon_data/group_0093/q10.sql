truncate query10;
INSERT INTO Query10(

	SELECT l.lid, l.lname, COUNT(o.oid) AS totalsales

	FROM orders AS o JOIN warehouse AS w ON o.shipwid = w.wid JOIN location AS l ON l.lid = w.lid

	GROUP BY l.lid

	ORDER BY l.lname ASC

)

select * from query10;
