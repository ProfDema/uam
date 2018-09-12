truncate query3;
INSERT INTO Query3 (SELECT customer.cid AS cuid, customer.cname AS cuname, SUM(quantity*price) AS totalsales

			FROM orders, customer

			WHERE orders.cid = customer.cid AND status = 'S'

			GROUP BY cuid

			ORDER BY totalsales DESC);





select * from query3;
