truncate query6;


CREATE VIEW cusordered AS (SELECT DISTINCT orders.cid FROM orders);

CREATE VIEW difference AS ((SELECT customer.cid FROM customer) EXCEPT (SELECT * FROM cusordered));

CREATE VIEW loctransfer AS (SELECT customer.cid, customer.cname, location.lname FROM customer join location ON customer.lid = location.lid);



INSERT INTO QUERY6 (SELECT loctransfer.cid, loctransfer.cname, loctransfer.lname AS locname FROM difference JOIN loctransfer ON difference.cid = loctransfer.cid ORDER BY cname ASC);



DROP VIEW difference;

DROP VIEW cusordered;

DROP VIEW loctransfer;



select * from query6;
