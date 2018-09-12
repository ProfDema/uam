truncate query1;
INSERT INTO Query1

(

	SELECT cust2.cid AS cuid, cust2.cname AS cuname, cust1.cid AS refid, cust1.cname AS refname

	FROM customer cust1, customer cust2, referral ref

	WHERE cust1.cid = ref.custid AND cust2.cid = ref.custref

	ORDER BY cuname ASC

); 



select * from query1;
