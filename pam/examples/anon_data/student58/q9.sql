truncate query9;
INSERT INTO Query9 (

SELECT product.pid AS pid, product.introdate AS date, 

sum(orders.price * orders.quantity) AS totalsales

FROM product, orders

WHERE product.pid = orders.pid AND introdate <= '20151231' AND status = 'S'

GROUP BY product.pid

ORDER BY date ASC);





select * from query9;
