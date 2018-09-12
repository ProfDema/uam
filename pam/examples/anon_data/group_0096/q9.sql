truncate query9;
-- Sales introduced on/before 31 DEC 2015

-- Sort in increasing order of introdate



INSERT INTO Query9 (SELECT o.pid AS pid, p.introdate AS date, SUM(o.quantity * o.price) AS totalsales FROM orders o JOIN product p ON o.pid = p.pid.introdate <= '2015-12-31' AND o.status = 'S' GROUP BY o.pid, p.introdate ORDER BY date ASC);





select * from query9;
