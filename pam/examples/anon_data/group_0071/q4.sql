truncate query4;
INSERT INTO Query4 (

SELECT

	p.pid as pid,

	p.pname as pname,

	SUM(p.cost * o.quantity) as totalcost

FROM product p 

	JOIN orders o ON p.pid = o.pid

WHERE

	o.status = 'S'

GROUP BY p.pid, p.pname

ORDER BY totalcost ASC

);





select * from query4;
