truncate query10;


CREATE VIEW warehouseSales AS

    SELECT shipwid AS wid, sum(price*quantity) AS sales

    FROM orders

    WHERE status = 'S'

    GROUP BY shipwid;



CREATE VIEW loc AS

    SELECT lid, lname, wid

    FROM location NATURAL LEFT OUTER JOIN warehouse;



CREATE VIEW locSales AS

    SELECT lid, lname, coalesce(sales, 0) AS sales

    FROM loc NATURAL LEFT OUTER JOIN warehouseSales;



INSERT INTO QUERY10

    (SELECT lid, lname, SUM(sales) AS totalsales

    FROM locSales

    GROUP BY (lid, lname)

    ORDER BY lname ASC);



DROP VIEW locSales;

DROP VIEW loc;

DROP VIEW warehouseSales;

select * from query10;
