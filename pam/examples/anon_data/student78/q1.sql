truncate query1;
CREATE VIEW refs AS

	SELECT custid AS refid, custref AS cid

	FROM referral;



INSERT INTO Query1(

	SELECT c1.cid AS cuid, c1.cname AS cuname, c2.cid AS refid, c2.cname AS refname

	FROM refs, customer c1, customer c2

	WHERE c1.cid = refs.cid AND c2.cid = refs.refid

	ORDER BY c1.cname ASC

	);



DROP VIEW refs;





select * from query1;
