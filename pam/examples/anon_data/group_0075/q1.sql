truncate query1;


-----Refferer View

CREATE VIEW referrerview AS SELECT c.cid, c.cname 

				FROM customer c, referral r

				WHERE r.custid = c.cid;



-----Referred view

CREATE VIEW referredview AS SELECT c.cid, c.cname

				FROM customer c, referral r

				WHERE r.custref = c.cid;





INSERT INTO Query1 (SELECT DISTINCT referredview.cid AS "cuid", referredview.cname AS "cuname", referrerview.cid AS "refid", referrerview.cname AS "refname"

			FROM referrerview, referredview, referral

			WHERE referrerview.cid  = referral.custid AND referredview.cid = referral.custref

			ORDER BY referredview.cname);

DROP VIEW referrerview;

DROP VIEW referredview;

select * from query1;
