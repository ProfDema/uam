truncate query4;
	--[5 Marks] Find the cost of sales by product and sort them in increasing order of the cost. A sale is represented by a row of order table with

	--status ‘S’

	INSERT INTO query4

	SELECT p.pid as pid, p.pname as pname, sum(o.quantity * p.cost) as totalcost

	FROM orders o, product p

	WHERE o.pid = p.pid AND status = 'S'

	GROUP BY p.pid

	ORDER BY totalcost ASC;



select * from query4;
