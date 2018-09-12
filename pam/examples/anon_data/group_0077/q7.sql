truncate query7;




-- INSERT INTO Query7





CREATE TEMP VIEW test7 AS



	SELECT CAST(CONCAT(substring(CAST(ord.odate AS TEXT), 1, 4),substring(CAST(ord.odate AS TEXT), 6, 2)) AS INT) AS period, SUM(ord.quantity * ord.price) AS sales, SUM(ord.quantity * prod.cost) AS cost



	FROM orders ord, product prod



	WHERE ord.pid = prod.pid 



	GROUP BY period 



	ORDER BY period ASC;





INSERT INTO Query7



	SELECT * FROM test7;



SELECT * FROM test7;



DROP VIEW test7;







select * from query7;
