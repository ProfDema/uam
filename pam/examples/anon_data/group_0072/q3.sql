truncate query3;
INSERT INTO query3(

    SELECT cid, cname, SUM(price*quantity)

    FROM orders NATURAL JOIN customer

    WHERE status = 'S'

    GROUP BY cid, cname

    ORDER BY SUM(price*quantity) DESC);





select * from query3;
