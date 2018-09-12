truncate query2;
INSERT INTO QUERY2 (SELECT oid, orders.pid, shipwid, orders.quantity AS ordqty, stock.quantity AS stockqty

					FROM orders LEFT JOIN stock ON orders.pid = stock.pid 

					WHERE orders.status = 'O' AND shipwid <> wid AND orders.quantity < stock.quantity);





select * from query2;
