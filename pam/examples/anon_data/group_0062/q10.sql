truncate query10;


INSERT INTO Query10 SELECT lid, lname, totalsales FROM (SELECT SUM(quantity *price) AS totalsales, lid FROM orders JOIN customer USING (cid) WHERE status = 'S' GROUP BY lid ORDER BY totalsales) AS step1 RIGHT JOIN location USING (lid) ORDER BY lname;





select * from query10;
