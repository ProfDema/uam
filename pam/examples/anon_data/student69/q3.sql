truncate query3;
    INSERT INTO Query3 (

    SELECT  c.cid as cuid,

            c.cname as cuname,

            CAST(SUM(o.quantity*o.price) as NUMERIC(12,2)) as totalsales



    FROM    orders o,

            customer c



    WHERE   o.status = 'S' AND

            o.cid = c.cid



    GROUP BY c.cid, c.cname

    ORDER BY totalsales DESC

    );







select * from query3;
