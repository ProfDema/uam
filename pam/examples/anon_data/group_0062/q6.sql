truncate query6;


INSERT INTO Query6 SELECT cid, cname, lname as locname FROM customer JOIN location USING (lid) GROUP BY cid, cname, locname HAVING cid NOT IN (SELECT cid FROM orders) ORDER BY cname;



select * from query6;
