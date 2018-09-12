truncate query1;
INSERT INTO Query1 (

SELECT c2.cid as cuid, c2.cname as cuname, r.custid as refid, c1.cname as refname

FROM customer c1, customer c2, referral r

WHERE c1.cid = r.custid AND r.custref = c2.cid

ORDER BY c2.cname ASC);



select * from query1;
