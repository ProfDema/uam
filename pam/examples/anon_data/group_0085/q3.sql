truncate query3;
CREATE VIEW sales AS

    SELECT cid, SUM(price*quantity) AS totalsales

    FROM orders

    WHERE status = 'S'

    GROUP BY cid;



CREATE VIEW custSales AS

    SELECT cid, cname, totalsales

    FROM customer NATURAL JOIN sales;



INSERT INTO QUERY3

    (SELECT cid AS cuid, cname AS cuname, totalsales

    FROM custSales

    ORDER BY totalsales DESC);



DROP VIEW custSales;

DROP VIEW sales;



select * from query3;
