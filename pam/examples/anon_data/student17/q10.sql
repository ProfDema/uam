truncate query10;
CREATE VIEW [order_loc] AS

SELECT customer.lid AS locid, SUM(order.quantity * order.price) AS totalsales

FROM orders INNER JOIN customer ON orders.cid = customer.cid

WHERE orders.status = "S"

GROUP BY locid;



INSERT INTO Query10 (lid, lname, totalsales)

SELECT location.lid, location.lname, order_loc.totalsales

FROM order_loc INNER JOIN location ON order_loc.locid = location.lid

ORDER BY location.lname;



DROP VIEW order_loc;

 



select * from query10;
