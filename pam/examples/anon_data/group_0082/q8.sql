truncate query8;
CREATE VIEW purchases as

SELECT r.custid, SUM(r.commission * o.quantity * o.price) AS commission

FROM referral r, orders o

WHERE r.custref = o.cid

GROUP BY r.custid, o.quantity, o.price, r.commission;



INSERT INTO Query8 (SELECT p.custid, c.cname, SUM(p.commission)

		    FROM purchases p, customer c

		    WHERE p.custid = c.cid

                    GROUP BY p.custid, c.cname

	            ORDER BY c.cname ASC);



DROP VIEW purchases;



select * from query8;
