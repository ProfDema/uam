truncate query4;


INSERT INTO Query4 SELECT pid, pname, SUM (cost*quantity) AS totalcost FROM orders JOIN product USING (pid) WHERE status = 'S' GROUP BY pid, pname ORDER BY totalcost;



select * from query4;
