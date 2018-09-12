truncate query8;
INSERT INTO Query8 (

SELECT customer.cid AS cid, customer.cname AS cname, 

sum(referral.commission * orders.price * orders.quantity) AS commission

FROM customer, referral, orders

WHERE customer.cid = referral.custid AND orders.cid = referral.custref

GROUP BY customer.cid

ORDER BY cname ASC);





select * from query8;
