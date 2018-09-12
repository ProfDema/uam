truncate query10;
INSERT INTO query10(

    SELECT l.lid, lname, COALESCE(SUM(quantity*price), 0)

    FROM (warehouse w RIGHT OUTER JOIN location l ON w.lid = l.lid) LEFT OUTER JOIN 

	(SELECT * FROM orders WHERE status = 'S') AS ord ON wid = ord.shipwid 

    GROUP BY l.lid, lname

    ORDER BY lname);





select * from query10;
