truncate query1;
INSERT INTO Query1 (SELECT DISTINCT R1.custref AS cuid, C2.cname AS cuname, R1.custid AS refid, C1.cname AS refname

		   FROM referral R1, customer C1, customer C2

		   WHERE R1.custid = C1.cid AND R1.custref = C2.cid

                   ORDER BY C2.cname ASC);





select * from query1;
