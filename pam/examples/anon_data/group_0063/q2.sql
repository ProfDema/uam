truncate query2;
INSERT INTO Query2

( 

	SELECT o.oid as oid, o.pid as pid, s.wid as wid, o.quantity as ordqty, s.quantity as stockqty

	FROM orders o JOIN stock s 

	ON o.pid = s.pid AND s.wid = o.shipwid  --add this 

	WHERE status = 'O' AND o.quantity > s.quantity -- quantity part

);





select * from query2;
