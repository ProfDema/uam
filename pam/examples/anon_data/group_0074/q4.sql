truncate query4;


CREATE VIEW productSales AS

	SELECT orders.pid AS pid, product.pname AS pname, SUM(orders.quantity*product.cost) AS totalcost

	FROM orders, product

	WHERE orders.pid = product.pid 

		AND orders.status = 'S'

	GROUP BY orders.pid, product.pname;



INSERT INTO query4 (SELECT pid, pname, totalcost FROM productSales ORDER BY totalcost);



DROP VIEW productSales;



select * from query4;
