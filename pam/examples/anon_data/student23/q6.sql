truncate query6;
INSERT INTO QUERY6 (

	SELECT DISTINCT c.cid AS cid, c.cname AS cname, l.lname AS locname

	FROM customer AS c, location AS l

	WHERE c.cid NOT IN (SELECT orders.cid FROM orders)

	ORDER BY cname ASC

	);





select * from query6;
