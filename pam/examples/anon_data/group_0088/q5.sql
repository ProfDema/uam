truncate query5;
	--. [5 Marks] Report product id, name, and introduction date for all products which have never been ordered by any customer sorted alphabetically

	--by product name.

	INSERT INTO query5

	SELECT p.pid as pid, p.pname as pname, p.introdate as introdate

	FROM orders o RIGHT JOIN product p ON o.pid = p.pid

	WHERE o.oid IS NULL

	ORDER BY pname ASC;



select * from query5;
