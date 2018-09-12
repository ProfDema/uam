truncate query10;
CREATE VIEW OrderNotShipped AS

(SELECT L.lid AS lid, L.lname as lname, 0 AS totalsales

 FROM location L, orders O, warehouse W

 WHERE W.wid = O.shipwid AND W.lid = L.lid AND O.status = 'O');



CREATE VIEW NoShippedWarehouse AS

(SELECT L.lid AS lid, L.lname AS lname, 0 AS totalsales

                     FROM location L

                      WHERE L.lid NOT IN

                        (SELECT shipwid

                          FROM orders));





CREATE VIEW WAREHOUSESHIPPED AS

  (SELECT L.lid AS lid, L.lname as lname, SUM(O.price * O.quantity) AS totalsales

                       FROM location L, orders O, warehouse W

                       WHERE W.wid = O.shipwid AND W.lid = L.lid AND O.status = 'S'

		       GROUP BY L.lid

		       );



CREATE VIEW UNIONSHIPPED AS

(SELECT *

FROM OrderNotShipped UNION (SELECT * FROM NoShippedWarehouse) UNION (SELECT * FROM WAREHOUSESHIPPED));



INSERT INTO Query10 (SELECT unionshipped.lid as lid, unionshipped.lname as lname, SUM(unionshipped.totalsales) as totalsales

		     FROM UNIONSHIPPED

		     GROUP BY unionshipped.lid, unionshipped.lname

		     ORDER by lname ASC);

DROP VIEW UNIONSHIPPED;

DROP VIEW OrderNotShipped;

DROP VIEW NoShippedWarehouse;

DROP VIEW WAREHOUSESHIPPED;

select * from query10;
