truncate query8;
INSERT INTO QUERY8 (SELECT referral.custid AS cid, cname, commission * price AS commission 

					FROM referral LEFT JOIN orders ON referral.custref = orders.cid 

								  LEFT JOIN customer ON referral.custid = customer.cid ORDER BY cname ASC);





select * from query8;
