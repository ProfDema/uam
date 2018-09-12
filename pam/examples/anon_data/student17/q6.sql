truncate query6;
CREATE VIEW [cust_no_order] AS

SELECT cid, cname, lid

FROM customer

WHERE cid NOT IN (SELECT cid FROM orders)

ORDER BY cname ASC;

  

INSERT INTO Query6 (cid, cname, locname)

SELECT cust_no_order.cid, cust_no_order.cname, location.lname

FROM cust_no_order INNER JOIN location ON cust_no_order.lid = location.lid

ORDER BY location.lname;



DROP VIEW cust_no_order; 







select * from query6;
