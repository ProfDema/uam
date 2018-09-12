truncate query8;


INSERT INTO Query8(SELECT cid, cname, commission FROM customer, referral WHERE custref = cid ORDER BY cname ASC;)



select * from query8;
