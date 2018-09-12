truncate query4;


insert into query4

select product.pid as pid, 

product.pname as cuname, 

sum(product.cost*orders.quantity) as totalcost 

from product left join orders 

on product.pid = orders.pid 

where orders.status = 'S'  

group by product.pid, product.pname 

order by totalcost ASC;



select * from query4;
