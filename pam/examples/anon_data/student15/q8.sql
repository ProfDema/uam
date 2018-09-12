truncate query8;
INSERT INTO Query8(

SELECT c.cid as cid, c.cname as cname, SUM(o.quantity*o.price*r.commission) as comission

FROM customer c JOIN referral r

ON c.cid = r.custid

JOIN orders o

ON r.custref = o.cid

GROUP BY c.cid 

ORDER BY c.cname ASC

);





select * from query8;
