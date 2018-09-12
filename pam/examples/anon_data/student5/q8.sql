truncate query8;


create view ref_cust_sales as

select referral.custref as cid,

sum(orders.price*orders.quantity) as sales 

from referral

left join orders 

on referral.custref = orders.cid  

group by referral.custref;



insert into query8

select customer.cid as cid, 

customer.cname as cname, 

cust_com.commission 

from customer join 

(select referral.custid, 

sum(referral.commission*ref_cust_sales.sales) 

as commission from ref_cust_sales 

left join referral 

on referral.custref = ref_cust_sales.cid 

group by referral.custid) 

as cust_com on customer.cid = cust_com.custid

order by cname ASC;



drop view ref_cust_sales;





select * from query8;
