truncate query2;


INSERT INTO Query2 (SELECT o.oid, o.pid, o.shipwid AS wid, o.quantity AS ordqty, s.quantity AS stockqty FROM Orders AS o, Stock AS s WHERE o.pid = s.pid and o.shipwid = s.wid and status = 'O' and o.quantity > s.quantity);



select * from query2;
