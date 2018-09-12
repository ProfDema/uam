truncate query7;
INSERT INTO Query7(

SELECT CAST(to_char(odate,'YYYYMM') as INTEGER) AS period,

	CAST(SUM(quantity * price) as NUMERIC(10,2)) AS sales,

	CAST(SUM(quantity * cost) as NUMERIC(10,2)) AS cost

FROM orders NATURAL JOIN product

GROUP BY CAST(to_char(odate,'YYYYMM') as INTEGER)

ORDER BY period ASC);



select * from query7;
