truncate query5;
CREATE VIEW prods AS

    SELECT pid, pname, introdate

    FROM product

    WHERE pid NOT IN (SELECT pid FROM orders);



INSERT INTO Query5

    (SELECT *

    FROM prods

    ORDER BY pname ASC);



DROP VIEW prods;



select * from query5;
