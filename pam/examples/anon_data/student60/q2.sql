truncate query2;
INSERT INTO Query2 (SELECT oid, orders.pid, shipwid AS wid, orders.quantity AS ordqty, stock.quantity AS stockqty

			FROM orders JOIN stock ON orders.pid = stock.pid AND orders.shipwid = stock.wid

			WHERE status = 'O' AND orders.quantity > stock.quantity);





select * from query2;
