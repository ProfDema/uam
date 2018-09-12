truncate query6;
INSERT INTO query6(

    SELECT cid, cname, lname

    FROM customer NATURAL JOIN location

    WHERE cid NOT IN(SELECT cid FROM orders)

    ORDER BY cname);





select * from query6;
