truncate query6;
INSERT INTO Query6 (

SELECT c.cid,c.cname,l.lname AS locname

FROM customer c, location l

WHERE l.lid = c.lid  AND c.cid <> ALL(SELECT cid FROM orders)

ORDER BY cname);





select * from query6;
