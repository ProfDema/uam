truncate query6;
    INSERT INTO Query6 (

    SELECT  c.cid as cid,

            c.cname as cname,

            l.lname as locname



    FROM    location l, customer c



    WHERE   l.lid = c.lid AND

            c.cid <> ANY(SELECT DISTINCT cid

                            FROM orders)

    ORDER BY cname ASC

    );





select * from query6;
