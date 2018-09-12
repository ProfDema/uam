truncate query6;
INSERT INTO Query6(cid, cname, locname)

SELECT c.cid AS cid, c.cname AS cname, l.lname AS locname

FROM customer AS c NATURAL JOIN location as l

WHERE c.cid NOT IN (SELECT cid FROM orders)

ORDER BY c.cname ASC;





select * from query6;
