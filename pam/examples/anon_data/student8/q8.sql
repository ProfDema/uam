truncate query8;


CREATE VIEW salescommission AS(

SELECT r.custid as cid, c.cname, (r.commission/100 * o.quantity * o.price) AS salescommission

FROM referral r

LEFT JOIN orders o ON (r.custref = o.cid)

LEFT JOIN customer c ON (r.custid = c.cid)

WHERE o.oid is not NULL);



INSERT INTO Query8(

SELECT cid,cname, sum(salescommission) as commission

FROM salescommission

GROUP BY cid,cname

ORDER BY cname ASC);



DROP VIEW salescommission;







select * from query8;
