truncate query10;


-- orders augmented with the warehouse locations and only shipped ones

-- also contains the sales money earned per location

CREATE VIEW orderLocSale AS

	SELECT l.lid AS lid, l.lname AS lname, SUM(o.quantity*o.price) AS totalsales

	FROM orders o, warehouse w, location l

	WHERE o.shipwid = w.wid

		AND w.lid = l.lid

		AND o.status = 'S'

	GROUP BY l.lid, l.lname;



CREATE VIEW locSales AS

	SELECT l.lid AS lid, l.lname AS lname, ol.totalsales AS totalsales

	FROM location l LEFT OUTER JOIN orderLocSale ol

		ON l.lid = ol.lid;



INSERT INTO query10 (SELECT * FROM locSales ORDER BY totalsales);



DROP VIEW locSales;

DROP VIEW orderLocSale;

select * from query10;
