truncate query6;
INSERT INTO Query6 (SELECT C.cid AS cid, C.cname AS cname, L.lname AS locname

 		    FROM customer C, location L 

		    WHERE L.lid = C.lid AND C.cid NOT IN 

					(SELECT O.cid FROM orders O)

		    ORDER BY cname ASC);





select * from query6;
