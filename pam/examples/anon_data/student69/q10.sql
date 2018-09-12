truncate query10;
    INSERT INTO Query10 (

    SELECT lid,

            lname,

            CAST(SUM(sale) as NUMERIC(12,2)) AS totalsales



    FROM (

        SELECT l.lid as lid,

                l.lname as lname,

                o.quantity * o.price as sale

        FROM orders o, warehouse w, location l

        WHERE o.shipwid = w.wid AND

                w.lid = l.lid AND

                o.status = 'S'

        ) as newtable



    GROUP BY lid, lname

    ORDER BY lname ASC

    );







select * from query10;
