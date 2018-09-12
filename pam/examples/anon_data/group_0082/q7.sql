truncate query7;
INSERT INTO Query7 (SELECT CAST (to_char(O.odate, 'YYYYMM') AS Integer) AS period, SUM(O.price * O.quantity) AS totalsales, SUM(P.cost * O.quantity) AS totalcost

		   FROM orders O, product P

		   WHERE P.pid = O.pid AND O.status = 'S'

                   GROUP BY period

                   ORDER BY period ASC);

      



select * from query7;
