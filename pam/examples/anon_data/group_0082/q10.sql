truncate query10;
CREATE VIEW ShippedOrder as

	SELECT L.lid AS lid, L.lname AS lname, SUM(O.quantity * O.price) AS totalsales

	FROM orders O, warehouse W, location L

	WHERE O.status = 'S' AND O.shipwid = W.wid AND W.lid = L.lid

	GROUP BY L.lid, L.lname;





CREATE VIEW NotInOrder as

	SELECT L.lid AS lid, L.lname AS lname, 0 AS totalsales

	FROM warehouse W, location L, orders O

	WHERE O.shipwid = W.wid AND L.lid NOT IN 

				(SELECT lid FROM ShippedOrder)

	GROUP BY L.lid, L.lname;



INSERT INTO Query10 ((SELECT *

		     FROM ShippedOrder) UNION 

		     (SELECT * FROM NotInOrder)

		      ORDER BY lname

		     );



DROP VIEW NotInOrder;

DROP VIEW ShippedOrder;



















select * from query10;
