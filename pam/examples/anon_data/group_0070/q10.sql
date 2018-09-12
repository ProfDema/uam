truncate query10;
INSERT INTO Query10(SELECT l.lid AS lid, l.lname AS lname, COALESCE(totalsales, 0) AS totalsales FROM(SELECT o.shipwid, sum(o.quantity*o.price) AS totalsales FROM orders o WHERE status = 'S' GROUP BY o.shipwid)a 

JOIN warehouse w ON a.shipwid = w.wid RIGHT OUTER JOIN location l on l.lid = w.lid ORDER BY l.lname);



select * from query10;
