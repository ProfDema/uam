truncate query4;


INSERT into query4(select c.cid, cname, SUM(quantity*price) as sales from orders, customer c where orders.cid = c.cid and status = 'S' group by c.cid);



select * from query4;
