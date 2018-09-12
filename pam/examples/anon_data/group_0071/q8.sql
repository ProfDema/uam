truncate query8;
INSERT INTO Query8 (

SELECT

	c.cid as cid,

	c.cname as cname,

	SUM(o.quantity * o.price * r.commission) as commission

FROM customer c

	JOIN referral r ON c.cid = r.custid

	JOIN orders o ON o.cid = r.custref

GROUP BY cname, c.cid

ORDER BY cname ASC

);





select * from query8;
