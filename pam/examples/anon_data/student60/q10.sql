truncate query10;
CREATE VIEW withSales AS

SELECT location.lid AS lid, location.lname AS lname, SUM(quantity*price) AS totalsales

FROM location, warehouse, orders 

WHERE warehouse.wid = orders.shipwid AND location.lid = warehouse.lid AND status = 'S'

GROUP BY location.lid;



CREATE VIEW noSales AS

SELECT location.lid AS lid, location.lname AS lname, 0 AS totalsales

FROM location

WHERE lid NOT IN (SELECT lid 

	FROM warehouse w, orders o

	WHERE w.wid = o.shipwid AND status = 'S');



INSERT INTO Query10 (SELECT *

	FROM withSales NATURAL FULL OUTER JOIN noSales

	ORDER BY lname);



DROP VIEW withSales;

DROP VIEW noSales;

select * from query10;
