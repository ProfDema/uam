truncate query2;


INSERT INTO Query2 

	(SELECT o.oid AS oid, o.pid AS pid, o.shipwid AS wid, o.quantity AS ordqty, s.quantity as stockqty

	FROM orders o

	JOIN stock s ON o.pid = s.pid AND o.shipwid = s.wid

	WHERE o.status = 'o' AND o.quantity > s.quantity);





select * from query2;
