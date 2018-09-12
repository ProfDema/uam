truncate query10;
INSERT INTO Query10(lid, lname, totalsales)

SELECT l.lid, l.lname, CAST(SUM(o.price*o.quantity) AS NUMERIC(12, 2)) AS "totalsales"

FROM location AS l, orders AS o, warehouse AS w

WHERE o.status = 'S' AND o.shipwid = w.wid AND l.lid = w.lid

GROUP BY l.lid

ORDER BY l.lname ASC;

select * from query10;
