truncate query3;


INSERT INTO Query3 (

SELECT c.cid AS cuid, c.cname AS cuname, SUM(o.quantity * o.price) AS totalsales 

FROM orders AS o JOIN customer AS c ON o.cid = c.cid 

WHERE o.status = 'S' 

GROUP BY c.cid

ORDER BY totalsales DESC);



select * from query3;
