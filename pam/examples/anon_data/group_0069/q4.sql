truncate query4;


INSERT INTO Query4 (SELECT t1.pid, p.pname, (t1.totalsold * p.cost) AS totalcost FROM (SELECT pid, SUM(quantity) AS totalsold FROM orders WHERE status = 'S' GROUP BY pid) AS t1, product AS p WHERE t1.pid = p.pid ORDER BY totalcost ASC);



select * from query4;
