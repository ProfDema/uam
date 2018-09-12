truncate query9;
INSERT INTO Query9

(

	--date is a key word --- datee

	SELECT p.pid as pid, p.introdate as date, SUM(o.price * o.quantity) as totalsales

	FROM product p JOIN orders o ON p.pid = o.pid

	WHERE introdate <= '20151231' AND status = 'S'

	GROUP BY p.pid

	ORDER BY date ASC

);







select * from query9;
