truncate query3;


INSERT INTO Query3 (

    SELECT ord.cid AS cuid, cu.cname AS cuname, CAST(SUM(ord.quantity * ord.price) AS NUMERIC(12,2)) AS totalsales

    FROM orders ord JOIN customer cu ON ord.cid=cu.cid

    WHERE ord.status='S'

    GROUP BY ord.cid, cu.cname

    ORDER BY totalsales DESC

);



select * from query3;
