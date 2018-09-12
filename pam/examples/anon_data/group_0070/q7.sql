truncate query7;
INSERT INTO Query7(SELECT cast(to_char(o.odate,'YYYYMM') as int) AS period, SUM(o.quantity * o.price) 

	AS sales, SUM(o.quantity * p.cost) AS cost FROM orders o JOIN product p ON o.pid = p.pid WHERE o.status = 'S'

	GROUP BY period ORDER BY period);





select * from query7;
