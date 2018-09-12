truncate query3;
INSERT INTO Query3

(SELECT t.cuid, customer.cname AS cuname, t.totalsales

	FROM (SELECT cid AS cuid, SUM(orders.quantity * orders.price) AS totalsales 

		FROM orders 

		WHERE status = 'S'

		GROUP BY cid) t

	JOIN customer

	ON t.cuid = customer.cid

	ORDER BY totalsales DESC 

);  



select * from query3;
