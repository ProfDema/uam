truncate query8;


INSERT INTO Query8

	(SELECT r.cid AS cid, r.cname AS cname, sum(0.005 * o.price * O.quantity) AS commission

        FROM referral re

        JOIN customer c ON c.cid = re.custid

        JOIN customer r ON r.cid = re.custref

	JOIN orders o ON c.cid = o.cid

	GROUP BY r.cid

        ORDER BY r.cname ASC);



select * from query8;
