truncate query3;


INSERT INTO Query3 (SELECT C.cid AS cuid, cname AS cuname, SUM(quantity*price) AS totalsales FROM customer C, orders O WHERE status='S' AND C.cid=O.cid GROUP BY C.cid ORDER BY totalsales DESC);



select * from query3;
