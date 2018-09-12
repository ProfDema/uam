truncate query9;
INSERT INTO Query9(SELECT pid, introdate AS date, SUM(quantity * price) AS totalsales FROM orders NATURAL JOIN product WHERE introdate < '2015-12-31' AND status = 'S' GROUP BY orders.pid ,date ORDER BY date ASC;)



select * from query9;
