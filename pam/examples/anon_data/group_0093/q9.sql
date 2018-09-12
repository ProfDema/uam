truncate query9;
INSERT INTO Query9(

	SELECT p.pid, p.introdate AS date, COUNT(o.oid) AS totalsales

	FROM product AS p JOIN orders AS o ON p.pid = o.pid

	WHERE introdate <= '2015-12-31' AND o.status = 'S'

)





select * from query9;
