truncate query2;


INSERT INTO Query2 (SELECT oid, O.pid AS pid, shipwid AS wid, O.quantity AS ordqty, S.quantity AS stockqty FROM orders O, stock S WHERE O.pid = S.pid AND status = 'O' AND O.quantity > S.quantity);



select * from query2;
