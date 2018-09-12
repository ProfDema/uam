truncate query4;
INSERT INTO query4(

    SELECT pid, pname, SUM(cost*quantity)

    FROM orders NATURAL JOIN product

    WHERE status = 'S'

    GROUP BY pid, pname

    ORDER BY SUM(cost*quantity));





select * from query4;
