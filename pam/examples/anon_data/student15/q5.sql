truncate query5;
INSERT INTO Query5(

SELECT p.pid as pid, p.pname as pame , introdate

FROM product p LEFT JOIN orders o

ON p.pid = o.pid --maybe dont check pid equals

WHERE o.oid IS NULL 

ORDER BY p.pname ASC

);





select * from query5;
