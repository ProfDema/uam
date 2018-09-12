truncate query2;
INSERT INTO query2(

SELECT o.oid, o.pid, o.shipwid AS wid, o.quantity AS ordqty, s.quantity AS stockqty

FROM orders AS o JOIN stock AS s ON s.pid = o.pid AND o.shipwid = s.wid 

WHERE o.status = 'O' AND s.quantity < o.quantity);





select * from query2;
