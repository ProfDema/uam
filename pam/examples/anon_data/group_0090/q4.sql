truncate query4;
INSERT INTO Query4 (SELECT P.pid AS pid, P.pname AS pname, SUM(O.quantity * P.cost) AS totalcost

                    FROM product P, orders O

                    WHERE P.pid = O.pid AND O.status = 'S'

                    GROUP BY P.pid

                    ORDER by totalcost ASC);







select * from query4;
