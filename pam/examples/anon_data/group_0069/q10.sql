truncate query10;


INSERT INTO Query10 (SELECT t2.lid, t2.lname, coalesce(t2.totalsales, 0) as totalsales FROM (SELECT * FROM (SELECT w.lid, SUM(o.quantity * o.price) AS totalsales FROM orders AS o, warehouse AS w WHERE status = 'S' and w.wid = o.shipwid GROUP BY w.lid) AS t1 NATURAL FULL JOIN location AS l) AS t2 ORDER BY lname ASC);



select * from query10;
