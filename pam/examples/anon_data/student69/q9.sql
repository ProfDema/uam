truncate query9;
    INSERT INTO Query9 (

    SELECT  pid,

            date,

            CAST(SUM(sale) as NUMERIC(12,2)) AS totalsales



    FROM (

            SELECT  o.pid,

                    introdate AS date,

                    o.quantity * o.price AS sale



            FROM orders o,

                    product p



            WHERE   p.pid = o.pid AND

                    p.introdate <= CAST('2015-12-31' as DATE) AND

                    o.status = 'S'

            ) as newtable



    GROUP BY pid, date

    ORDER BY date ASC

    );



select * from query9;
