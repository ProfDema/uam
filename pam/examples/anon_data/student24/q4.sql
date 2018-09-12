truncate query4;
CREATE VIEW costSales as SELECT p.pid, p.pname, (o.quantity * p.cost) as totalcost

	FROM product as p,  orders as o

	WHERE p.pid = o.oid

	AND o.status = 'S'

	ORDER BY totalcost ASC;

insert into query4 select * FROM costSales;

DROP VIEW IF EXISTS costSales CASCADE;



select * from query4;
