truncate query7;


CREATE VIEW periods AS

	SELECT *, (EXTRACT (year FROM odate) * 100)+(EXTRACT (month FROM odate)) AS period

	FROM orders

	GROUP BY oid,period;



INSERT INTO Query7(

	SELECT period,CAST(SUM(PR.price * PR.quantity) as NUMERIC(12,2)) AS sales, CAST(SUM(P.cost * PR.quantity) as NUMERIC(12,2)) AS cost

	FROM periods PR, product P

	WHERE PR.status = 'S'

	GROUP BY period

	ORDER BY period ASC

	);



DROP VIEW periods;



select * from query7;
