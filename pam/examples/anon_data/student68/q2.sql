truncate query2;
CREATE VIEW unshipped AS

SELECT oid, pid, shipwid, quantity

FROM orders

WHERE status = 'O';



INSERT INTO Query2(

SELECT oid as oid, u.pid as pid, u.shipwid as wid, u.quantity as ordqty, s.quantity as stockqty

FROM unshipped u , stock s

WHERE u.pid = s.pid AND u.shipwid = s.wid AND s.quantity < u.quantity);



drop view unshipped;





select * from query2;
