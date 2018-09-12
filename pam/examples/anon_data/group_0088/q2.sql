truncate query2;
	--[5 Marks] Find unshipped orders which cannot be shipped from their designated warehouse, that is, order with a quantity strictly more than

	--the quantity found in the stock for the product in this order. Report the order ID, product id, the warehouse ID, order quantity, and available

	--stock quantity.

	INSERT INTO query2

	SELECT o.oid as oid,  o.pid as pid, o.shipwid as wid, o.quantity as ordqty, s.quantity as stockqty

	FROM orders o,stock s

	WHERE o.shipwid = s.wid AND o.quantity > s.quantity AND o.status = 'O' and o.pid = s.pid;



select * from query2;
