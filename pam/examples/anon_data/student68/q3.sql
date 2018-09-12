truncate query3;
CREATE VIEW shipped AS

SELECT oid, cid, pid, quantity, price

FROM orders

WHERE status = 'S';



CREATE VIEW totals AS

SELECT oid, cid, price*quantity as total

FROM shipped;



INSERT INTO Query3(

SELECT t.cid as cud, c.cname as cuname, sum(total) as totalsales

FROM totals t, customer c

WHERE t.cid = c.cid

GROUP BY t.cid, c.cname

ORDER BY totalsales desc);



drop view shipped, totals;





select * from query3;
