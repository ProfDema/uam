truncate query10;


CREATE TEMP VIEW Atleast1 AS



	SELECT loc.lid AS lid, loc.lname AS lname, SUM(ord.quantity * ord.price) AS totalsales



	FROM location loc, warehouse ware, orders ord



	WHERE loc.lid = ware.lid AND ware.wid = ord.shipwid AND ord.status = 'S'



	GROUP BY loc.lid;





CREATE TEMP VIEW NoSales AS



	SELECT loc.lid AS lid, loc.lname AS lname



	FROM location loc



	WHERE loc.lid NOT IN(SELECT lid FROM Atleast1);







CREATE TEMP VIEW NoSalesNoMoney AS



	SELECT lid, lname, 0 AS totalsales



	FROM NoSales;







CREATE TEMP VIEW Final1 AS



	SELECT * FROM NoSalesNoMoney 



	UNION ALL 



	SELECT * FROM Atleast1;



CREATE TEMP VIEW Final2 AS



	SELECT lid, lname, totalsales



	FROM Final1



	ORDER BY lname ASC;





INSERT INTO Query10



	SELECT * 

	FROM Final2 

	ORDER BY lname ASC;



DROP VIEW Final2;

DROP VIEW Final1;

DROP VIEW NoSalesNoMoney;

DROP VIEW NoSales;

DROP VIEW Atleast1;







select * from query10;
