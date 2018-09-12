truncate query5;
INSERT INTO Query5

(SELECT pid, pname, introdate

FROM product 

WHERE pid NOT IN (select distinct pid from orders)

ORDER BY pname);



select * from query5;
