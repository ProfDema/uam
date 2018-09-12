truncate query7;
    INSERT INTO Query7 (

    SELECT  ym AS period,

            CAST(SUM(sale) as NUMERIC(10,2)) AS sales,

            CAST(SUM(cost) as NUMERIC(10,2)) AS cost



    FROM (

        SELECT  CAST(to_char(now(),'YYYYMM') as INTEGER) AS ym,

                o.price*o.quantity AS sale,

                p.cost * o.quantity AS cost



        FROM    product p,

                orders o



        WHERE   p.pid = o.oid AND

                o.status = 'S'

        ) as newtable



    GROUP BY ym

    ORDER BY period ASC

    );







select * from query7;
