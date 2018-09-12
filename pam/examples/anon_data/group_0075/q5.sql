truncate query5;


INSERT INTO Query5 (SELECT pid, pname, introdate

			FROM product

			WHERE pid NOT IN (SELECT DISTINCT pid FROM orders)

			ORDER BY pname);



select * from query5;
