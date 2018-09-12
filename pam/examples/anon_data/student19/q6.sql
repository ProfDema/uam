truncate query6;
INSERT INTO Query6 (

  SELECT

    c.cid,

    c.cname,

    l.lname locname

  FROM customer c, location l

  WHERE NOT EXISTS(-- choose only customers without orders

      SELECT *

      FROM orders o

      WHERE o.cid = c.cid

  )

  ORDER BY cname ASC

);



select * from query6;
