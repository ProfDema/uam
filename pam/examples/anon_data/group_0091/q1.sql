truncate query1;
INSERT INTO Query1 (

SELECT cu.cuid AS cuid, cu.cuname AS cuname, cid AS refid, cname AS refname

FROM customer, (SELECT cid AS cuid, cname AS cuname, custid

		FROM customer , referral 

		WHERE cid = custref) as cu

WHERE cid = custid

ORDER BY cuname ASC);



select * from query1;
