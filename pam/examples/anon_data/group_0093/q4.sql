truncate query4;
INSERT INTO Query4(

	SELECT pid, pname, ADD(order.price) AS totalcost

	FROM order , product

	WHERE order.pid = product.pid, status = 'S'

	GROUP BY order.pid

	ORDER BY totalcost ASC

	)

select * from query4;
