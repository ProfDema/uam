truncate query2;
INSERT INTO QUERY2 (

	SELECT o.oid AS oid, o.pid AS pid, o.shipwid AS wid, o.quantity AS ordqty, s.quantity AS stockqty

	FROM orders AS o, stock AS s

	WHERE o.status = 'O' AND o.pid = s.pid AND o.quantity > s.quantity

	);





select * from query2;
