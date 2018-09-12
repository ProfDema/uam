truncate query5;
INSERT INTO Query5 (

  SELECT

    pid,

    pname,

    introdate -- asgt says 'pame' but prof said pname on Piazza

  FROM product p

  WHERE NOT EXISTS(-- get only products which have never been ordered

      SELECT *

      FROM orders o

      WHERE o.pid = p.pid

  )

  ORDER BY pname ASC

);



select * from query5;
