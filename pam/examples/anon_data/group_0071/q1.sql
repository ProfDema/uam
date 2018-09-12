truncate query1;
INSERT INTO Query1 (

SELECT 

	custref as cuid, 

	c1.cname as cuname, 

	custid as refid, 

	c2.cname as refname

FROM customer c1, customer c2, referral

WHERE c1.cid = custref AND c2.cid = custid

ORDER BY

	cuname ASC

);





select * from query1;
