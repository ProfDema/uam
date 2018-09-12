truncate query4;


INSERT INTO Query4 (

    SELECT pr.pid AS pid, pr.pname AS pname, CAST(SUM(ord.quantity * pr.cost) AS NUMERIC(12,2)) AS totalcost

    FROM orders ord JOIN product pr ON ord.pid=pr.pid

    WHERE ord.status='S'

    GROUP BY pr.pid

    ORDER BY totalcost

);



select * from query4;
