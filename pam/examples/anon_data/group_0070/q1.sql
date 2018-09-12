truncate query1;
INSERT INTO Query1(SELECT r.cid AS cuid, r.cname  AS cuname, c.cid  AS refid, c.cname AS refname 

	FROM customer c JOIN referral ON c.cid = custid JOIN customer r ON r.cid = custref ORDER BY c.cname);



select * from query1;
