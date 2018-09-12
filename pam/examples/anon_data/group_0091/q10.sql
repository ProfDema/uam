truncate query10;
INSERT INTO Query10(

SELECT lid, lname,

	CAST(SUM(quantity * price) as NUMERIC(12,2)) AS totalsales

FROM orders NATURAL JOIN customer NATURAL JOIN location

WHERE status = 'S'

GROUP BY lid, lname

ORDER BY lname ASC);



select * from query10;
