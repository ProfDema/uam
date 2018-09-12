truncate query6;
--don’t know yet about duplicates -- add subquery --didn't work

--SELECT c.cid as cid, c.cname as cname, l.lname as locname

--FROM customer c JOIN location l ON c.lid = l.lid

--LEFT JOIN orders o ON c.cid = o.cid

--WHERE o.oid IS NULL

--GROUP BY c.cid

--ORDER BY c.cname ASC

--Another one:

INSERT INTO Query6

(

	SELECT cid, cname, lname as locname

	FROM customer c JOIN location l ON c.lid = l.lid

	WHERE cid NOT IN (SELECT cid FROM orders)

	ORDER BY cname ASC

);





select * from query6;
