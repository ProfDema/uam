truncate query8;
INSERT INTO Query8 (

SELECT c2.cid, c2.cname, CAST(sum(o.quantity * price * (r.commission * 0.01)) AS NUMERIC(10,2)) AS comission

FROM customer c1,  customer c2, referral r, orders o

WHERE c1.cid = r.custref AND c1.cid = o.cid AND c2.cid = r.custid 

GROUP BY c2.cid ,c2.cname

ORDER BY c2.cname ASC);





select * from query8;
