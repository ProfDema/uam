truncate query9;
INSERT INTO Query9 (SELECT P.pid AS pid, P.introDate as date, SUM(O.quantity * O.price) AS totalsales

		    FROM product P, orders O

                    WHERE O.status = 'S' AND O.pid = P.pid AND P.introdate <= '31 Dec 2015'

		    GROUP BY P.pid

		    ORDER BY P.introdate ASC);





select * from query9;
