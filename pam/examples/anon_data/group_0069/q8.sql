truncate query8;


INSERT INTO Query8 (SELECT t2.cid, c.cname, SUM(t2.comission) FROM (SELECT r.custid AS cid, t1.sales * r.commission * 0.01 AS comission FROM (SELECT cid, SUM(quantity * price) AS sales FROM orders GROUP BY cid) AS t1, referral AS r WHERE t1.cid = r.custref) AS t2, customer AS c WHERE t2.cid = c.cid GROUP BY t2.cid, c.cname ORDER BY cname ASC);



select * from query8;
