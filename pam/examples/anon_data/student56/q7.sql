truncate query7;


INSERT INTO Query7(SELECT CAST(to_char(orders.odate,'YYYYmm') AS INTEGER) AS period, SUM(orders.quantity*price) AS sales, SUM(orders.quantity * cost) AS cost FROM orders, product WHERE orders.pid = product.pid AND orders.status = 'S' GROUP BY period ORDER BY period ASC;)



select * from query7;
