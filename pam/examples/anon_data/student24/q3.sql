truncate query3;
CREATE VIEW totalSales as SELECT c.cid AS cuid, c.cname as cuname, (o.price * o.quantity) as totalsales

	FROM customer as c

	INNER JOIN orders as o

	ON c.cid = o.cid

	WHERE o.status = 'S' AND (o.price * o.quantity) > 0 

	ORDER BY totalsales DESC;

insert into query3 select * FROM totalSales;

DROP VIEW IF EXISTS totalSales CASCADE;

	

select * from query3;
