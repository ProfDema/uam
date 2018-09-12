truncate query1;
INSERT INTO Query1 

(SELECT r.custref AS cuid, c2.cname AS cuname, r.custid AS refid, c.cname as refname

	FROM referral r

	JOIN customer c

	ON r.custid = c.cid

	JOIN customer c2

	ON r.custref = c2.cid

	ORDER BY cuname ASC

);



select * from query1;
