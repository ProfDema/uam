truncate query10;
-- Sales grouped by location

-- use lid in customer to get location



INSERT INTO Query10 (SELECT l.lid AS lid, l.lname AS lname, SUM(o.price * o.quantity) AS totalsales FROM orders o JOIN warehouse w ON o.shipwid = w.wid JOIN location l ON w.lid = l.lid GROUP BY l.lid, l.lname ORDER BY lname ASC);

select * from query10;
