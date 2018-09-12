truncate query7;
INSERT INTO Query7 (

SELECT

	cast(to_char(o.odate,'YYYYMM') as int) AS period,

	SUM(o.price * o.quantity) as sales,

	SUM(p.cost * o.quantity) as cost

FROM orders o

	JOIN product p ON o.pid = p.pid

GROUP BY period

ORDER BY period ASC

);





select * from query7;
