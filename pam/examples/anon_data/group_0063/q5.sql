truncate query5;
INSERT INTO Query5

(

	SELECT p.pid as pid, p.pname as pname, introdate

	FROM product p LEFT JOIN orders o

	ON p.pid = o.pid

	WHERE oid IS NULL

	ORDER BY pname ASC

);





select * from query5;
