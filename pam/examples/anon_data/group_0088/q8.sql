truncate query8;
	--[5 Marks] Report the commission earned by customers who have referred other customers. Please note the commission is earned on all orders,

	--shipped or not.

	INSERT INTO query8

	SELECT r.custid as cid, c.cname as cname, round(sum(r.commission * o.quantity * o.price *1/100), 2) as commission

	FROM referral r, orders o, customer c

	WHERE r.custref = o.cid AND r.custid = c.cid

	GROUP BY r.custid, c.cname

	ORDER BY cname ASC;



select * from query8;
