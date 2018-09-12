truncate query1;
INSERT INTO Query1 (refid, refname, cuid, cuname)

SELECT referral.custref, cust2.cname, referral.custid, cust1.cname

FROM referral, customer AS "cust1", customer AS "cust2"

WHERE referral.custid = cust1.cid AND referral.custref = cus2.cid

ORDER BY cust1.cname;  





select * from query1;
