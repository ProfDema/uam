truncate query6;
CREATE VIEW customer_orders AS SELECT * FROM customer WHERE cid NOT IN (SELECT cid FROM orders);

INSERT INTO QUERY6 (SELECT cid, cname, lid as locname FROM customer_orders ORDER BY cname ASC);

DROP VIEW customer_orders;



select * from query6;
