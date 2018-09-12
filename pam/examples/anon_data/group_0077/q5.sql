truncate query5;


INSERT INTO Query5





	SELECT pid, pname, introdate



	FROM product prod



	WHERE pid NOT IN (SELECT pid from orders)



	ORDER BY pname ASC;



select * from query5;
