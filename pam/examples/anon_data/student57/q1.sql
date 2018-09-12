truncate query1;
INSERT INTO QUERY1 (SELECT custid AS cuid, a.cname AS cuname, custref AS refid, b.cname AS refname 

					FROM referral LEFT JOIN customer AS a ON custid = cid, customer AS b 

					WHERE b.cid = custref ORDER BY cuname ASC);





select * from query1;
