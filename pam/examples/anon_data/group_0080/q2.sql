truncate query2;
INSERT INTO Query2(oid, pid, wid, ordqty, stockqty)

SELECT o.oid AS oid, o.pid AS pid, o.shipwid AS wid, CAST(o.quantity as NUMERIC(10,2)) AS "ordqty", CAST(s.quantity as NUMERIC(10,2)) AS stockqty

FROM orders AS o, stock AS s

WHERE o.pid = s.pid AND o.status = 'O' AND  o.shipwid = s.wid AND s.quantity < o.quantity;



select * from query2;
