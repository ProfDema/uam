truncate query1;


INSERT INTO Query1 (

SELECT c1.cid AS cuid, c1.cname AS cuname, c2.cid AS refid, c2.cname AS refname 

FROM referral as r JOIN customer AS c1 ON  r.custid = c1.cid JOIN customer AS c2 ON r.custref = c2.cid 

ORDER BY c1.cname);



select * from query1;
