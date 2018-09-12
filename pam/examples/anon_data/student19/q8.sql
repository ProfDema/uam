truncate query8;
INSERT INTO Query8 (

  SELECT

    c.cid,

    c.cname,

    SUM(oref.quantity * oref.price) * (r.commission / 100) commission

  FROM customer c, referral r, orders oref

  WHERE c.cid = r.custid

        AND oref.cid = r.custref

  GROUP BY c.cid, c.cname

  ORDER BY c.cname ASC

);



select * from query8;
