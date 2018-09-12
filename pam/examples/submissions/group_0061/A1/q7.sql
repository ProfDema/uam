truncate query7;
-- period, sales, cost

INSERT INTO Query7(

   SELECT (EXTRACT(YEAR FROM orders.odate)*100+EXTRACT(MONTH FROM orders.odate)) as period, 

          SUM(orders.sales) AS sales, SUM((product.cost*orders.quantity)) AS cost

   FROM product NATURAL JOIN

   (SELECT pid, odate, quantity, (quantity*price) AS sales

   FROM orders) AS orders

   GROUP BY period

   ORDER BY period);

   

select * from query7;