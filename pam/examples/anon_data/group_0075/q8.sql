truncate query8;


----------------Total price view

CREATE VIEW totalpriceview AS (SELECT cid, SUM(price*quantity) AS "sales" 

				FROM orders

				GROUP BY cid);



INSERT INTO Query8 (SELECT c.cid, c.cname, SUM(tp.sales*r.commission) AS "commission"

			FROM referral r, totalpriceview tp, customer c

			WHERE r.custref = tp.cid AND r.custid = c.cid

			GROUP BY c.cid

			ORDER BY c.cname);

DROP VIEW totalpriceview;



--------------------------------



select * from query8;
