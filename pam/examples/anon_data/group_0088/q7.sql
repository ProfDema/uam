truncate query7;
	--[5 Marks] Report the sales and the cost of sales grouped by accounting period, where an accounting period is a month. The accounting period

	--of a row in the order file is determined by the month and the year of the order date. For example, if a sales if performed on Sept15, 2017, then

	--the accounting period is 201709 (simply concatenate year written using 4 digits with month written using two digits).

	INSERT INTO query7

	SELECT (extract(year from o.odate)*100 + extract(month from o.odate) :: int) as period, sum(o.quantity * o.price) as sales, sum(o.quantity * p.cost) as cost

	FROM orders o, product p 

	WHERE o.pid = p.pid AND o.status = 'S'

	GROUP BY period

	ORDER BY period ASC;



select * from query7;
