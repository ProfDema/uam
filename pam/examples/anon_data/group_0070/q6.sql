truncate query6;
INSERT INTO Query6(SELECT DISTINCT c.cid AS cid, c.cname  AS cname, l.lname as locname FROM customer c JOIN location l 

	ON c.lid = l.lid, orders o WHERE c.cid NOT IN(SELECT cid FROM orders) ORDER BY c.cname);





select * from query6;
