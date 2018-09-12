truncate query10;
CREATE VIEW customerLocations as SELECT c.lid, (o.price * o.quantity) as totalsales

	FROM customer as c

	INNER JOIN orders as o

	ON c.cid = o.cid AND o.status = 'S';

CREATE VIEW groupLocation as SELECT l.lid, l.lname, SUM(c.totalsales)

	FROM customerLocations as c

	LEFT JOIN location as l

	ON c.lid = l.lid 

	GROUP BY l.lid

	ORDER BY l.lname ASC;

INSERT into query10 select * from groupLocation;

DROP VIEW IF EXISTS customerLocations CASCADE;

DROP VIEW IF EXISTS groupLocation CASCADE;



select * from query10;
