truncate query6;


INSERT INTO Query6



	SELECT cid, cname, lid AS locname



	FROM customer cust



	WHERE cid NOT IN (SELECT cid FROM orders)



	ORDER BY cname ASC;



select * from query6;
