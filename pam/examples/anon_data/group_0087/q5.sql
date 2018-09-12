truncate query5;
INSERT INTO Query5 (

SELECT notordered.pid AS pid, p.pname AS pname, p.introdate AS introdate

FROM (

	SELECT pr.pid AS pid FROM product pr

	EXCEPT

	SELECT DISTINCT o.pid AS pid FROM orders o

	) notordered

JOIN product p ON notordered.pid = p.pid

ORDER BY p.pname ASC);





select * from query5;
