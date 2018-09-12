truncate query5;


INSERT INTO Query5(

SELECT p.pid, p.pname, p.introdate 

FROM product p

LEFT JOIN orders o ON (p.pid = o.pid)

WHERE o.pid is NULL

ORDER BY pname ASC);





select * from query5;
