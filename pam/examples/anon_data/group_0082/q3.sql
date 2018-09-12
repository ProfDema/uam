truncate query3;
INSERT INTO Query3 (SELECT C.cid AS cuid, C.cname AS cuname, SUM(O.quantity * O.price) AS totalsales 

		    FROM customer C, orders O

		    WHERE O.status = 'S' AND C.cid = O.cid

		    GROUP BY cuid

	            ORDER BY totalsales DESC);





select * from query3;
