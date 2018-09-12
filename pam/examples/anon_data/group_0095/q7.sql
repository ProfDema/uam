truncate query7;
INSERT INTO query8(

SELECT c1.cid, c1.cname, SUM(o.price * o.quantity * r.commission) AS commission 

FROM referral R JOIN customer c1 ON R.custid=c1.cid JOIN customer c2 ON R.custref=c2.cid JOIN orders o ON c2.cid=o.cid 

GROUP BY c1.cid 

ORDER BY c1.cname ASC);





select * from query7;
