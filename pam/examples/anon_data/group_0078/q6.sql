truncate query6;


INSERT INTO Query6 (

SELECT c.cid, cname, lname AS locname 

FROM customer c, location l 

WHERE c.cid NOT IN (SELECT cid FROM orders) AND c.lid = l.lid 

ORDER BY cname ASC);



select * from query6;
