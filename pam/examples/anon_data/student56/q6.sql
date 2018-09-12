truncate query6;


INSERT INTO Query6(SELECT cid, cname, lid AS locname FROM customer WHERE customer.cid NOT IN (SELECT cid FROM orders) ORDER BY cname;)



select * from query6;
