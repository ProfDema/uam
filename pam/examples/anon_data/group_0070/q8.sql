truncate query8;
INSERT INTO Query8(SELECT custid AS cid, c.cname AS cname, ROUND(SUM((o.quantity * o.price * commission)/100),2) 

	AS commission FROM customer c JOIN referral ON c.cid = custid JOIN customer r ON r.cid = custref JOIN orders o ON o.cid = r.cid 

	GROUP BY custid, c.cname ORDER BY c.cname);





select * from query8;
