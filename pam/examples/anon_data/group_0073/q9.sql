truncate query9;


INSERT INTO Query9

(SELECT total_sales.pid, product.introdate AS date, total_sales.totalsales

	FROM (SELECT pid, SUM(quantity * price) AS totalsales FROM orders WHERE orders.status = 'S' GROUP BY pid) AS total_sales 

	JOIN product

	ON total_sales.pid = product.pid

	WHERE product.introdate <= '2015-12-31'

	ORDER BY date ASC

);



select * from query9;
