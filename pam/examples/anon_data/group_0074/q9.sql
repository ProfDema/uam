truncate query9;


CREATE VIEW r1 AS

SELECT pid, introdate AS date, SUM(quantity * price) AS totalsales

FROM orders NATURAL JOIN product 

WHERE introdate <= '2015-12-31' AND status = 'S'

GROUP BY pid, date

ORDER BY introdate ASC;



INSERT INTO query9(SELECT * FROM r1);



DROP VIEW IF EXISTS r1;



select * from query9;
