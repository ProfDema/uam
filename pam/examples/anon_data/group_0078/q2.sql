truncate query2;


INSERT INTO Query2 (

SELECT o.oid, o.pid, o.shipwid AS wid, o.quantity AS ordqty, s.quantity AS stockqty 

FROM orders o, stock s 

WHERE o.status = 'O' AND o.pid = s.pid AND o.shipwid = s.wid AND o.quantity > s.quantity);



select * from query2;
