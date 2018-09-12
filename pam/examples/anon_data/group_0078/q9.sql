truncate query9;


INSERT INTO Query9 (

SELECT p.pid AS pid, p.introdate AS date, SUM(o.quantity * o.price) AS totalsales 

FROM orders o, product p 

WHERE o.status = 'S' AND p.introdate <= '2015-12-31' AND o.pid = p.pid 

GROUP by p.pid 

ORDER BY date ASC);



select * from query9;
