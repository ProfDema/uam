truncate query8;
CREATE VIEW [total_com] AS

SELECT referral.custid AS comid, SUM(orders.quantity * orders.price * referral.commission / 100) AS commission

FROM referral INNER JOIN orders ON referral.custref = orders.cid

GROUP BY comid;



INSERT INTO Query8 (cid, cname, commission)

SELECT customer.cid, customer.cname, total_com.commission

FROM total_com INNER JOIN customer ON total_com.comid = customer.cid

ORDER BY customer.cname ASC; 



DROP VIEW total_com;



select * from query8;
