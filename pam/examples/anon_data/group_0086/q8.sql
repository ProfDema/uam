truncate query8;


INSERT INTO Query8 (SELECT r.custid cid, c.cname, CAST(SUM(r.commission*o.price*o.quantity*0.01) as NUMERIC(10,2))  commission

FROM referral r, customer c, orders o

WHERE r.custid = c.cid AND r.custref = o.cid AND o.quantity>0

GROUP BY r.custid, c.cname

ORDER BY c.cname

);



select * from query8;
