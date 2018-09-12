truncate query5;
INSERT INTO Query5(pid, pname, introdate)

SELECT pid, pname, introdate

FROM product as p

WHERE pid NOT IN  (SELECT pid FROM orders)

ORDER BY pname ASC;





select * from query5;
