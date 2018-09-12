truncate query6;
INSERT INTO Query6(

SELECT distinct c.cid as cid, c.cname as cname, l.lname as locname --might need distinct

FROM customer c 

JOIN location l

ON c.lid = l.lid

LEFT JOIN orders o

ON c.cid = o.cid --is needed?



WHERE o.oid IS NULL

GROUP BY c.cid --is needed? needs to be tested

ORDER BY c.cname ASC

);





--sub q c X o then X l



select * from query6;
