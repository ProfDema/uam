truncate query1;


INSERT INTO Query1 SELECT r.custref AS cuid, c2.cname AS cuname, r.custid AS refid, c1.cname AS refname FROM customer AS c1, customer AS c2, referral AS r WHERE c1.cid = r.custid AND c2.cid = r.custref ORDER BY c2.cname;



select * from query1;
