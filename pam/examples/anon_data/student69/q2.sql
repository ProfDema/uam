truncate query2;
    INSERT INTO Query2 (

    SELECT  o.oid as oid,

            o.pid as pid,

            s.wid as wid,

            o.quantity as ordqty,

            s.quantity as stockqty



    FROM    orders o,

            stock s



    WHERE   o.status = 'O' AND

            s.pid = o.pid AND

            o.shipwid = s.wid AND

            o.quantity > s.quantity

    );







select * from query2;
