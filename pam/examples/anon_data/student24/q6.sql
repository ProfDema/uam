truncate query6;
CREATE VIEW noOrder as SELECT c.cid, c.cname, l.lname as locname

	FROM customer as c

	LEFT JOIN orders o 

	ON c.cid = o.cid

	INNER JOIN location as l 

	ON c.lid = l.lid

	WHERE o.cid IS NULL

	ORDER BY cname ASC;

INSERT into query6 select * FROM noOrder;

DROP VIEW IF EXISTS noOrder CASCADE;



select * from query6;
