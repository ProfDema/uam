truncate query5;


INSERT INTO Query5

        (SELECT p.pid AS pid, p.pname AS pname, p.introdate AS introdate

        FROM product p

        LEFT OUTER JOIN orders o ON o.pid = p.pid

        WHERE o.oid IS NULL

        ORDER BY p.pname ASC);



select * from query5;
