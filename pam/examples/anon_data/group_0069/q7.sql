truncate query7;


INSERT INTO Query7 (SELECT TO_CHAR(o.odate, 'YYYYMM')::INT AS period, SUM(o.quantity * o.price) AS sales, SUM(o.quantity * p.cost) AS cost FROM orders AS o, product AS p WHERE o.pid = p.pid and o.status = 'S' GROUP BY period ORDER BY period ASC);



select * from query7;
