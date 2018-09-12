truncate query9;
INSERT INTO Query9(select product.pid as pid, introdate as date, CAST(SUM(price*quantity) as NUMERIC(12,2)) as totalsales from product, orders where status = 'S' and product.pid = orders.pid and introdate <= '2015-12-31' group by product.pid order by date);



select * from query9;
