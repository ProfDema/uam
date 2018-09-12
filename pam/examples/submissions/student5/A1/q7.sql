truncate query7;


CREATE VIEW costs AS (

SELECT ord.quantity, ord.price, pr.cost, ord.odate 

FROM orders ord JOIN product pr ON ord.pid = pr.pid 

WHERE ord.status = 'S');



CREATE VIEW periods AS (

SELECT c.quantity, c.price, c.cost, to_char(c.odate, 'yyyymm') AS period 

FROM costs c);



INSERT INTO QUERY7 (

SELECT CAST(period AS INTEGER), SUM(p.quantity * p.price) AS sales, SUM(p.quantity * p.cost) 

FROM periods p 

GROUP BY period HAVING SUM(p.quantity * p.price) > 0 

ORDER BY period ASC);



DROP VIEW periods;

DROP VIEW costs;



select * from query7;
