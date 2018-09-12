truncate query1;
INSERT INTO Query1 (

SELECT ref.custid AS cuid, c1.cname AS cuname, ref.custref AS refid, c2.cname AS refname

FROM referral AS ref

JOIN customer c1 ON c1.cid = ref.custid

JOIN customer c2 ON c2.cid = ref.custref

ORDER BY cuname ASC);





select * from query1;
