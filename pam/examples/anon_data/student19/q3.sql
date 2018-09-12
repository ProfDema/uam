truncate query3;
INSERT INTO Query3 (

  SELECT

    c.cid                     cuid,

    c.cname                   cuname,

    SUM(o.quantity * o.price) totalsales

  FROM customer c, orders o

  WHERE c.cid = o.cid

        AND o.status = 'S'

  GROUP BY c.cid, c.cname

  ORDER BY totalsales DESC

);



select * from query3;
