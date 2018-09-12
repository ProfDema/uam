truncate query9;
CREATE VIEW  oldproducts as 

	(SELECT pid, introdate                                                                            

		FROM product                           

		WHERE to_char(introdate, 'YYYYMMDD')::INTEGER < 20160101);



INSERT INTO Query9 (

SELECT p.pid as pid, p.introdate as date, SUM(o.quantity * price) AS totalsales

FROM oldproducts AS p, orders as o

WHERE p.pid = o.pid AND status = 'S'

GROUP BY p.pid, p.introdate

ORDER BY p.introdate ASC);



DROP VIEW IF EXISTS oldproducts;

select * from query9;
