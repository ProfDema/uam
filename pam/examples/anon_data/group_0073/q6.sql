truncate query6;


-- DISTINCT?



CREATE VIEW customers AS

SELECT cid, cname, lname AS locname

FROM customer 

JOIN location

ON customer.lid = location.lid;



INSERT INTO Query6

(SELECT customers.cid, customers.cname, customers.locname

	FROM customers

	LEFT JOIN orders

	ON customers.cid = orders.cid

	WHERE orders.cid IS NULL

	ORDER BY customers.cname ASC

);



DROP VIEW customers;



select * from query6;
