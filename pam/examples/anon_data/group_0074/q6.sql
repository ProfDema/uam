truncate query6;


CREATE VIEW noOrders AS

	SELECT c.cid AS cid, c.cname AS cname, l.lname AS locname

	FROM customer c NATURAL JOIN location l

	WHERE NOT c.cid IN (

		SELECT customer.cid FROM customer JOIN orders USING (cid));



INSERT INTO query6 (SELECT * FROM noOrders ORDER BY cname);



DROP VIEW noOrders;



select * from query6;
