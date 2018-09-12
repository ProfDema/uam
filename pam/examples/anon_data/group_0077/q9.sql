truncate query9;


CREATE TEMP VIEW test9 AS



	SELECT prod.pid AS pid, prod.introdate AS introdate, SUM(ord.price * ord.quantity) AS totalsales



	FROM product prod, orders ord



	WHERE prod.pid = ord.pid AND introdate <= '2015-12-31' AND ord.status = 'S'



	GROUP BY prod.pid



	ORDER BY introdate ASC;





INSERT INTO Query9



	SELECT * FROM test9



	;



DROP VIEW test9;



select * from query9;
