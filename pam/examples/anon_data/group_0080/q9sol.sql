truncate query9;
-- pid, date, totalsales 

INSERT INTO Query9(

    SELECT product.pid, product.introdate, orders.sales

    FROM product NATURAL JOIN

    (SELECT pid, SUM(quantity*price) AS sales

	FROM orders WHERE odate <= '2015-12-31'

	GROUP BY pid) AS orders

	ORDER BY product.introdate);

	

select * from query9;
