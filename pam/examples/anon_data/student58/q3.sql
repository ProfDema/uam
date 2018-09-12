truncate query3;
INSERT INTO Query3(

SELECT customer.cid AS cuid, customer.cname AS cuname, sum(orders.price * orders.quantity) AS totalsales

FROM customer, orders

WHERE customer.cid = orders.cid AND orders.status = 'S'

GROUP BY cuid

ORDER BY totalsales DESC);





select * from query3;
