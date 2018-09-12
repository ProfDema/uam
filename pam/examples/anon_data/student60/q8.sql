truncate query8;
INSERT INTO Query8 (SELECT referral.custid AS cid, cname, SUM(quantity*price*commission) AS commission

			FROM customer, referral, orders

			WHERE customer.cid = custid AND referral.custref = orders.cid

			GROUP BY customer.cname, referral.custid

			ORDER BY cname);





select * from query8;
