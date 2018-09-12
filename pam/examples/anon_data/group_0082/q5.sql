truncate query5;
INSERT INTO Query5 (SELECT P.pid, P.pname, P.introdate 

		    FROM product P 

		    WHERE P.pid NOT IN 

			(SELECT O.pid FROM orders O)

		    ORDER BY P.pname);





select * from query5;
