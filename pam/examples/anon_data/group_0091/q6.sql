truncate query6;
INSERT INTO Query6(

SELECT c.cid as cid, c.cname cname, l.lname AS locname

FROM customer c, location l

WHERE cname <> ANY (SELECT DISTINCT cname FROM customer NATURAL JOIN orders)

	AND c.lid = l.lid

ORDER BY c.cname ASC);



select * from query6;
