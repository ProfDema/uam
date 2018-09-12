truncate query5;
INSERT INTO Query5 (SELECT P.pid as pid, P.pname as pname, P.introdate as introdate

                    FROM product P

                    WHERE P.pid not in

                      (SELECT distinct pid

                       FROM orders O)

	            ORDER BY P.pname ASC);







select * from query5;
