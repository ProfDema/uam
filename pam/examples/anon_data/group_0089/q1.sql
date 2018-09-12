truncate query1;
INSERT INTO Query1

(SELECT C.cid as "cuid", C.cname as "cuname", C2.cid as "refid", C2.cname as "refname"

FROM Customer AS C, Customer AS C2, referral AS R

WHERE C.cid = R.custid AND C2.cid = R.custref

ORDER BY cuname ASC);



select * from query1;
