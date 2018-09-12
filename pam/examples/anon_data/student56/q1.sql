truncate query1;
INSERT INTO Query1 (SELECT custref AS refid, ref.cname AS refname, custid AS cuid, customer.cname AS cuname, FROM customer,referral,customer AS ref WHERE custid = customer.cid AND custref = ref.cid ORDER BY ref.cname ASC;)





select * from query1;
