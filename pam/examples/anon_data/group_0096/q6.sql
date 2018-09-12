truncate query6;


INSERT INTO Query6 (SELECT c.cid AS cid, c.cname AS cname, l.lname AS locname FROM customer c NATURAL JOIN location l WHERE c.cid NOT IN (SELECT cid FROM orders) ORDER BY c.cname ASC);





select * from query6;
