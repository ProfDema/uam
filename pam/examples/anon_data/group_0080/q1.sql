truncate query1;
INSERT INTO Query1(cuid, cuname, refid, refname)

SELECT r.custref AS cuid, c1.cname AS cuname, r.custid AS refid, c2.cname AS refname

FROM referral AS r, customer AS c1, customer AS c2

WHERE r.custid = c2.cid AND r.custref = c1.cid

ORDER BY cuname ASC;





select * from query1;
