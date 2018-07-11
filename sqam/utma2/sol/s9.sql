SET search_path TO a2;

TRUNCATE Query9;

-- Query 9
-- pid, date, totalsales 
INSERT INTO Query9(
    SELECT product.pid, product.introdate, orders.sales
    FROM product NATURAL JOIN
    (SELECT pid, SUM(quantity*price) AS sales
	FROM orders WHERE odate <= '2015-12-31'
	GROUP BY pid) AS orders
	ORDER BY product.introdate);

SELECT * FROM Query9;

