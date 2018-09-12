truncate query9;
INSERT INTO query9(

    SELECT pid, introdate, SUM(quantity*price)

    FROM product NATURAL JOIN orders

    WHERE status = 'S' AND introdate <= '2015-12-31'

    GROUP BY pid, introdate

    ORDER BY introdate);





select * from query9;
