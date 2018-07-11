SET search_path TO a2;

TRUNCATE Query4;

-- Query4
-- pid, pname, total cost
INSERT INTO Query4(
   SELECT product.pid, pname, sum(quantity*cost) as totalcost
   FROM orders NATURAL JOIN product
   WHERE status = 'S'
   GROUP BY product.pid
   ORDER BY totalcost DESC);

SELECT * FROM Query4;

