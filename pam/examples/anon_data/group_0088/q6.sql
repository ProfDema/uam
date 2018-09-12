truncate query6;


	--[5 Marks] Report customer id, name, and location name for all customers which have never placed any order sorted alphabetically by name

	INSERT INTO query6

	SELECT c.cid as cid, c.cname as cname, l.lname as locname

	FROM orders o RIGHT JOIN customer c ON o.cid = c.cid, location l

	WHERE l.lid = c.lid AND o.oid IS NULL

	ORDER BY cname ASC;



select * from query6;
