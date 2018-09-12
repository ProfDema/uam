truncate query7;


CREATE VIEW r1 AS

SELECT pid, CAST(TO_CHAR(odate, 'YYYYMM') AS INTEGER) AS period,

quantity, quantity*price AS sales FROM orders;



CREATE VIEW r2 AS

SELECT period, SUM(sales) AS sales, SUM(quantity*cost) AS cost

FROM R1 NATURAL JOIN product

GROUP BY period ORDER BY period ASC;



INSERT INTO query7(SELECT * FROM r2);



DROP VIEW IF EXISTS r2;

DROP VIEW IF EXISTS r1;



select * from query7;
