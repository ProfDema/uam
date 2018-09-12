truncate query1;
CREATE VIEW pairs AS

SELECT c1.cid as c1cid, c1.cname c1cname, c2.cid as c2cid, c2.cname c2cname

FROM customer c1, customer c2

WHERE c1.cid != c2.cid;



INSERT INTO Query1 (

SELECT custref as cuid, c1cname as cuname, custid as refid, c2cname as refname

FROM referral, pairs

WHERE custref = c1cid AND custid = c2cid

ORDER BY cuname ASC);



drop view pairs;





select * from query1;
