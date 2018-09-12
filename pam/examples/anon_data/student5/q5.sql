truncate query5;


insert into query5

select product.pid, pname, introdate 

from product join 

(select pid from product 

EXCEPT select orders.pid 

from orders JOIN product 

ON orders.pid = product.pid 

group by orders.pid) 

as prod on product.pid = prod.pid 

order by pname ASC; 





select * from query5;
