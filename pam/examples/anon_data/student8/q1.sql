truncate query1;


INSERT INTO Query1(

SELECT c.cid as cuid, c.cname as cuname,rfinal.cid as refid,rfinal.cname as refname

FROM customer c

LEFT JOIN referral r ON (c.cid = r.custid)

LEFT JOIN customer rfinal ON (r.custref = rfinal.cid)

WHERE rfinal.cid is not NULL

ORDER BY c.cname ASC);





select * from query1;
