truncate query8;
INSERT INTO Query8(

	SELECT cid, cname, SUM(commission)

	FROM customer AS c JOIN referral as r ON c.cid = r.custid

	GROUP BY r.custid  

	ORDER BY cname ASC

	)

select * from query8;
