truncate query7;
INSERT INTO Query7 (

SELECT period, sum(sale), sum(qty * p.cost)

FROM (

	SELECT to_number(to_char(o.odate, 'YYYYMM'), '999999') AS period, o.quantity AS qty, o.quantity * o.price AS sale, o.oid AS oid, o.pid AS pid

	FROM orders o

	WHERE status = 'S'

	) t

JOIN product p ON t.pid = p.pid

GROUP BY period

ORDER BY period ASC

);



select * from query7;
