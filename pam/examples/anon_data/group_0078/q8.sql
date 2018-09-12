truncate query8;


INSERT INTO Query8 (

SELECT c.cid AS cid, c.cname AS cname, SUM(r.commission * o.quantity * o.price) AS commission 

FROM referral as r, customer AS c, orders AS o 

WHERE r.custref = o.cid AND r.custid = c.cid 

GROUP BY c.cid 

ORDER BY c.cname ASC);



select * from query8;
