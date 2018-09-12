truncate query6;
INSERT INTO QUERY6 (SELECT customer.cid, cname, location.lname AS locname 

					FROM customer LEFT JOIN location ON location.lid = customer.lid 

					WHERE customer.cid NOT IN (SELECT cid FROM orders) ORDER BY cname ASC);





select * from query6;
