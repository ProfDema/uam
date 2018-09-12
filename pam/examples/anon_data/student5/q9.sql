truncate query9;


insert into query9

select product.pid, introdate, 

sum(orders.quantity*orders.price) as totalsales

from product 

join orders on product.pid = orders.pid 

where orders.status = 'S' 

AND introdate < '2015-12-31' 

group by product.pid, introdate 

order by introdate ASC;





select * from query9;
