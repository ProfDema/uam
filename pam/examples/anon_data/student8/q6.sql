truncate query6;


INSERT INTO Query6(

SELECT c.cid, c.cname, l.lname as locname

FROM customer c

LEFT JOIN orders o ON (c.cid = o.cid)

LEFT JOIN location l ON (c.lid = l.lid)

WHERE o.cid is NULL

ORDER BY c.cname ASC);





select * from query6;
