truncate query9;
INSERT INTO Query9(SELECT p.pid AS pid, p.introdate AS date, SUM(o.price * o.quantity) AS totalsales

	FROM product p JOIN orders o ON p.pid = o.pid WHERE p.introdate <= '2015-12-31' AND o.status = 'S' 

	GROUP BY p.pid

	ORDER BY p.introdate);





select * from query9;
