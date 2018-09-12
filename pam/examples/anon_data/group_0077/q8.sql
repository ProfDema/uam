truncate query8;


INSERT INTO Query8



	SELECT cust.cid AS cid, cust.cname AS cname, SUM(ord.quantity * ord.price * ref.commission) AS commission



	FROM referral ref, customer cust, orders ord



	WHERE ref.custid = cust.cid AND ref.custref = ord.cid 



	GROUP BY cust.cid



	ORDER BY cname ASC;



select * from query8;
