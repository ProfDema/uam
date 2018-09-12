truncate query5;
INSERT INTO Query5(

SELECT pid, pname, introdate

FROM product 

WHERE pid <> ANY (SELECT DISTINCT pid FROM orders)

ORDER BY pname ASC);



select * from query5;
