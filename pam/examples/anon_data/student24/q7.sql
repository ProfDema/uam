truncate query7;
CREATE VIEW monthGroup as SELECT CAST(TO_CHAR(o.odate, 'YYYYMM') AS INT) AS period, SUM((o.quantity * o.price)) as sales, SUM((o.quantity * p.cost)) as cost

	FROM orders as o

	INNER JOIN product as p

	ON p.pid = o.pid

	where (o.quantity * o.price) > 0

	GROUP BY period

	ORDER BY period ASC;

INSERT into query7 select * FROM monthGroup;

DROP VIEW IF EXISTS monthGroup CASCADE;



select * from query7;
