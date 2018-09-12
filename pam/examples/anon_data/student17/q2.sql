truncate query2;
INSERT INTO Query2 (oid, pid, wid, ordqty, stockqty)

SELECT orders.oid, orders.pid, orders.shipwid, orders.quantity, stock.quantity

FROM orders, stock

WHERE orders.status = "O" AND orders.pid = stock.pid AND orders.shipwid = stock.wid AND stock.quantity < orders.quantity;





select * from query2;
