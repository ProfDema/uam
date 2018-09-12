truncate query4;
    INSERT INTO Query4 (

    SELECT  p.pid as pid,

            p.pname as pname,

            CAST(SUM(o.quantity*p.cost) AS NUMERIC(12,2)) as totalcost



    FROM    orders o,

            product p



    WHERE   o.status = 'S' AND

            p.pid = o.pid



    GROUP BY p.pid, p.pname

    ORDER BY totalcost ASC

    );





select * from query4;
