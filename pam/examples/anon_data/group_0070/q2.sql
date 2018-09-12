truncate query2;
INSERT INTO Query2(SELECT o.oid AS oid, o.pid AS pid, o.shipwid AS wid, o.quantity AS ordqty, s.quantity 

	AS stockqty FROM orders AS o, stock AS s WHERE o.pid = s.pid AND o.status = 'O' AND o.shipwid = s.wid 

	AND o.quantity > s.quantity);





select * from query2;
