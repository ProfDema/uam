truncate query5;
INSERT INTO Query5 (

SELECT

	p.pid as pid,

	p.pname as pname,

	p.introdate as introdate

FROM product p 

WHERE p.pid NOT IN (SELECT p.pid FROM orders o WHERE o.pid = p.pid)

ORDER BY pname ASC

);





select * from query5;
