truncate query4;


INSERT INTO Query4



	SELECT prod.pid AS pid, prod.pname AS pname, SUM(prod.cost * ord.quantity) AS totalcost



	FROM product prod,orders ord



	WHERE prod.pid = ord.pid AND ord.status = 'S'



	GROUP BY prod.pid



	ORDER BY totalcost ASC;



select * from query4;
