truncate query10;
	--[5 Marks] Report of sales by products grouped by warehouse location (determined using wid from the order). 

	--A sale is represented by a row of order table with status ‘S’.

	--report the locations with zero sales as well.

	INSERT INTO query10

	SELECT l.lid as lid, l.lname as lname, sum(o.quantity*o.price) as totalsales

	FROM orders o RIGHT JOIN location l ON o.shipwid = l.lid

	WHERE o.status = 'S' OR o.status IS NULL

	GROUP BY l.lid, l.lname

	ORDER BY lname ASC; 

select * from query10;
