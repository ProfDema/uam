truncate query2;


INSERT INTO Query2 SELECT oid, pid, wid, orders.quantity AS ordqty, stock.quantity AS stockqty FROM orders JOIN stock USING (pid) WHERE shipwid = wid AND orders.quantity > stock.quantity AND status = 'O';



select * from query2;
