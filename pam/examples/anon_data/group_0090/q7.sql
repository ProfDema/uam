truncate query7;
INSERT INTO Query7 (SELECT CAST(to_char(O.odate, 'YYYYMM')AS Integer) AS period, SUM(O.quantity * O.price) AS sales, SUM(O.quantity * P.cost) AS cost

                    FROM product P, orders O

                    WHERE O.pid = P.pid AND O.status = 'S'

                    GROUP BY period

                    ORDER BY period ASC);





select * from query7;
