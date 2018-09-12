truncate query9;
INSERT INTO Query9 (

SELECT

	o.pid as pid,

	o.odate as date,

	(o.quantity * o.price) as totalsales

FROM orders o

WHERE o.odate <= '2015-12-31' 

	AND o.status = 'S'

ORDER BY date ASC

);



select * from query9;
