truncate query10;


-------------Total sales view

CREATE VIEW totalsalesview AS (SELECT orders.shipwid, SUM(orders.quantity*orders.price) AS "totalsales"

				FROM orders	

				WHERE orders.status = 'S'

				GROUP BY orders.shipwid);

CREATE VIEW Query10View AS (SELECT l.lid, l.lname, SUM(tpv.totalsales) AS "totalsales"

                        FROM warehouse w

                        LEFT OUTER JOIN totalsalesview tpv ON tpv.shipwid = w.wid

                        RIGHT OUTER JOIN location l ON w.lid = l.lid

                        GROUP BY l.lid

                        ORDER BY l.lname);





INSERT INTO Query10 (SELECT lid, lname, COALESCE(totalsales,0)

			FROM Query10View);

DROP VIEW Query10View;

DROP VIEW totalsalesview;

select * from query10;
