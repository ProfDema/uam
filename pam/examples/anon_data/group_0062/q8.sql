truncate query8;


CREATE VIEW step1 AS SELECT cid, SUM(quantity*price) AS commision FROM orders WHERE status = 'S' GROUP BY cid;



INSERT INTO Query8 SELECT c.cid, c.cname, SUM(referral.commission / 100 * step1.commision) AS commision FROM referral, step1, customer AS c WHERE referral.custref = step1.cid AND c.cid = referral.custid GROUP BY c.cid ORDER BY c.cname;



DROP VIEW step1;



select * from query8;
