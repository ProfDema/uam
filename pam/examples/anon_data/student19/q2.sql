truncate query2;
INSERT INTO Query2 (

  SELECT

    o.oid,

    o.pid,

    o.shipwid  wid,

    o.quantity ordqty,

    s.quantity stockqty

  FROM orders o, stock s

  WHERE o.shipwid = s.wid

        AND o.pid = stock.pid

        AND o.status = 'O'

        AND o.quantity > s.quantity

);



select * from query2;
