truncate query4;
INSERT INTO Query4 (SELECT P.pid AS pid, P.pname AS pname, SUM(P.cost * O.quantity) AS totalcost

		    FROM product P, orders O

		    WHERE O.status = 'S' AND P.pid = O.pid

		    GROUP BY P.pid

                    ORDER BY totalcost ASC);





select * from query4;
