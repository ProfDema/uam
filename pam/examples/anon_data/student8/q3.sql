truncate query3;


CREATE VIEW salesamount AS (

SELECT c.cid as cuid, c.cname as cuname, (o.quantity * o.price) as salesamount

FROM customer c

LEFT JOIN orders o ON(c.cid = o.cid)

WHERE o.status = 'S');



INSERT INTO Query3(

SELECT cuid,cuname,sum(salesamount) as totalsales

FROM salesamount

GROUP BY cuid,cuname

ORDER BY totalsales DESC);



DROP VIEW salesamount;





select * from query3;
