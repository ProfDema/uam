truncate query1;


INSERT INTO Query1 (SELECT r.custref cuid, c1.cname cuname, r.custid refid, c2.cname refname

FROM referral r, customer c1, customer c2

WHERE r.custref = c1.cid AND r.custid = c2.cid

ORDER BY cuname

);



select * from query1;
