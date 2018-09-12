truncate query10;
INSERT INTO Query10 (

  SELECT

    w.lid,

    location.lname,

    SUM(o.quantity * o.price) totalsales

  FROM warehouse w, location l, orders o, product p

  WHERE o.pid = p.pid

        AND o.shipwid = w.wid

        AND w.lid = l.lid

        AND o.status = 'S'

  GROUP BY w.lid, location.lname

  ORDER BY lname ASC

);



select * from query10;
