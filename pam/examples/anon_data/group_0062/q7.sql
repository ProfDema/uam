truncate query7;


INSERT INTO query7 SELECT cast(TO_CHAR (odate, 'YYYYMM') as int) AS period, SUM(quantity * price) AS sales, SUM(cost*quantity) AS cost FROM orders JOIN product USING(pid) GROUP BY period ORDER BY period;



select * from query7;
