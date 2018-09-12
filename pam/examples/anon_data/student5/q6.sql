truncate query6;


insert into query6

select cid, cname, lname from 

(select customer.cid, cname, lid 

from customer join 

(select cid 

from customer EXCEPT select orders.cid 

from orders JOIN customer 

ON orders.cid = customer.cid 

group by orders.cid) 

as cust on customer.cid = cust.cid) 

as cstm left join location 

on cstm.lid = location.lid 

order by cname ASC; 







select * from query6;
