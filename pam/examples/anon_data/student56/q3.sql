truncate query3;
INSERT INTO Query3(SELECT customer.cid AS cuid, customer.cname AS cuname, SUM(quantity*price) AS totalsales FROM orders NATURAL JOIN customer WHERE status = 'S' GROUP BY customer.cid ORDER BY totalsales DESC;)





select * from query3;
