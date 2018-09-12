truncate query2;
--  Find unshipped orders which cannot be shipped from their designated warehouse, that is, order with a quantity strictly less than

-- the quantity found in the stock for the product in this order. Report the order ID, product id, the warehouse ID, order quantity, and available

-- stock quantity.

-- order quantity > warehouse quantity

-- order ID, product id, the warehouse ID, order quantity, 

-- and available stock quantity



INSERT INTO Query2 (SELECT oid, o.pid, shipwid wid, o.quantity ordqty, s.quantity stockqty from orders o join stock s ON s.wid = o.shipwid WHERE s.quantity < o.quantity AND s.pid = o.pid AND o.status = 'O');



select * from query2;
