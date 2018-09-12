truncate query2;


CREATE VIEW cannotShip AS

	SELECT orders.oid AS oid, orders.pid AS pid, stock.wid AS wid, orders.quantity AS ordqty, stock.quantity AS stockqty 

	FROM stock JOIN orders 

		ON stock.pid = orders.pid 

		AND stock.wid = orders.shipwid

	WHERE orders.quantity > stock.quantity

		AND orders.status = 'O';



INSERT INTO query2 (SELECT oid, pid, wid, ordqty, stockqty FROM cannotShip);



DROP VIEW cannotShip;



select * from query2;
