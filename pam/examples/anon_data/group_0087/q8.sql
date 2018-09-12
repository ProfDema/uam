truncate query8;
INSERT INTO Query8 (

SELECT custid, cname, totall

FROM(

	SELECT custid, sum((total * r.commission) / 100) AS totall

	FROM ((

		SELECT referees.cid AS rcid, sum(sale) AS total

		FROM (

			SELECT o.cid, o.quantity * o.price AS sale

			FROM orders o

			WHERE o.cid IN (SELECT custref FROM referral)

			) referees

		GROUP BY referees.cid

		) sales



	JOIN referral r ON rcid = r.custref)

	JOIN customer c ON r.custid = c.cid

	GROUP BY custid) AS sub

JOIN customer cc ON sub.custid = cc.cid

);





select * from query8;
