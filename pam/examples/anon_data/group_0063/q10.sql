truncate query10;
INSERT INTO Query10

(

	SELECT l.lid as lid, l.lname as lname, COALESCE(totalsales, 0) as totalsales

    FROM location l FULL OUTER JOIN (

    	SELECT l.lid as lid, l.lname as lname, SUM(o.price * o.quantity) as totalsales

		FROM location l JOIN warehouse w ON l.lid = w.lid

	JOIN orders o ON w.wid = o.shipwid

	WHERE status = 'S' 

    GROUP BY l.lid) as l2 ON l.lid = l2.lid

	ORDER BY lname ASC

);

	--not right ????? plz check this    should report 4 rows 

	--On query 10, please do report the locations with zero sales as well.

	--SELECT l.lid as lid, l.lname as lname, SUM(o.price * o.quantity) as totalsales

	--FROM location l JOIN warehouse w ON l.lid = w.lid

	--JOIN orders o ON w.wid = o.shipwid

	--WHERE status = 'S'

	--GROUP BY l.lid

	--ORDER BY lname ASC  



select * from query10;
