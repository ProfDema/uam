truncate query5;
INSERT INTO QUERY5 (

	SELECT p.pid AS pid, p.pname AS pname, p.introdate AS introdate

	FROM product AS p, orders as o

	WHERE p.pid NOT IN (SELECT pid FROM orders)

	ORDER BY pname ASC

	);





select * from query5;
