truncate query8;
INSERT INTO query9(

SELECT p.pid, p.introdate AS "date", SUM(o.price * o.quantity) AS totalsales 

FROM product p NATURAL JOIN orders o 

WHERE o.status='S' AND p.introdate < '2015-12-31' 

GROUP BY p.pid 

ORDER BY p.introdate ASC);





select * from query8;
