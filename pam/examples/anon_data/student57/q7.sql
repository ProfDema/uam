truncate query7;
INSERT INTO QUERY7 (SELECT CAST(CONCAT(EXTRACT(YEAR FROM odate), EXTRACT(MONTH FROM odate)) AS INT) AS period, 

					quantity * price AS sales, quantity * cost AS cost

					FROM orders LEFT JOIN product ON orders.pid = product.pid ORDER BY period ASC);





select * from query7;
