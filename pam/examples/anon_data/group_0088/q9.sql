truncate query9;
	--[5 Marks] Report of sales by products introduced on or before 31 Dec 2015 and sort them in increasing order of the introduction date. A sale

	--is represented by a row of order table with status ‘S’.

	INSERT INTO query9

	SELECT p.pid as pid, p.introdate as date, sum(o.quantity*o.price) as totalsales

	FROM orders o, product p 

	WHERE o.pid = p.pid AND p.introdate >= '31 Dec 2015' AND o.status = 'S'

	GROUP BY p.pid, p.introdate

	ORDER BY date ASC;



select * from query9;
