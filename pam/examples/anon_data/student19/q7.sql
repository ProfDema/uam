truncate query7;
INSERT INTO Query7 (

  SELECT

    to_char(o.odate, 'YYYYMM') period,

    SUM(o.quantity * o.price)  sales,

    SUM(o.quantity * p.cost)   cost

  FROM orders o, product p

  WHERE o.pid = p.pid

        AND o.status = 'S'

  GROUP BY period

  ORDER BY period ASC

);



select * from query7;
