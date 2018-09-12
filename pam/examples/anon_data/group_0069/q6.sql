truncate query6;


INSERT INTO Query6 (SELECT t2.cid, t2.cname, l.lname AS locname FROM (SELECT t1.cid, c.cname, c.lid FROM ((SELECT cid FROM customer) EXCEPT (SELECT cid FROM orders)) AS t1, customer AS c WHERE c.cid = t1.cid) AS t2, location AS l WHERE l.lid = t2.lid ORDER BY cname ASC);



select * from query6;
