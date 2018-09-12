truncate query10;


CREATE VIEW v AS (

SELECT w.lid, o.shipwid, COALESCE(SUM(quantity * price), 0) AS totalsales

FROM warehouse w FULL OUTER JOIN orders o ON w.wid = o.shipwid

GROUP BY o.shipwid, w.lid);



INSERT INTO QUERY10 (

SELECT l.lid, l.lname, SUM(v.totalsales)

FROM location l join v ON l.lid = v.lid

GROUP BY l.lid, lname

ORDER BY l.lname ASC);



DROP VIEW v;











select * from query10;
