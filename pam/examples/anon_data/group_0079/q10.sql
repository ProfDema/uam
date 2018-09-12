truncate query10;
INSERT INTO Query10(SELECT * FROM (select l.lid, l.lname, CAST(SUM(price*quantity) as NUMERIC(12,2)) as sales FROM location l, orders o, warehouse w WHERE w.wid = o.shipwid and w.lid= l.lid and status='S' group by l.lid UNION select lid, lname, 0 as sales FROM location where lid NOT IN (Select lid FROM orders o, warehouse w WHERE w.wid = o.shipwid and status='S')) as foo ORDER BY lname);

select * from query10;
