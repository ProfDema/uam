truncate query6;
INSERT INTO Query6 (

SELECT

	c.cid as cid,

	c.cname as cname,

	l.lname as locname

FROM customer c 

	JOIN location l ON c.lid = l.lid

WHERE 

	c.cid NOT IN (SELECT c.cid FROM orders o WHERE o.cid = c.cid)

ORDER BY cname ASC

);





select * from query6;
