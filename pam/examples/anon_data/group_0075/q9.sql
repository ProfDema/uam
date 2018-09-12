truncate query9;


INSERT INTO Query9 (SELECT p.pid, p.introdate AS "date", SUM(o.quantity*o.price) AS "totalsales"

			FROM orders o, product p

			WHERE p.pid = o.pid AND o.status = 'S' AND p.introdate <= to_date('31 Dec 2015', 'DD Mon YYYY')

			GROUP BY p.pid 

			ORDER BY p.introdate); 

			

select * from query9;
