SET search_path TO a2;

TRUNCATE Query2;

--
-- Query2
-- oid pid wid ordqty stockqty
INSERT INTO query2(
   SELECT o.oid, o.pid, o.shipwid, o.quantity, s.quantity
   FROM orders AS o, stock AS s
   WHERE s.wid = shipwid 
     AND o.pid = s.pid 
	 AND o.status = 'O'
	 AND o.quantity > s.quantity
);

SELECT * FROM Qery2;


