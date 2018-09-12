truncate query3;
INSERT INTO Query3

(

	SELECT c.cid as cuid, c.cname as cuname, SUM(price * quantity) AS totalsales

	FROM customer c, orders o

	WHERE c.cid = o.cid AND status = 'S'

	GROUP BY c.cid

	ORDER BY totalsales DESC

);





select * from query3;
