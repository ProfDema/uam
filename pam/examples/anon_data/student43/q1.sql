truncate query1;


INSERT INTO Query1 (SELECT R.custid AS cuid, C1.cname AS cuname, R.custref AS refid, C2.cname AS refname FROM referral R, customer C1, customer C2 WHERE R.custid=C1.cid AND R.custref=C2.cid ORDER BY cuname ASC);



select * from query1;
