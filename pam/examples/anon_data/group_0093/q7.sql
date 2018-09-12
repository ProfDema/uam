truncate query7;
INSERT INTO Query7(

	SELECT CONCAT(YEAR(odate), MONTH(odate)) AS period, c.quantity AS sales, c.price AS cost

	FROM orders AS c

	ORDER BY period ASC

)



select * from query7;
