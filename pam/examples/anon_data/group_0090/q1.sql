truncate query1;
INSERT INTO Query1  (SELECT C1.cid AS cuid, C1.cname AS cname, C2.cid AS refid, C2.cname AS refname

                     FROM customer C1, customer C2, referral R

                     WHERE r.custref = C1.cid AND r.custid = C2.cid

                     ORDER BY C1.cname);







select * from query1;
