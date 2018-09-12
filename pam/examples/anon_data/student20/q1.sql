truncate query1;
SET search_path TO A2;

INSERT INTO Query1

	(SELECT c.cid AS cuid, c.cname AS cuname, r.cid AS refid, r.cname AS refname

	FROM referral re

	JOIN customer c ON c.cid = re.custid

	JOIN customer r ON r.cid = re.custref

	ORDER BY c.cname ASC);



select * from query1;
