truncate query7;
insert into query7

select to_char(orders.odate, 'YYYYMM') as period, 

sum(orders.quantity*orders.price) as sales, 

sum(product.cost*orders.quantity) as cost 

from product left join orders 

on product.pid = orders.pid 

where orders.status = 'S'  

group by period 

order by period ASC;





select * from query7;
