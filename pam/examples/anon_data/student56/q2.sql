truncate query2;
INSERT INTO Query2( SELECT oid, orders.pid, wid, orders.quantity AS ordqty, stock.quantity AS stockqty FROM stock INNER JOIN orders ON stock.pid = orders.pid WHERE orders.quantity < stock.quantity AND orders.status = 'O';)



select * from query2;
