truncate query4;
INSERT INTO Query4 (

  SELECT

    o.pid,

    p.pname,

    SUM(o.quantity * p.cost) totalcost

  FROM orders o, product p

  WHERE o.pid = p.pid

        AND status = 'S'

  GROUP BY o.pid, p.pname

  ORDER BY totalcost ASC

);



select * from query4;
