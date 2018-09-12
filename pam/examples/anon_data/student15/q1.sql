truncate query1;
INSERT INTO Query1 (

SELECT c1.cid AS cuid, c1.cname AS cuname, c2.cid AS refid, c2.cname AS refname

FROM customer c1, customer c2, referral r

WHERE c1.cid = r.custid AND c2.cid = r.custref

ORDER BY c1.cname ASC

);







select * from query1;
