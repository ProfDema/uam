truncate query4;
INSERT INTO Query4(SELECT o.pid AS pid, p.pname AS pname, (SUM(o.quantity*p.cost)) AS totalcost 

	FROM orders o JOIN product p ON o.pid = p.pid WHERE o.status = 'S' GROUP BY o.pid, p.pname

	ORDER BY totalcost);



select * from query4;
