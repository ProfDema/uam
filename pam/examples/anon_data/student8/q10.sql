truncate query10;


CREATE VIEW salesamount AS(

SELECT l.lid, l.lname, (o.quantity * o.price) AS salesamount

FROM orders o

LEFT JOIN warehouse w ON (o.shipwid = w.wid)

LEFT JOIN location l ON (w.lid = l.lid)

WHERE o.status = 'S');



INSERT INTO Query10(

SELECT lid,lname, sum(salesamount) as totalsales

FROM salesamount

GROUP BY lid,lname

ORDER BY lname ASC);



DROP VIEW salesamount;









select * from query10;
