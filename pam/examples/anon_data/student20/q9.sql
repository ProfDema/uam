truncate query9;


INSERT INTO Query9

	(SELECT p.pid AS pid, p.introdate AS date, sum(o.price * o.quantity) AS totalsales

	FROM orders o

	JOIN product p ON o.pid = p.pid

	WHERE p.introdate <= '2015-12-31'

	GROUP BY p.pid

	ORDER BY p.introdate ASC);



select * from query9;
