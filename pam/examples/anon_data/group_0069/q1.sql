truncate query1;


INSERT INTO Query1 (SELECT t1.cuid, t1.cuname, t1.refid, c.cname AS refname FROM (SELECT c.cid AS cuid, c.cname AS cuname, r.custref AS refid FROM customer AS c, referral AS r WHERE c.cid = r.custid) AS t1, customer AS c WHERE t1.refid = c.cid ORDER BY cuname ASC);



select * from query1;
