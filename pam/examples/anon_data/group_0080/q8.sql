truncate query8;
INSERT INTO Query8(cid, cname, comission)

SELECT custid AS cid, c.cname AS cname, CAST(SUM(commission*quantity*price/100) AS NUMERIC(10,2)) AS comission 

FROM (SELECT *

FROM orders AS o, referral AS r

WHERE o.cid = r.custref) AS o, customer AS c

WHERE c.cid = custid

GROUP BY o.custid, c.cname

ORDER BY cname ASC; 





select * from query8;
