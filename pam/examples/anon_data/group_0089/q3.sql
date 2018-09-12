truncate query3;
INSERT INTO Query3

(SELECT orders.cid as cuid, cname, sum(quantity*price) as totalsales

FROM orders, customer 

WHERE status = 'S' AND orders.cid = customer.cid

GROUP BY  orders.cid, cname

ORDER BY totalsales DESC

);



select * from query3;
