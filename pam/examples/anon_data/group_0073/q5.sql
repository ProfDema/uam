truncate query5;
INSERT INTO Query5

(SELECT product.pid AS pid, product.pname, product.introdate

	FROM product 

	LEFT JOIN orders

	ON product.pid = orders.pid

	WHERE orders.pid IS NULL

	ORDER BY pname ASC

);



select * from query5;
