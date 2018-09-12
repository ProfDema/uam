truncate query8;
INSERT INTO Query8(

SELECT c.cid AS cid, c.cname AS cname,

	CAST(SUM(o.quantity * o.price * commission) as NUMERIC(10,2)) AS commission

FROM customer c, orders o, referral

WHERE c.cid = custid AND custref = o.cid

GROUP BY c.cid, c.cname

ORDER BY cname ASC);



select * from query8;
