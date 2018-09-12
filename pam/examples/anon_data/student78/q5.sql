truncate query5;


INSERT INTO Query5(

	SELECT P.pid, P.pname, P.introdate

	FROM product P

	WHERE P.pid NOT IN (SELECT pid FROM orders)

	GROUP BY P.pid

	ORDER BY P.pname ASC

	);





select * from query5;
