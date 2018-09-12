truncate query10;


INSERT INTO Query10 (

    SELECT temp.lid AS lid, lo.lname AS lname, CAST(COALESCE(temp.totalsales, 0) AS NUMERIC(12,2)) AS totalsales

    FROM (SELECT wa.lid AS lid, ord.shipwid, SUM(ord.quantity * ord.price) AS totalsales

    FROM orders ord FULL JOIN warehouse wa ON wa.wid=ord.shipwid

    GROUP BY ord.shipwid, wa.lid) temp

    JOIN location lo ON temp.lid=lo.lid

    ORDER BY lname

);



select * from query10;
