truncate query7;
-- Needs Month to be casted to something with 2 digits.

INSERT INTO Query7 (SELECT CAST((CAST(EXTRACT(YEAR FROM odate) AS VARCHAR) || CAST(EXTRACT(MONTH FROM odate) AS VARCHAR)) AS INTEGER) AS period, SUM(quantity*price) AS sales, SUM(quantity*cost) AS cost FROM orders O, product P WHERE O.pid=P.pid GROUP BY period);



select * from query7;
