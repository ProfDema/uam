truncate query9;
CREATE VIEW beforeDec as SELECT p.pid, p.introdate as date, (o.price * o.quantity) as totalsales

	FROM product as p

	INNER JOIN orders as o

	ON p.pid = o.pid

	AND p.introdate < '2015-12-31'

	AND (o.price * o.quantity) > 0

	AND o.status = 'S'

	ORDER BY date ASC;

INSERT into query9 select * FROM beforeDec;

DROP VIEW IF EXISTS beforeDec CASCADE;



select * from query9;
