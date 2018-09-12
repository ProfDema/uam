truncate query5;
INSERT INTO Query5 (pid, pname, introdate)

SELECT pid, pname, introdate

FROM product

WHERE pid NOT IN (SELECT pid from orders)

ORDER BY pname ASC;  







select * from query5;
