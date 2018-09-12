truncate query9;


INSERT INTO Query9 (

    SELECT pr.pid AS pid, pr.introdate AS date, CAST(SUM(ord.quantity * ord.price) AS NUMERIC(12,2)) AS totalsales

    FROM orders ord JOIN product pr ON ord.pid=pr.pid

    WHERE ord.status='S' AND pr.introdate<='2015-12-31'

    GROUP BY pr.pid, pr.introdate

    ORDER BY date

);



select * from query9;
