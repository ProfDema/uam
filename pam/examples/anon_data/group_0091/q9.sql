truncate query9;
INSERT INTO Query9(

SELECT pid, introdate AS date,

	CAST(SUM(quantity * price) as NUMERIC(12,2)) AS totalsales

FROM product NATURAL JOIN orders

WHERE introdate > '2015-12-31' AND status = 'S'

GROUP BY pid, introdate

ORDER BY date ASC);



select * from query9;
