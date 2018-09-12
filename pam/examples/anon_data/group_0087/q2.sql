truncate query2;
INSERT INTO Query2 (

SELECT o.oid AS oid, o.pid AS pid, o.shipwid AS wid, o.quantity AS ordqty, s.quantity AS stockqty

FROM orders o

JOIN stock s ON o.pid = s.pid

WHERE o.status = 'O' AND o.quantity > s.quantity);





select * from query2;
