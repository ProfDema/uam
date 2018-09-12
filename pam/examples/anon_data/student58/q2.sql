truncate query2;
INSERT INTO Query2 (

SELECT orders.oid AS oid, orders.pid AS pid, orders.shipwid AS wid, 

orders.quantity AS ordqty, stock.quantity AS stockqty

FROM orders, stock

WHERE orders.pid = stock.pid AND orders.shipwid = stock.wid 

AND orders.quantity > stock.quantity AND orders.status = 'O');





select * from query2;
