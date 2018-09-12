truncate query7;
INSERT INTO Query7 (SELECT CAST(TO_CHAR(odate, 'YYYYMM') AS INTEGER) AS period, SUM(quantity*price) AS sales, SUM(quantity*cost) AS cost

			FROM orders NATURAL RIGHT JOIN product

			WHERE orders.pid = product.pid

			GROUP BY period

			ORDER BY period);





select * from query7;
