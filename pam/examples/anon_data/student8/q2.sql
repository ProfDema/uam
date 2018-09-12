truncate query2;


INSERT INTO Query2(

SELECT o.oid, o.pid, o.shipwid as wid, o.quantity as ordqty, s.quantity as stockqty

FROM orders o

LEFT JOIN stock s ON (o.shipwid = s.wid AND o.pid = s.pid)

WHERE o.quantity > s.quantity AND o.status = 'O');



select * from query2;
