truncate query9;
INSERT INTO Query9 (

  SELECT

    p.pid,

    p.introdate               date,

    SUM(o.quantity * o.price) totalsales

  FROM product p, orders o

  WHERE p.pid = o.pid

        AND o.status = 'S'

        AND p.introdate < '2015-12-31' :: DATE

  GROUP BY p.pid, p.introdate

  ORDER BY date ASC

);



select * from query9;
