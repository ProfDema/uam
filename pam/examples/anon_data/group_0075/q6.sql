truncate query6;


INSERT INTO Query6 (SELECT c.cid, c.cname, l.lname AS "locname"

			FROM customer c, location l

			WHERE c.cid NOT IN (SELECT DISTINCT cid FROM orders) AND c.lid = l.lid

			ORDER BY c.cname);



select * from query6;
