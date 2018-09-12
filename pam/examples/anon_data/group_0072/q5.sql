truncate query5;
INSERT INTO query5(

    SELECT pid, pname, introdate

    FROM product

    WHERE pid NOT IN(SELECT pid FROM orders)

    ORDER BY pname);





select * from query5;
