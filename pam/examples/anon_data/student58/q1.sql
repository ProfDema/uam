truncate query1;
INSERT INTO Query1 (SELECT customer1.cid AS cuid, customer1.cname AS cuname, customer2.cid AS refid, customer2.cname AS refname

FROM customer customer1, customer customer2, referral

WHERE customer1.cid = referral.custid AND customer2.cid = referral.custref

ORDER BY cuname ASC);





select * from query1;
