truncate query2;


CREATE TEMP VIEW Table2 AS



	SELECT ord.oid AS oid, ord.pid AS  pid, ord.shipwid AS wid, ord.quantity AS ordqty, stock.quantity AS stockqty



	FROM orders ord JOIN stock ON ord.shipwid = stock.wid AND ord.pid = stock.pid



	WHERE status = 'O' AND  ord.quantity > stock.quantity;



CREATE TEMP VIEW NotInStock AS



	SELECT oid AS oid, ord.pid AS pid, shipwid AS wid, ord.quantity AS ordqty, 0 AS stockqty



	FROM orders ord



	WHERE ord.quantity > 0 AND status = 'O' AND 

			NOT EXISTS(SELECT * FROM stock 

			WHERE ord.shipwid = stock.wid AND

			ord.pid = stock.pid);



INSERT INTO Query2 



	(SELECT * FROM Table2



	UNION ALL



	SELECT * FROM NotInStock);



DROP VIEW NotInStock; 

DROP VIEW Table2;



select * from query2;
