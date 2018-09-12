truncate query1;
INSERT INTO Query1 (SELECT R.custid AS cuid, C1.cname AS cuname, R.custref AS refid, C2.cname AS refname

			FROM customer C1, referral R, customer C2

			WHERE C1.cid = R.custid AND C2.cid = R.custref

			ORDER BY cuname);





select * from query1;
