truncate query3;


insert into query3

select customer.cid as cuid, 

customer.cname as cuname, 

sum(orders.price*orders.quantity) as totalsales 

from customer left join orders 

on customer.cid = orders.cid 

where orders.status = 'S'  

group by customer.cid, customer.cname 

order by totalsales DESC;





select * from query3;
