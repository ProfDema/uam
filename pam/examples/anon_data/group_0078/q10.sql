truncate query10;


INSERT INTO Query10 (



CREATE VIEW warehouse_orders 

AS SELECT l.lid, o.quantity AS quantity, o.price AS price 

FROM orders o, warehouse w, location l 

WHERE o.status = 'S' AND o.shipwid = w.wid AND w.lid = l.lid;



SELECT l.lid as lid, l.lname as lname, 

CASE 

WHEN SUM(wo.quantity * wo.price) IS NULL THEN 0

ELSE SUM(wo.quantity * wo.price) 

END AS totalsales

FROM location l LEFT JOIN warehouse_orders wo ON l.lid = wo.lid 

GROUP BY l.lid 

ORDER BY l.lname ASC;

DROP VIEW warehouse_orders);

select * from query10;
