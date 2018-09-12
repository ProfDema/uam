truncate query6;
CREATE VIEW never AS

SELECT cid

FROM customer

EXCEPT

SELECT cid

FROM orders;



CREATE VIEW nevercustomer AS

SELECT c.cid as cid, c.cname as cname, c.lid as lid

FROM never n, customer c

WHERE c.cid = n.cid;



INSERT INTO query6(

SELECT n.cid as cid, n.cname as cname, l.lname as locname

FROM nevercustomer n, location l

WHERE n.lid = l.lid

ORDER BY n.cname);



drop view never, nevercustomer;





select * from query6;
