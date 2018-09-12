truncate query8;


-- money purchased from each referral

CREATE VIEW refOrders AS

	SELECT o.cid AS custref, SUM(o.quantity*o.price) AS refPurch

	FROM orders o, referral r

	WHERE o.cid = r.custref

	GROUP BY o.cid;



CREATE VIEW earnings AS

	SELECT c.cid AS cid, c.cname AS cname, SUM((r.commission/100)*ro.refPurch) AS commission

	FROM  customer c, referral r, refOrders ro

	WHERE c.cid = r.custid

		AND ro.custref = r.custref

	GROUP BY c.cid;



INSERT INTO query8 (SELECT * FROM earnings ORDER BY cname);



DROP VIEW earnings;

DROP VIEW refOrders;



select * from query8;
