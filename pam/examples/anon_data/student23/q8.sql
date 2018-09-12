truncate query8;
INSERT INTO QUERY8 (

	SELECT q1.refid AS cid, q1.refname AS cname, r.commission/100*(o.quantity*o.price)

	FROM Query1 AS q1, referral AS r, orders as o

	WHERE q1.refid = o.cid

	ORDER BY cname ASC

	);





select * from query8;
