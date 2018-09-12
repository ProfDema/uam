truncate query10;


INSERT INTO Query10(SELECT lid,wname AS lname ,SUM(quantity*price) AS totalsales FROM orders, warehouse WHERE shipwid = wid AND status = 'S' GROUP BY lid,wname ORDER BY lname;)

select * from query10;
