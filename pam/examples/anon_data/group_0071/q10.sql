truncate query10;
INSERT INTO Query10 (

(SELECT

            l.lid as lid, l.lname as lname, SUM(o.quantity * o.price) as totalsales

        FROM location l 

            JOIN warehouse w ON w.lid = l.lid

            JOIN orders o ON w.wid = o.shipwid

        WHERE o.status = 'S'

        GROUP BY l.lname, l.lid

        ) 

UNION

(SELECT lid, lname, 0 as totalsales

FROM location 

WHERE lid NOT IN 

        (SELECT

            l.lid as lid

        FROM location l 

            JOIN warehouse w ON w.lid = l.lid

            JOIN orders o ON w.wid = o.shipwid

        WHERE o.status = 'S'

        ) 



) 

ORDER BY lname ASC

);

select * from query10;
