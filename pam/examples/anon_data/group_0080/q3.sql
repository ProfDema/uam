truncate query3;
INSERT INTO Query3(cuid, cuname, totalsales)

SELECT c.cid AS cuid, c.cname AS cuname, CAST(SUM(price*quantity) AS NUMERIC(12, 2)) AS "totalsales"

FROM customer AS c, orders AS o

WHERE c.cid = o.cid AND o.status = 'S'

GROUP BY c.cid

ORDER BY "totalsales" DESC;







select * from query3;
