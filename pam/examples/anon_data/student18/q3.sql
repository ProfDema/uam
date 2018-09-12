truncate query3;


INSERT INTO query3(select c.cid, cname, SUM(quantity*price) as sales from orders, customer c where orders.cid = c.cid and status = 'S' group by c.cid order by sales DESC);



select * from query3;
