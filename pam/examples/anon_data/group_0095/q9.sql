truncate query9;
CREATE VIEW shipped AS

SELECT * 

FROM warehouse w JOIN orders o ON o.shipwid=w.wid

WHERE o.status = 'S';



INSERT INTO query10(

SELECT l.lid, l.lname AS locname, SUM(shipped.price * shipped.quantity) AS totalsales 

FROM location l LEFT OUTER JOIN shipped ON l.lid=shipped.lid 

GROUP BY l.lid

ORDER BY l.lname ASC);



DROP VIEW IF EXISTS shipped CASCADE;







select * from query9;
