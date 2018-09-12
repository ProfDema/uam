truncate query3;
INSERT INTO Query3 (

SELECT 

	c.cid as cuid,

	c.cname as cuname,

	SUM(o.price * o.quantity) as totalsales

FROM customer c JOIN orders o ON c.cid = o.cid

WHERE o.status = 'S'

GROUP BY cuname, cuid

ORDER BY totalsales DESC

);





select * from query3;
