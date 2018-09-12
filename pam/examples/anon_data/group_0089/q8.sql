truncate query8;
INSERT INTO Query8

(SELECT r.custid AS cid, c.cname AS cname, sum(r.commission * price * o.quantity) AS commission

FROM  referral AS r, customer AS c, orders AS o

WHERE r.custid = c.cid AND r.custref = o.cid

GROUP BY r.custid, c.cname

ORDER BY c.cname);









select * from query8;
