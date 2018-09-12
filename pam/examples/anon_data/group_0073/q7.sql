truncate query7;


-- Is status supposed to be 'S'?

INSERT INTO Query7

(SELECT CAST(to_char(odate, 'YYYYMM') AS INTEGER) AS period, 

	SUM(orders.quantity * orders.price) AS sales, 

	SUM(orders.quantity * product.cost) AS cost

	FROM orders

	JOIN product

	ON orders.pid = product.pid

	WHERE status = 'S'

	GROUP BY period

	ORDER BY period ASC

);



select * from query7;
