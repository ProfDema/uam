truncate query9;


INSERT INTO Query9 SELECT pid, introdate AS date, SUM(quantity * price) FROM orders JOIN product USING (pid) WHERE introdate <= '2015-12-31' AND status = 'S' GROUP BY pid, introdate ORDER BY introdate;



select * from query9;
