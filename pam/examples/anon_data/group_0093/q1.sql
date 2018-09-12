truncate query1;
INSERT INTO Query1(

	SELECT c.cid AS cuid, c.cname AS cuname, r.custref AS refid, co.cid AS refname

	FROM customers AS c JOIN referral AS r ON c.cid = r.custid JOIN customer AS co ON r.custref = co.cid

)



select * from query1;
