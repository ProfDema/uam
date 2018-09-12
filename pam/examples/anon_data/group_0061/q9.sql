truncate query9;




CREATE VIEW intro AS (SELECT pro.pid, pro.introdate FROM product pro WHERE pro.introdate <= '2015-12-31');



INSERT INTO QUERY9 (

SELECT intro.pid, intro.introdate, SUM(ord.quantity*ord.price) AS totalcost 

FROM orders ord JOIN intro on intro.pid = ord.pid 

WHERE status = 'S' 

GROUP BY intro.pid, intro.introdate HAVING SUM(ord.quantity*ord.price) > 0 

ORDER BY intro.introdate ASC);



DROP VIEW intro;



select * from query9;
