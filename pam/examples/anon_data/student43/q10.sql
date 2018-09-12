truncate query10;


INSERT INTO Query10 (SELECT W.lid, lname, SUM(price*quantity) AS totalsales FROM orders O, location L, warehouse W WHERE status='S' AND shipwid=wid AND W.lid=L.lid GROUP BY W.lid, lname ORDER BY lname ASC);

select * from query10;
