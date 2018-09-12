truncate query3;


INSERT INTO Query3 SELECT cid as cuid, cname as cuname, SUM(quantity * price) AS totalsales FROM customer JOIN orders USING (cid) WHERE status = 'S' GROUP BY cid ORDER BY totalsales DESC;



select * from query3;
