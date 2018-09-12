truncate query1;
INSERT INTO Query1 ( SELECT custid cuid, C1.cname cuname, custref refid, C2.cname refname FROM referral, customer C1, customer C2 WHERE C1.cid=custid AND C2.cid=custref ORDER BY C1.cname ASC); 





select * from query1;
