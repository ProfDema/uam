truncate query2;
INSERT INTO Query2(

	SELECT oid, pid, wid, ordqty, stockqty

	FROM orders, stock

	WHERE stock.status = 'O', stock.wid = orders.shipwid , stock.pid = orders.pid , stock.quantity<orders.quantity

	)



select * from query2;
