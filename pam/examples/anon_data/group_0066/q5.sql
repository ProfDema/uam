truncate query5;


INSERT INTO Query5 (

	SELECT pr.pid AS pid, pr.pname AS pname, pr.introdate AS introdate

	FROM product pr

	WHERE pr.pid NOT IN (SELECT pid FROM orders GROUP BY pid)

	ORDER BY pname

);



select * from query5;
