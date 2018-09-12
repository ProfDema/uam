truncate query10;
Create View fts AS(

SELECT shipwid, sum(quantity * price) AS totalsales 

FROM orders WHERE status = 'S' GROUP BY shipwid );





Create View salesNotZero AS (

SELECT l.lid, l.lname, sum(fts.totalsales)

FROM fts, location AS l, warehouse AS w

WHERE w.wid = fts.shipwid AND w.lid = l.lid

GROUP BY l.lid);



Create View ZeroSales AS(

SELECT lid, lname, 0 AS totalsales

FROM location

WHERE lid NOT IN (SELECT lid from salesNotZero));



Create View sales AS (

SELECT l.lid, l.lname, sum(fts.totalsales)

FROM fts, location AS l, warehouse AS w

WHERE w.wid = fts.shipwid AND w.lid = l.lid

GROUP BY l.lid

union all

SELECT lid, lname, 0 AS totalsales

FROM location

WHERE lid NOT IN (SELECT lid FROM salesNotZero));



INSERT INTO Query10 (SELECT DISTINCT * FROM sales ORDER BY lname);





DROP VIEW IF EXISTS sales; 

DROP VIEW IF EXISTS ZeroSales; 

DROP VIEW IF EXISTS salesNotZero;

DROP VIEW IF EXISTS fts;

select * from query10;
