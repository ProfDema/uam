SET search_path TO a2;

TRUNCATE Query5;

-- Query 5
-- pid, pname, introdate
INSERT INTO Query5(
   SELECT product.pid, pname, introdate 
   FROM (SELECT pid FROM orders) AS orders
        NATURAL FULL OUTER JOIN product
   WHERE orders.pid IS NULL
   GROUP BY product.pid
   ORDER BY pname);

SELECT * FROM Query5;

