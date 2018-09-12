truncate query6;


INSERT INTO Query6

	(SELECT c.cid AS cid, c.cname AS cname, l.lname AS locname

        FROM customer c

	JOIN location l ON c.lid = l.lid

        LEFT OUTER JOIN orders o ON o.cid = c.cid

        WHERE o.oid IS NULL

        ORDER BY c.cname ASC);



select * from query6;
