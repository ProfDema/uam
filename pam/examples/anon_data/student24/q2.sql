truncate query2;
CREATE VIEW cannotShip AS SELECT o.oid, s.pid, s.wid, o.quantity AS ordqty, s.quantity as stockqty

	FROM orders as o, stock as s

	WHERE o.quantity > s.quantity AND o.status = 'O';

insert into query2 select * FROM cannotShip;

DROP VIEW IF EXISTS cannotShip CASCADE;



select * from query2;
