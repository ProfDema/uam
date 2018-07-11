SET search_path TO a2;

TRUNCATE Query6;

-- Query 6
-- cid, cname, locname
 INSERT INTO Query6(
   SELECT customer.cid, customer.cname, location.lname
   FROM location NATURAL JOIN
     (SELECT cid, cname, lid
      FROM customer NATURAL FULL OUTER JOIN
         (SELECT cid FROM orders) AS orders
      WHERE orders.cid IS NULL) as customer
   GROUP BY customer.cid, customer.cname, location.lname
   ORDER BY customer.cname);

SELECT * FROM Query6;


