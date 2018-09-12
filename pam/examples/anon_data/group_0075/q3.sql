truncate query3;


INSERT INTO Query3 (SELECT c.cid AS "cuid", c.cname AS "cuname", sum(o.quantity*o.price) AS "totalsales" 

		   	FROM customer c, orders o 

			WHERE c.cid = o.cid AND o.status = 'S'

			GROUP BY cuid 

			ORDER BY totalsales DESC); 



select * from query3;
