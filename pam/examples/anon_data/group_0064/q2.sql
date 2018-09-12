truncate query2;
INSERT INTO Query2 (

SELECT o.oid, o.pid, o.shipwid AS wid, CAST(o.quantity AS NUMERIC(10,2)) AS ordqty, CAST(s.quantity AS NUMERIC(10,2)) AS stockqty

FROM stock s, orders o

WHERE o.shipwid = s.wid AND o.pid = s.pid AND o.quantity > s.quantity AND o.status = 'O');



select * from query2;
