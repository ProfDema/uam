truncate query9;


CREATE VIEW salesTable AS

    SELECT pid, SUM(quantity*price) AS sales

    FROM orders

    WHERE status = 'S'

    GROUP BY pid;



CREATE VIEW prods AS

    SELECT pid, introdate AS date, sales AS totalsales

    FROM product NATURAL JOIN salesTable

    WHERE introdate <= '2015-12-31';



INSERT INTO QUERY9

    (SELECT *

    FROM prods

    ORDER BY date ASC);



DROP VIEW prods;

DROP VIEW salesTable;



select * from query9;
