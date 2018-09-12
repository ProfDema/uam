truncate query6;
INSERT INTO Query6 (

SELECT notordered.cid AS cid, c.cname AS cname, l.lname AS locname

FROM (

	SELECT cu.cid FROM customer cu

	EXCEPT

	SELECT DISTINCT o.cid FROM orders o

	) notordered

JOIN customer c ON notordered.cid = c.cid

JOIN location l ON c.lid = l.lid

ORDER BY c.cname ASC);



select * from query6;
