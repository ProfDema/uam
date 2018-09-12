truncate query2;
INSERT INTO Query2 (

SELECT o.oid, o.pid, o.shipwid as wid, o.quantity as ordqty, s.quantity as stockqty 

FROM Orders o NATURAL JOIN stock s

WHERE o.quantity > s.quantity AND status = 'O'

);





select * from query2;
