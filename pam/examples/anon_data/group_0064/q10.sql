truncate query10;
INSERT INTO Query10 (

SELECT l.lid, l.lname , CAST(sum(o.quantity * o.price) AS NUMERIC(12,2)) AS totalsales

FROM orders o, location l, warehouse w

WHERE o.status = 'S' AND w.lid = l.lid AND w.wid = o.shipwid 

GROUP BY l.lid, l.lname

ORDER BY l.lname ASC );



select * from query10;
