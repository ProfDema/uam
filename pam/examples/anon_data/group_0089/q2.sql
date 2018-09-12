truncate query2;
INSERT INTO Query2

(SELECT oid, stock.pid AS "pid", wid, orders.quantity AS "ordqty", stock.quantity AS "stockqty"

FROM stock,orders

WHERE stock.pid = orders.pid AND stock.quantity<orders.quantity);



select * from query2;
