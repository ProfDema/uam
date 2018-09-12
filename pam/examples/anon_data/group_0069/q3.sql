truncate query3;


INSERT INTO Query3 (SELECT t1.cid AS cuid, c.cname AS cuname, t1.amount AS totalsales FROM (SELECT cid, SUM(quantity * price) AS amount FROM orders WHERE status = 'S' GROUP BY cid) AS t1, customer AS c WHERE t1.cid = c.cid ORDER BY totalsales DESC);



select * from query3;
