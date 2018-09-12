truncate query8;


-- Clarify commission is it the sum of price * qunatity * comission 



--fix this



INSERT INTO Query8

(SELECT customer.cid AS cid, cname, SUM(referral.commission * price * quantity) AS comission

	FROM referral 

	JOIN orders ON orders.cid = referral.custref	

	JOIN customer ON referral.custid = customer.cid

	GROUP BY customer.cid

	ORDER BY cname ASC);





select * from query8;
