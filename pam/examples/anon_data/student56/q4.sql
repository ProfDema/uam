truncate query4;
INSERT INTO Query4(SELECT pid, pname, SUM(cost*quantity) AS totalcost FROM product NATURAL JOIN orders WHERE status = 'S' GROUP BY product.pid ORDER BY totalcost ASC;)





select * from query4;
