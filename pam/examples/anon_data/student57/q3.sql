truncate query3;
INSERT INTO QUERY3 (SELECT orders.cid AS cuid, cname AS cuname, orders.quantity * orders.price AS totalsales 

					FROM orders LEFT JOIN customer ON orders.cid = customer.cid 

					WHERE status = 'S' ORDER BY totalsales DESC);





select * from query3;
