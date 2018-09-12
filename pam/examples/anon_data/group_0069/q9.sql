truncate query9;


INSERT INTO Query9 (SELECT o.pid, p.introdate AS date, SUM(o.quantity * o.price) AS totalsales FROM orders AS o, product AS p WHERE status = 'S' and p.pid = o.pid and introdate <= '2015-12-31'GROUP BY o.pid, p.introdate ORDER BY date ASC);



select * from query9;
