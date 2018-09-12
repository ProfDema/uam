truncate query3;
INSERT INTO Query3 (

SELECT cu.cid as cuid, cu.cname as cuname, SUM(price*quantity) as totalsales

FROM Customer cu NATURAL JOIN Orders o

WHERE cu.cid = o.cid AND status = 'S'

GROUP BY cu.cid

ORDER BY totalsales desc

);









select * from query3;
