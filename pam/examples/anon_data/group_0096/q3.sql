truncate query3;
-- Find total sales by customer and sort in descending order

-- Order must be shipped



INSERT INTO Query3 (SELECT o.cid AS cuid, c.cname AS cuname, SUM(o.quantity * o.price) AS totalsales FROM orders o NATURAL JOIN customer c WHERE o.status = 'S' GROUP BY o.cid, c.cname ORDER BY totalsales DESC;);



select * from query3;
