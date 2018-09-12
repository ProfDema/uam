truncate query5;
INSERT INTO Query5(

	SELECT p.pid, p.name, p.introdate

	FROM product AS p

	WHERE NOT EXISTS(

		SELECT p1.pid, p1.name, p1.introdate

		FROM product AS p1 JOIN orders AS o ON p1.pid = o.pid)

)



select * from query5;
