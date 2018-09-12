truncate query7;
CREATE VIEW tableA AS

    SELECT CAST(((to_char(odate,'yyyy')::text)||to_char(odate,'mm')::text) AS integer) AS period,

    SUM(quantity*price) AS sales, SUM(quantity*cost) AS cost

    FROM product NATURAL JOIN orders

    GROUP BY period; 



INSERT INTO QUERY7

    (SELECT *

    FROM tableA

    ORDER BY period ASC);



DROP VIEW tableA;



select * from query7;
