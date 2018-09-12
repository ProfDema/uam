truncate query3;


CREATE VIEW r1 AS

SELECT cid, quantity*price AS sales

FROM orders WHERE status = 'S';



CREATE VIEW r2 AS

SELECT cid AS cuid, cname AS cuname, SUM(sales) AS totalsales

FROM r1 NATURAL JOIN customer

GROUP BY cid, cname ORDER BY totalsales DESC;



INSERT INTO query3(SELECT * FROM r2);



DROP VIEW IF EXISTS r2;

DROP VIEW IF EXISTS r1;



select * from query3;
