truncate query6;
INSERT INTO Query6(

	SELECT cid, cname, lname

	FROM customer, location 

	WHERE customer.lid = location.lid, cid NOT IN (SELECT cid FROM order)

	ORDER BY cname ASC

	)



select * from query6;
