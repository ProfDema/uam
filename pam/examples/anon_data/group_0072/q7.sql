truncate query7;
INSERT INTO query7(

    SELECT CAST(TO_CHAR(odate, 'YYYYMM') AS INT) as period, SUM(quantity*price), 

	SUM(quantity*cost)

    FROM orders NATURAL JOIN product

    GROUP BY period

    ORDER BY period);





select * from query7;
