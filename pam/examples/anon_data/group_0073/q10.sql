truncate query10;


--CREATE VIEW warehouse_sales AS

--SELECT location.lid, location.lname, t.totalsales 

	--FROM (SELECT shipwid, SUM(quantity * price) AS totalsales

	--	FROM orders 

	--	WHERE status = 'S'

	--	GROUP BY shipwid) t

--	JOIN warehouse 

--	ON warehouse.wid = t.shipwid

--	JOIN location

--	ON warehouse.lid = location.lid;





CREATE VIEW warehouse_sales AS

SELECT warehouse.lid AS lid, SUM(quantity * price) AS totalsales

	FROM orders 

	JOIN warehouse ON orders.shipwid = warehouse.wid

	WHERE status = 'S' 

	GROUP BY warehouse.lid;



CREATE VIEW ordered_empty_sales AS

SELECT warehouse.lid AS lid, 0 AS totalsales

	FROM orders 

	JOIN warehouse ON orders.shipwid = warehouse.wid

	WHERE status = 'O' AND lid NOT IN (SELECT lid FROM warehouse_sales) 

	GROUP BY warehouse.lid;



CREATE VIEW empty_sales AS

SELECT DISTINCT location.lid, 0 AS totalsales 

	FROM location

	WHERE lid NOT IN 

	(SELECT lid FROM warehouse_sales 

	UNION SELECT lid FROM ordered_empty_sales);



INSERT INTO Query10

(

SELECT DISTINCT t.lid, location.lname, t.totalsales

FROM (SELECT * FROM warehouse_sales

	UNION

	SELECT * FROM empty_sales

	UNION

	SELECT * FROM ordered_empty_sales

	) t

	JOIN location ON t.lid = location.lid

	ORDER BY location.lname ASC

);



DROP VIEW empty_sales;	

DROP VIEW ordered_empty_sales;

DROP VIEW warehouse_sales;









select * from query10;
