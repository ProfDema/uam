truncate query1;
INSERT INTO query1(

SELECT R.custref AS cuid, C2.cname AS cuname, R.custid AS refid, C1.cname AS refname

FROM referral R JOIN customer C1 ON R.custid=C1.cid JOIN customer C2 ON R.custref=C2.cid

ORDER BY cuname ASC);





select * from query1;
