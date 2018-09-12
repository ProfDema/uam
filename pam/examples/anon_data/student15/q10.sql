truncate query10;
 

INSERT INTO Query10(

SELECT l.lid , lname, SUM(o.price*o.quantity) as totalsales 

FROM location l LEFT OUTER JOIN warehouse w

ON w.lid = l.lid

LEFT JOIN Orders o

ON w.wid = o.shipwid

WHERE status = 'S'

GROUP BY l.lid

ORDER BY lname ASC;

);







select * from query10;
