truncate query10;


INSERT INTO Query10 (SELECT l.lid, l.lname, CAST(SUM(o.price*o.quantity) as NUMERIC(12,2)) AS totalsales

FROM orders o, warehouse w, location l

WHERE o.quantity>=0 AND o.status='S' AND o.shipwid=w.wid AND w.lid=l.lid

GROUP BY l.lid

ORDER BY l.lname 

);

select * from query10;
