truncate query9;
INSERT INTO Query9 (SELECT orders.pid AS pid, introdate AS date, SUM(quantity*price) AS totalsales

			FROM orders NATURAL LEFT JOIN product

			WHERE orders.pid = product.pid AND introdate <= '2015-12-31' AND status = 'S'

			GROUP BY orders.pid, product.introdate

			ORDER BY date);





select * from query9;
