truncate query9;


CREATE VIEW salesamount AS(

SELECT p.pid, p.introdate AS date, (o.quantity*o.price) AS salesamount

FROM product p

LEFT JOIN orders o ON (p.pid = o.pid)

WHERE p.introdate <= '2015-12-31' AND (o.status = 'S' or o.status is null));



INSERT INTO Query9(

SELECT pid, date, 

CASE WHEN sum(salesamount) is null THEN 0

ELSE sum(salesamount) END AS totalsales

FROM salesamount

GROUP BY pid,date

ORDER BY date ASC);



DROP VIEW salesamount;



select * from query9;
