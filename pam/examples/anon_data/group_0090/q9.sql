truncate query9;
INSERT INTO Query9 (SELECT P.pid AS pid, P.introdate AS date, SUM(O.price * O.quantity) as totalsales

                    FROM product P, orders O

                    WHERE O.pid = P.pid AND P.introdate <= '31 Dec 2015' AND O.status = 'S'

                    GROUP by P.pid

                    ORDER BY P.introdate ASC);





select * from query9;
