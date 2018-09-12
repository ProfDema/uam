truncate query1;
INSERT INTO Query1 (

  SELECT

    ref.custref refid,

    cref.cname  refname,

    ref.custid  cuid,

    c.cname     cuname

  FROM referral ref, customer c, customer cref

  WHERE c.cid = ref.custid AND cref.cid = ref.custref

  ORDER BY cuname ASC

);



select * from query1;
