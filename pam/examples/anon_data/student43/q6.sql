truncate query6;


INSERT INTO Query6 (SELECT C1.cid AS cid, cname, lname AS locname FROM customer C1, location L WHERE C1.lid=L.lid AND NOT EXISTS (SELECT distinct C2.cid FROM customer C2 RIGHT OUTER JOIN orders O ON C2.cid=O.cid) ORDER BY cname ASC);



select * from query6;
