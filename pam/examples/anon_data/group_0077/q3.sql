truncate query3;


INSERT INTO Query3



	SELECT cust.cid AS cuid, cust.cname AS cuname, SUM(ord.price * ord.quantity) AS totalsales



	FROM orders ord,customer cust



	WHERE ord.cid = cust.cid AND ord.status = 'S'



	GROUP BY cuid



	ORDER BY totalsales DESC;





select * from query3;
