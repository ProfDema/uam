truncate query6;
INSERT INTO Query6

(SELECT cid, cname, lname

FROM customer, location

WHERE customer.lid = location.lid AND

	cid NOT IN (

        	SELECT DISTINCT cid

        	FROM orders)

ORDER BY cname);

select * from query6;
