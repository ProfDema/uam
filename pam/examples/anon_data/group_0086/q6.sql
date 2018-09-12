truncate query6;


INSERT INTO Query6 (SELECT cid, cname, lname AS locname

FROM customer NATURAL JOIN location

WHERE cid NOT IN (SELECT cid FROM orders)

ORDER BY cname

);



select * from query6;
