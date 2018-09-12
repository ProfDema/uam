truncate query4;
-- Cost of sales by product so number sold * cost of the product??

-- Sort in increasing order

-- Must be shipped



INSERT INTO Query4 (SELECT o.pid AS pid, p.pname AS pame, SUM(o.quantity * p.cost) AS totalcost from orders o NATURAL JOIN product p WHERE o.status = 'S' GROUP BY o.pid, p.pname ORDER BY totalcost ASC);





select * from query4;
