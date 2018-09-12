truncate query4;


INSERT INTO QUERY4 (

SELECT pr.pid, pr.pname, SUM(ord.quantity*pr.cost) AS totalcost 

FROM product pr JOIN orders ord ON pr.pid = ord.pid 

WHERE ord.status = 'S' 

GROUP BY pr.pid HAVING SUM(ord.quantity*pr.cost) > 0 

ORDER BY totalcost ASC);



select * from query4;
