truncate query7;
INSERT INTO Query7 (SELECT CAST(TO_CHAR(o.odate, 'YYYYMM') AS NUMERIC(10,2)) AS "period", SUM(o.quantity*o.price) AS "sales", SUM(p.cost * o.quantity) AS "cost"

			FROM orders o, product p

			WHERE o.pid = p.pid AND o.status = 'S'

			GROUP BY period

			ORDER BY period); 



select * from query7;
