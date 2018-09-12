truncate query8;
CREATE VIEW customersWithReferrals as SELECT c.cid, c.cname, r.custref, SUM(r.commission) as commission 

	FROM referral as r

	INNER JOIN customer as c

	ON r.custid = c.cid

	GROUP BY c.cid, r.custref;

CREATE VIEW custRefBuy as SELECT DISTINCT c.cid, c.cname, c.commission

	FROM customersWithReferrals as c

	INNER JOIN orders as o

	ON o.cid = c.custref

	ORDER BY cname ASC;

INSERT into query8 select * FROM custRefBuy;

DROP VIEW IF EXISTS customersWithReferrals CASCADE;

DROP VIEW IF EXISTS custRefBuy CASCADE;



select * from query8;
