truncate query2;


INSERT INTO query2(select oid, s.pid, s.wid, o.quantity, s.quantity from stock s, orders o where shipwid = s.wid and o.pid = s.pid and o.quantity > s.quantity and status = 'O');



select * from query2;
